#===============================================================================
# [SC] Morality System - Core Logic
#===============================================================================

#===============================================================================
# Save Data
#===============================================================================

class MoralitySaveData
  attr_accessor :alignment   # Integer from MIN to MAX
  attr_accessor :choices_log # Array of { key:, shift:, description: }

  def initialize
    @alignment   = MoralitySystem::START_VALUE
    @choices_log = []
  end

  def shift(amount, choice_key = nil, description = nil)
    old_tier = current_tier
    @alignment = (@alignment + amount).clamp(
      MoralitySystem::MIN_VALUE, MoralitySystem::MAX_VALUE
    )
    if choice_key
      @choices_log.push({
        :key => choice_key, :shift => amount,
        :description => description || choice_key.to_s
      })
    end
    new_tier = current_tier
    [old_tier, new_tier]
  end

  def current_tier
    MoralitySystem::TIERS.each do |tier_key, config|
      return tier_key if config[:range].include?(@alignment)
    end
    :NEUTRAL
  end

  def tier_label
    config = MoralitySystem::TIERS[current_tier]
    config ? config[:label] : "Neutral"
  end

  def is_light?
    @alignment > 20
  end

  def is_dark?
    @alignment < -20
  end

  def is_neutral?
    @alignment.between?(-20, 20)
  end
end

#===============================================================================
# Global metadata
#===============================================================================

class PokemonGlobalMetadata
  attr_accessor :morality_data

  def morality_data
    @morality_data ||= MoralitySaveData.new
  end
end

SaveData.register(:morality_data) do
  save_value { $PokemonGlobal.morality_data }
  load_value { |val| $PokemonGlobal.morality_data = val }
  new_game_value { MoralitySaveData.new }
end

#===============================================================================
# Morality Manager
#===============================================================================

module MoralityManager
  def self.data
    $PokemonGlobal.morality_data
  end

  #=============================================================================
  # Shift alignment
  #=============================================================================

  def self.shift(amount, choice_key = nil, description = nil)
    return unless MoralitySystem::ENABLED
    old_tier, new_tier = data.shift(amount, choice_key, description)

    # Visual feedback
    if MoralitySystem::SHOW_ALIGNMENT_CHANGE && amount != 0
      if amount > 0
        pbSEPlay(MoralitySystem::SE_LIGHT_SHIFT)
        if $game_screen
          $game_screen.start_flash(MoralitySystem::LIGHT_FLASH_COLOR,
                                   MoralitySystem::FLASH_DURATION)
        end
      else
        pbSEPlay(MoralitySystem::SE_DARK_SHIFT)
        if $game_screen
          $game_screen.start_flash(MoralitySystem::DARK_FLASH_COLOR,
                                   MoralitySystem::FLASH_DURATION)
        end
      end
    end

    # Tier change notification
    if old_tier != new_tier
      pbSEPlay(MoralitySystem::SE_TIER_CHANGE)
      label = MoralitySystem::TIERS[new_tier][:label]
      pbMessage(_INTL("Your alignment shifted to: {1}", label))
      # Codex integration
      codexDiscover(:"MORALITY_#{new_tier}") if defined?(codexDiscover)
    end
  end

  #=============================================================================
  # Morality choice prompt — presents a choice and applies shift
  #=============================================================================

  def self.choice(prompt, light_text, light_shift, dark_text, dark_shift, choice_key = nil)
    result = pbMessage(prompt, [light_text, dark_text], 0)
    if result == 0
      shift(light_shift, choice_key, light_text)
      return :LIGHT
    else
      shift(dark_shift, choice_key, dark_text)
      return :DARK
    end
  end

  #=============================================================================
  # Check if alignment qualifies for an ending
  #=============================================================================

  def self.ending_available?(ending_key)
    config = MoralitySystem::ENDINGS[ending_key]
    return false unless config
    tier_order = [:PURE_DARK, :DARK, :NEUTRAL, :LIGHT, :PURE_LIGHT]
    min_idx = tier_order.index(config[:min_tier]) || 0
    cur_idx = tier_order.index(data.current_tier) || 2
    # For dark endings, lower is "better"; for light, higher.
    # Balance is reserved for players who stayed close to Neutral —
    # within ±1 tier so committed Light/Dark runs can't fall back to it.
    case ending_key
    when :DOMINATION then cur_idx <= min_idx
    when :REDEMPTION then cur_idx >= min_idx
    when :BALANCE    then (cur_idx - 2).abs <= 1
    else cur_idx == 2
    end
  end
end

#===============================================================================
# Event helpers
#===============================================================================

def moralShift(amount, choice_key = nil, description = nil)
  MoralityManager.shift(amount, choice_key, description)
end

def moralChoice(prompt, light_text, light_shift, dark_text, dark_shift, key = nil)
  MoralityManager.choice(prompt, light_text, light_shift, dark_text, dark_shift, key)
end

def moralTier
  $PokemonGlobal.morality_data.current_tier
end

def moralTier?(tier)
  moralTier == tier
end

def moralValue
  $PokemonGlobal.morality_data.alignment
end

def moralLight?
  $PokemonGlobal.morality_data.is_light?
end

def moralDark?
  $PokemonGlobal.morality_data.is_dark?
end

def moralNeutral?
  $PokemonGlobal.morality_data.is_neutral?
end

def moralEndingAvailable?(ending_key)
  MoralityManager.ending_available?(ending_key)
end

#===============================================================================
# Event tag: [Morality +/-N KEY]
#===============================================================================

EventHandlers.add(:on_event_comment_tag, :sc_morality_tag,
  proc { |_event, tag, params|
    next unless tag == "Morality" && params.length >= 1
    amount = params[0].to_i
    key = params[1] ? params[1].to_sym : nil
    moralShift(amount, key)
  }
)
