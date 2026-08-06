#===============================================================================
# [SC] Party Banter - Banter Registry & Data
#===============================================================================

module BanterRegistry
  @entries = {}

  # Register a banter line
  # BanterRegistry.add(:LYRA, :NEW_AREA, map_id: 5, text: "This forest...")
  def self.add(speaker_id, trigger_type, opts = {})
    @entries[trigger_type] ||= []
    @entries[trigger_type].push({
      :speaker   => speaker_id,
      :text      => opts[:text] || "",
      :map_id    => opts[:map_id],        # nil = any map
      :map_ids   => opts[:map_ids],       # Array of map IDs
      :weather   => opts[:weather],       # :Rain, :Storm, :Snow, etc.
      :switch    => opts[:switch],        # Game switch required
      :variable  => opts[:variable],      # [var_id, min_value]
      :time      => opts[:time],          # :morning, :day, :evening, :night
      :type      => opts[:type],          # Pokemon type in party
      :once      => opts[:once] || false, # Show only once ever
      :priority  => opts[:priority] || 0, # Higher = preferred
      :portrait  => opts[:portrait]       # Override default portrait
    })
  end

  def self.entries_for(trigger_type)
    @entries[trigger_type] || []
  end

  def self.all_entries
    @entries
  end

  # Find the best matching banter for given context
  def self.find_best(trigger_type, context = {})
    candidates = entries_for(trigger_type).select { |e| matches?(e, context) }
    return nil if candidates.empty?
    # Filter out already-seen "once" entries
    if $BanterData
      candidates.reject! { |e| e[:once] && $BanterData.seen?(e) }
    end
    return nil if candidates.empty?
    # Pick highest priority, then random among ties
    max_pri = candidates.map { |e| e[:priority] }.max
    top = candidates.select { |e| e[:priority] == max_pri }
    top.sample
  end

  def self.matches?(entry, context)
    # Map filter
    if entry[:map_id] && context[:map_id]
      return false unless entry[:map_id] == context[:map_id]
    end
    if entry[:map_ids] && context[:map_id]
      return false unless entry[:map_ids].include?(context[:map_id])
    end
    # Weather filter
    if entry[:weather] && context[:weather]
      return false unless entry[:weather] == context[:weather]
    end
    # Switch filter
    if entry[:switch]
      return false unless $game_switches && $game_switches[entry[:switch]]
    end
    # Variable filter
    if entry[:variable]
      var_id, min_val = entry[:variable]
      return false unless $game_variables && $game_variables[var_id] >= min_val
    end
    # Time filter
    if entry[:time] && context[:time]
      return false unless entry[:time] == context[:time]
    end
    # Type filter
    if entry[:type] && context[:party_types]
      return false unless context[:party_types].include?(entry[:type])
    end
    # Speaker must be an active companion
    if context[:active_companions]
      return false unless context[:active_companions].include?(entry[:speaker])
    end
    true
  end
end

#===============================================================================
# Save tracking for "once" banters
#===============================================================================

class BanterSaveData
  attr_accessor :seen_keys, :step_counter, :map_banter_count, :last_map_id

  def initialize
    @seen_keys = []
    @step_counter = 0
    @map_banter_count = 0
    @last_map_id = 0
  end

  def seen?(entry)
    @seen_keys.include?(banter_key(entry))
  end

  def mark_seen(entry)
    key = banter_key(entry)
    @seen_keys.push(key) unless @seen_keys.include?(key)
  end

  def banter_key(entry)
    "#{entry[:speaker]}_#{entry[:text][0..30]}"
  end
end

SaveData.register(:banter_data) do
  save_value { $BanterData }
  load_value { |val| $BanterData = val || BanterSaveData.new }
  new_game_value { BanterSaveData.new }
end
