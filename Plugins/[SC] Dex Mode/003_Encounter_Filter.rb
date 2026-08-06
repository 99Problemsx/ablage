#===============================================================================
# [SC] Dex Mode - Encounter Filter
#===============================================================================
# Hooks the engine's wild-encounter chooser so the rolled species is
# filtered through the active dex mode. In FULL_DEX nothing changes.
# In SC_LIMITED the rolled species goes through the OUT_OF_DEX_POLICY
# (default :REROLL, falls back to :SUBSTITUTE).
#
# Hooked function: PokemonEncounters#choose_wild_pokemon — returns
# [species_id, level]. We alias it and post-process the result.
#===============================================================================

if defined?(PokemonEncounters)
  class PokemonEncounters
    unless method_defined?(:_sc_dex_orig_choose_wild_pokemon)
      alias_method :_sc_dex_orig_choose_wild_pokemon, :choose_wild_pokemon
    end

    def choose_wild_pokemon(enc_type, chance_rolls = 1)
      result = _sc_dex_orig_choose_wild_pokemon(enc_type, chance_rolls)
      return result if !DexMode::ENABLED || !DexMode.limited? || result.nil?

      species, level = result
      return result if DexMode.in_dex?(species)

      # Out-of-dex — apply policy
      policy = DexMode::OUT_OF_DEX_POLICY

      if policy == :REROLL
        DexMode::MAX_REROLLS.times do
          retry_result = _sc_dex_orig_choose_wild_pokemon(enc_type, chance_rolls)
          next unless retry_result
          if DexMode.in_dex?(retry_result[0])
            echoln "[DexMode] Reroll succeeded after #{retry_result[0]} (was #{species})" if DexMode::DEBUG_MODE
            return retry_result
          end
        end
        # Reroll exhausted — fall through to substitute
        policy = :SUBSTITUTE
      end

      case policy
      when :SUBSTITUTE
        substitute = DexMode.substitute(species)
        echoln "[DexMode] Substituting #{species} -> #{substitute}" if DexMode::DEBUG_MODE
        return [substitute, level]
      when :ALLOW
        return result
      else
        # Fallback: substitute
        return [DexMode.substitute(species), level]
      end
    end
  end
end


#-------------------------------------------------------------------------------
# Phone-contact encounter (Bug-Catching Contest preview) gets the same
# treatment so the contest reports a believable winner.
#-------------------------------------------------------------------------------
if defined?(PokemonEncounters)
  class PokemonEncounters
    unless method_defined?(:_sc_dex_orig_choose_wild_pokemon_for_map)
      alias_method :_sc_dex_orig_choose_wild_pokemon_for_map, :choose_wild_pokemon_for_map
    end

    def choose_wild_pokemon_for_map(map_ID, enc_type)
      result = _sc_dex_orig_choose_wild_pokemon_for_map(map_ID, enc_type)
      return result if !DexMode::ENABLED || !DexMode.limited? || result.nil?

      species, level = result
      return result if DexMode.in_dex?(species)
      return [DexMode.substitute(species), level]
    end
  end
end


#-------------------------------------------------------------------------------
# Roaming-legendary system also respects the mode — if FULL_DEX is on, all
# roamers spawn as designed. If SC_LIMITED is on, only roamers in the
# curated list spawn. (The eight SC story roamers in
# Data/Scripts/Story/Systems/Wild_Legendaries.rb are all already in the
# curated list, so this is mostly defensive.)
#-------------------------------------------------------------------------------
if defined?(SCWildLegendaries)
  module SCWildLegendaries
    class << self
      unless method_defined?(:_sc_dex_orig_can_spawn?)
        alias_method :_sc_dex_orig_can_spawn?, :can_spawn?
      end

      def can_spawn?(species, *args)
        return false if DexMode::ENABLED && DexMode.limited? && !DexMode.in_dex?(species)
        _sc_dex_orig_can_spawn?(species, *args)
      end
    end
  end
end
