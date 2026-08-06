#===============================================================================
# [SC] Secret Base - Core Logic
#===============================================================================

#===============================================================================
# Save Data
#===============================================================================

class SecretBaseSaveData
  attr_accessor :established       # Symbol key of chosen location
  attr_accessor :decorations       # Array of placed decoration IDs
  attr_accessor :invited_npcs      # Array of invited NPC keys
  attr_accessor :training_steps    # Remaining cooldown steps for training dummy
  attr_accessor :berry_timers      # Hash of berry grow timers

  def initialize
    @established     = nil
    @decorations     = []
    @invited_npcs    = []
    @training_steps  = 0
    @berry_timers    = {}
  end

  def established?
    !@established.nil?
  end

  def has_decoration?(deco_id)
    @decorations.include?(deco_id)
  end

  def add_decoration(deco_id)
    @decorations.push(deco_id) unless has_decoration?(deco_id)
  end

  def remove_decoration(deco_id)
    @decorations.delete(deco_id)
  end

  def has_effect?(effect)
    @decorations.any? { |d|
      config = SecretBase::DECORATIONS[d]
      config && config[:effect] == effect
    }
  end

  def invite_npc(npc_key)
    return false if @invited_npcs.length >= SecretBase::MAX_INVITED_NPCS
    return false if @invited_npcs.include?(npc_key)
    @invited_npcs.push(npc_key)
    true
  end

  def dismiss_npc(npc_key)
    @invited_npcs.delete(npc_key)
  end
end

#===============================================================================
# Global metadata
#===============================================================================

class PokemonGlobalMetadata
  attr_accessor :secret_base_data

  def secret_base_data
    @secret_base_data ||= SecretBaseSaveData.new
  end
end

SaveData.register(:secret_base_data) do
  save_value { $PokemonGlobal.secret_base_data }
  load_value { |val| $PokemonGlobal.secret_base_data = val }
  new_game_value { SecretBaseSaveData.new }
end

#===============================================================================
# Base Manager
#===============================================================================

module SecretBaseManager
  def self.data
    $PokemonGlobal.secret_base_data
  end

  #=============================================================================
  # Establish a base at a location
  #=============================================================================

  def self.establish(location_key)
    loc = SecretBase::BASE_LOCATIONS[location_key]
    return false unless loc
    data.established = location_key
    pbMessage(_INTL("You established your Secret Base at {1}!", loc[:name]))
    true
  end

  #=============================================================================
  # Enter the base
  #=============================================================================

  def self.enter
    return unless data.established?
    pbSEPlay(SecretBase::SE_ENTER_BASE) if SecretBase::SE_ENTER_BASE
    # Store return position
    data_store_return_position
    $game_temp.player_transferring    = true
    $game_temp.player_new_map_id      = SecretBase::BASE_INTERIOR_MAP_ID
    $game_temp.player_new_x           = SecretBase::BASE_ENTRY_X
    $game_temp.player_new_y           = SecretBase::BASE_ENTRY_Y
    $game_temp.player_new_direction   = 8
    $scene.transfer_player if $scene.is_a?(Scene_Map)
  end

  def self.leave
    return unless @return_map_id
    $game_temp.player_transferring    = true
    $game_temp.player_new_map_id      = @return_map_id
    $game_temp.player_new_x           = @return_x
    $game_temp.player_new_y           = @return_y
    $game_temp.player_new_direction   = 2
    $scene.transfer_player if $scene.is_a?(Scene_Map)
    @return_map_id = nil
  end

  def self.data_store_return_position
    @return_map_id = $game_map.map_id
    @return_x      = $game_player.x
    @return_y      = $game_player.y
  end

  #=============================================================================
  # Buy & place decoration
  #=============================================================================

  def self.buy_decoration(deco_id)
    config = SecretBase::DECORATIONS[deco_id]
    return false unless config
    return false if data.has_decoration?(deco_id)
    if $player.money < config[:cost]
      pbMessage(_INTL("You don't have enough money."))
      return false
    end
    $player.money -= config[:cost]
    data.add_decoration(deco_id)
    pbSEPlay(SecretBase::SE_DECORATE)
    pbMessage(_INTL("You placed the {1} in your Secret Base!", config[:name]))
    true
  end

  #=============================================================================
  # Use decoration effects
  #=============================================================================

  def self.use_heal
    return unless data.has_effect?(:heal)
    $player.party.each { |pkmn| pkmn.heal }
    pbMessage(_INTL("Your Pokémon were fully healed!"))
    pbMEPlay("Pokemon Heal")
  end

  def self.use_pc
    return unless data.has_effect?(:pc)
    pbPokeCenterPC
  end

  def self.use_training
    return unless data.has_effect?(:training)
    if data.training_steps > 0
      pbMessage(_INTL("The Training Dummy is cooling down. Walk around more!"))
      return
    end
    pbMessage(_INTL("You challenge the Training Dummy!"))
    pbWildBattle(SecretBase::TRAINING_DUMMY_SPECIES, SecretBase::TRAINING_DUMMY_LEVEL)
    data.training_steps = SecretBase::TRAINING_DUMMY_COOLDOWN_STEPS
  end

  def self.use_shop
    return unless data.has_effect?(:shop)
    pbPokemonMart([
      :POTION, :SUPERPOTION, :ANTIDOTE, :PARALYZEHEAL,
      :POKEBALL, :GREATBALL, :REPEL
    ])
  end
end

#===============================================================================
# Step counter for training dummy cooldown
#===============================================================================

EventHandlers.add(:on_player_step_taken, :sc_secret_base_steps,
  proc {
    next unless SecretBase::ENABLED
    base_data = $PokemonGlobal.secret_base_data
    if base_data.training_steps > 0
      base_data.training_steps -= 1
    end
  }
)

#===============================================================================
# Event helpers
#===============================================================================

def pbEstablishBase(location_key)
  SecretBaseManager.establish(location_key)
end

def pbEnterBase
  SecretBaseManager.enter
end

def pbLeaveBase
  SecretBaseManager.leave
end

def pbBaseHasEffect?(effect)
  $PokemonGlobal.secret_base_data.has_effect?(effect)
end

def pbBuyDecoration(deco_id)
  SecretBaseManager.buy_decoration(deco_id)
end

def pbBaseEstablished?
  $PokemonGlobal.secret_base_data.established?
end
