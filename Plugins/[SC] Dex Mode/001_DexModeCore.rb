#===============================================================================
# [SC] Dex Mode - Core Logic
#===============================================================================
# Tracks which dex mode is active for the current save. Provides the
# public API used by the encounter filter, trainer filter, and Pokédex UI.
#
# Public API:
#   DexMode.current                  -> :SC_LIMITED / :FULL_DEX
#   DexMode.limited?                  -> true if SC_LIMITED active
#   DexMode.full?                     -> true if FULL_DEX active
#   DexMode.in_dex?(:SPECIES)         -> true if species is allowed in current mode
#   DexMode.set(:SC_LIMITED)          -> change mode
#   DexMode.prompt_player             -> show mode-select menu
#   DexMode.species_list              -> Array of all in-dex Symbols for current mode
#   DexMode.substitute(:OUTSPECIES)   -> Symbol of in-dex substitute (or :OUTSPECIES if FULL_DEX)
#===============================================================================

module DexMode
  ALL_MODES = [:SC_LIMITED, :FULL_DEX].freeze

  def self.current
    $PokemonGlobal&.sc_dex_mode || DEFAULT_MODE
  end

  def self.limited?
    current == :SC_LIMITED
  end

  def self.full?
    current == :FULL_DEX
  end

  def self.set(mode)
    raise ArgumentError, "Unknown dex mode: #{mode}" unless ALL_MODES.include?(mode)
    $PokemonGlobal.sc_dex_mode = mode if $PokemonGlobal
    @cached_species_list = nil
    @cached_species_set  = nil
  end

  # Species list for the current mode (cached per-mode).
  def self.species_list
    return all_available_species if full?
    SCLimitedDex.species
  end

  def self.species_set
    @cached_species_set ||= {}
    return @cached_species_set[current] if @cached_species_set[current]
    @cached_species_set[current] = species_list.each_with_object({}) { |s, h| h[s] = true }
    @cached_species_set[current]
  end

  def self.in_dex?(species_id)
    return true if full?
    return false unless species_id
    sym = species_id.is_a?(Symbol) ? species_id : species_id.to_s.upcase.to_sym
    species_set[sym] == true
  end

  # All species the game knows about (used for FULL_DEX).
  def self.all_available_species
    @all_species_cache ||= begin
      list = []
      GameData::Species.each { |s| list << s.species }
      list.uniq
    end
  end

  # Substitute a species with the in-dex species closest in
  # base-stat-total + primary type. Used by the encounter filter when
  # OUT_OF_DEX_POLICY = :SUBSTITUTE (or as fallback after reroll).
  def self.substitute(species_id)
    return species_id if full?
    return species_id if in_dex?(species_id)

    source = GameData::Species.try_get(species_id)
    return SCLimitedDex.species.sample unless source

    src_bst   = source.base_stats.values.sum rescue 350
    src_types = source.types.compact rescue []

    best = nil
    best_score = -Float::INFINITY
    SCLimitedDex.species.each do |sym|
      data = GameData::Species.try_get(sym)
      next unless data
      bst = data.base_stats.values.sum rescue 350
      types = data.types.compact rescue []
      # Score: higher is better. Same-type +200, shared-type +60,
      # BST closeness up to +100 (1pt per 5 BST gap).
      score = 0
      if !src_types.empty? && !types.empty?
        score += 200 if src_types.first == types.first
        score +=  60 if !(src_types & types).empty?
      end
      score += [100 - (bst - src_bst).abs / 5, 0].max
      if score > best_score
        best_score = score
        best = sym
      end
    end
    best || SCLimitedDex.species.sample
  end

  # Save data
  def self.persist_choice!
    $PokemonGlobal.sc_dex_mode = current if $PokemonGlobal
  end
end


#-------------------------------------------------------------------------------
# Save flag
#-------------------------------------------------------------------------------
class PokemonGlobalMetadata
  attr_accessor :sc_dex_mode
end

SaveData.register(:sc_dex_mode) do
  ensure_class :Symbol
  save_value { $PokemonGlobal.sc_dex_mode || DexMode::DEFAULT_MODE }
  load_value { |v| $PokemonGlobal.sc_dex_mode = v }
  new_game_value { DexMode::DEFAULT_MODE }
end
