#===============================================================================
# [SC] Dex Mode - Trainer Filter
#===============================================================================
# Decides what to do when a trainer's roster includes out-of-dex species
# in SC_LIMITED. Default behaviour is :ALLOW — story-mandatory trainers
# (Generals, Champion Marcus, the Chosen, etc.) already use only species
# in the curated list, and ordinary trainers are hand-authored so their
# rosters are part of the game's flavour.
#
# If you tighten the policy via TRAINER_POLICY = :SUBSTITUTE, the
# EXEMPT_TRAINER_TYPES list below preserves the canonical teams for the
# story-critical trainers regardless. Add custom trainer types here if
# you want them to keep their full rosters too.
#===============================================================================

module DexMode
  # Trainer types whose rosters are NEVER substituted, even in
  # SC_LIMITED with TRAINER_POLICY = :SUBSTITUTE. These are the story
  # roles whose Pokémon choices are meaningful.
  EXEMPT_TRAINER_TYPES = [
    # Generals
    :CULTIST,                # General Shade, etc.
    :MALACHAR,
    :CULT_LEADER,
    # Champion family
    :CHAMPION_EMERITUS,      # Marcus
    :RESEARCHER_EMERITUS,    # Aurora
    :CHAMPION,
    :ELITEFOUR,
    # The Chosen + companions
    :POKEMONTRAINER_Lyra,
    :POKEMONTRAINER_Kael,
    # Rival
    :RIVAL,
    :RIVAL_RAGNAR,
    # Gym Leaders
    :LEADER_M, :LEADER_F,
    :GYMLEADER,
    # Astoria
    :GUARDIAN_ECHO,
    :SHADOW_SELF,
    :SCIENTIST,              # Subject Zero
  ].freeze

  def self.trainer_exempt?(trainer_type_sym)
    return true unless trainer_type_sym
    EXEMPT_TRAINER_TYPES.include?(trainer_type_sym.to_s.to_sym)
  end
end


#-------------------------------------------------------------------------------
# Hook: Battle::Trainer (or NPCTrainer) party load.
# We post-process @party after creation. Trainer types in EXEMPT_TRAINER_TYPES
# pass through untouched.
#-------------------------------------------------------------------------------
if defined?(NPCTrainer)
  class NPCTrainer
    unless method_defined?(:_sc_dex_orig_initialize)
      alias_method :_sc_dex_orig_initialize, :initialize
    end

    def initialize(*args)
      _sc_dex_orig_initialize(*args)
      _sc_dex_apply_filter
    end

    private

    def _sc_dex_apply_filter
      return unless defined?(DexMode) && DexMode::ENABLED
      return unless DexMode.limited?
      return unless DexMode::TRAINER_POLICY == :SUBSTITUTE
      return if DexMode.trainer_exempt?(@trainer_type)
      return unless @party.is_a?(Array)

      @party.each do |pkmn|
        next unless pkmn && pkmn.respond_to?(:species)
        next if DexMode.in_dex?(pkmn.species)
        original = pkmn.species
        sub = DexMode.substitute(original)
        next if sub == original
        # Apply substitution preserving moves, level, item, ability slot
        begin
          pkmn.species = sub
          pkmn.calc_stats
          # Reset moves to species defaults (the old moveset may not learn on the new species)
          pkmn.reset_moves
        rescue => e
          echoln "[DexMode] Trainer substitution failed for #{original} -> #{sub}: #{e.message}" if DexMode::DEBUG_MODE
        end
        echoln "[DexMode] Trainer substitution #{original} -> #{sub} for #{@name}" if DexMode::DEBUG_MODE
      end
    end
  end
end


#-------------------------------------------------------------------------------
# Companion Battles plugin compatibility — Lyra and Kael's parties stay
# canonical regardless of mode.
#-------------------------------------------------------------------------------
if defined?(CompanionBattleManager)
  module CompanionBattleManager
    class << self
      # The companion roster is curated to use only in-dex species
      # already; this hook is here as a defensive no-op so the plugin's
      # behaviour is documented at the right place.
    end
  end
end
