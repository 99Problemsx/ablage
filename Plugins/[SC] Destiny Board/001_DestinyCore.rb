#===============================================================================
# [SC] Destiny Board - Core Logic
#===============================================================================

#===============================================================================
# Save Data
#===============================================================================

class DestinyBoardSaveData
  attr_accessor :fate_points      # Available Fate Points to spend
  attr_accessor :total_earned     # Lifetime Fate Points earned
  attr_accessor :unlocked_perks   # Array of unlocked perk keys

  def initialize
    @fate_points    = DestinyBoard::START_POINTS
    @total_earned   = 0
    @unlocked_perks = []
  end

  def earn_points(amount)
    @fate_points  += amount
    @total_earned += amount
  end

  def unlocked?(perk_key)
    @unlocked_perks.include?(perk_key)
  end

  def can_unlock?(perk_key)
    config = DestinyBoard::PERKS[perk_key]
    return false unless config
    return false if unlocked?(perk_key)
    return false if @fate_points < config[:cost]
    # Check tier prerequisite: must have unlocked (tier-1) perks in same branch
    branch = config[:branch]
    required_tier = config[:tier] - 1
    if required_tier > 0
      branch_unlocked = @unlocked_perks.count { |k|
        p = DestinyBoard::PERKS[k]
        p && p[:branch] == branch
      }
      return false if branch_unlocked < required_tier
    end
    true
  end

  def unlock(perk_key)
    config = DestinyBoard::PERKS[perk_key]
    return false unless config && can_unlock?(perk_key)
    @fate_points -= config[:cost]
    @unlocked_perks.push(perk_key)
    true
  end

  def has_effect?(effect_key)
    @unlocked_perks.any? { |k|
      config = DestinyBoard::PERKS[k]
      config && config[:effect] && config[:effect].key?(effect_key)
    }
  end

  def effect_value(effect_key)
    total = 0
    @unlocked_perks.each do |k|
      config = DestinyBoard::PERKS[k]
      next unless config && config[:effect] && config[:effect][effect_key]
      total += config[:effect][effect_key]
    end
    total
  end

  def branch_level(branch)
    @unlocked_perks.count { |k|
      config = DestinyBoard::PERKS[k]
      config && config[:branch] == branch
    }
  end
end

#===============================================================================
# Global metadata
#===============================================================================

class PokemonGlobalMetadata
  attr_accessor :destiny_board_data

  def destiny_board_data
    @destiny_board_data ||= DestinyBoardSaveData.new
  end
end

SaveData.register(:destiny_board_data) do
  save_value { $PokemonGlobal.destiny_board_data }
  load_value { |val| $PokemonGlobal.destiny_board_data = val }
  new_game_value { DestinyBoardSaveData.new }
end

#===============================================================================
# Destiny Board UI
#===============================================================================

def pbOpenDestinyBoard
  return unless DestinyBoard::ENABLED
  pbSEPlay(DestinyBoard::SE_OPEN)
  data = $PokemonGlobal.destiny_board_data

  loop do
    # Build branch selection
    branches = DestinyBoard::BRANCHES.map { |key, cfg|
      level = data.branch_level(key)
      "#{cfg[:name]} (Lv.#{level})"
    }
    branches.push("Status")
    branches.push("Cancel")

    choice = pbMessage(
      _INTL("Destiny Board — Fate Points: {1}", data.fate_points),
      branches, branches.length
    )

    if choice == branches.length - 1
      break # Cancel
    elsif choice == branches.length - 2
      # Status
      show_destiny_status(data)
    else
      branch_key = DestinyBoard::BRANCHES.keys[choice]
      show_branch_perks(data, branch_key)
    end
  end
end

def show_branch_perks(data, branch_key)
  branch_cfg = DestinyBoard::BRANCHES[branch_key]
  perks = DestinyBoard::PERKS.select { |_k, v| v[:branch] == branch_key }
                              .sort_by { |_k, v| v[:tier] }

  loop do
    options = perks.map { |key, config|
      if data.unlocked?(key)
        "✓ #{config[:name]}"
      elsif data.can_unlock?(key)
        "○ #{config[:name]} (#{config[:cost]} FP)"
      else
        "✗ #{config[:name]} (#{config[:cost]} FP)"
      end
    }
    options.push("Back")

    choice = pbMessage(
      _INTL("{1} — Level {2}", branch_cfg[:name], data.branch_level(branch_key)),
      options, options.length
    )
    break if choice == options.length - 1

    perk_key = perks.keys[choice]
    perk_cfg = perks[perk_key]
    next unless perk_cfg

    if data.unlocked?(perk_key)
      pbMessage(_INTL("{1} (Unlocked)\n{2}", perk_cfg[:name], perk_cfg[:description]))
    elsif data.can_unlock?(perk_key)
      if pbConfirmMessage(_INTL("{1}\n{2}\nCost: {3} FP\nUnlock this perk?",
                                perk_cfg[:name], perk_cfg[:description], perk_cfg[:cost]))
        if data.unlock(perk_key)
          pbSEPlay(DestinyBoard::SE_UNLOCK)
          pbMessage(_INTL("Unlocked {1}!", perk_cfg[:name]))
        end
      end
    else
      pbMessage(_INTL("{1}\n{2}\nCost: {3} FP (Locked — need higher branch level or more FP)",
                      perk_cfg[:name], perk_cfg[:description], perk_cfg[:cost]))
    end
  end
end

def show_destiny_status(data)
  msg = _INTL("=== Destiny Board ===\n")
  msg += _INTL("Fate Points: {1} (Total earned: {2})\n\n", data.fate_points, data.total_earned)
  DestinyBoard::BRANCHES.each do |key, cfg|
    msg += _INTL("{1}: Level {2}\n", cfg[:name], data.branch_level(key))
  end
  msg += _INTL("\nPerks unlocked: {1}/{2}", data.unlocked_perks.length, DestinyBoard::PERKS.length)
  pbMessage(msg)
end

#===============================================================================
# Event helpers
#===============================================================================

def pbEarnFatePoints(amount, reason = nil)
  return unless DestinyBoard::ENABLED
  data = $PokemonGlobal.destiny_board_data
  data.earn_points(amount)
  pbSEPlay(DestinyBoard::SE_FATE_POINT)
  if reason
    pbMessage(_INTL("Earned {1} Fate Point(s)! ({2})", amount, reason))
  else
    pbMessage(_INTL("Earned {1} Fate Point(s)!", amount))
  end
end

def destinyPerkActive?(perk_key)
  return false unless DestinyBoard::ENABLED
  $PokemonGlobal.destiny_board_data.unlocked?(perk_key)
end

def destinyEffectValue(effect_key)
  return 0 unless DestinyBoard::ENABLED
  $PokemonGlobal.destiny_board_data.effect_value(effect_key)
end

def destinyHasEffect?(effect_key)
  return false unless DestinyBoard::ENABLED
  $PokemonGlobal.destiny_board_data.has_effect?(effect_key)
end

def pbFatePoints
  $PokemonGlobal.destiny_board_data.fate_points
end

#===============================================================================
# Post-battle perks: EXP bonus, money bonus, post-battle heal
#===============================================================================

EventHandlers.add(:on_end_battle, :sc_destiny_board_battle_perks,
  proc { |result, _can_lose|
    next unless DestinyBoard::ENABLED && result == 1
    data = $PokemonGlobal.destiny_board_data

    # Post-battle heal
    heal_pct = data.effect_value(:post_battle_heal)
    if heal_pct > 0
      $player.party.each do |pkmn|
        next if pkmn.egg? || pkmn.fainted?
        heal = [pkmn.totalhp * heal_pct / 100, 1].max
        pkmn.hp = [pkmn.hp + heal, pkmn.totalhp].min
      end
    end
  }
)
