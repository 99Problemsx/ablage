#===============================================================================
# Shattered Crowns Script System - Achievements
#===============================================================================
# Track and reward player milestones.
#===============================================================================

module GameData
  #=============================================================================
  # Achievement - Track player achievements
  #=============================================================================
  class Achievement < ScriptBase
    @achievements = {}
    
    class << self
      attr_accessor :achievements
    end
    
    #---------------------------------------------------------------------------
    # Define an achievement
    #---------------------------------------------------------------------------
    def self.define(id, &block)
      builder = AchievementBuilder.new(id)
      yield(builder) if block_given?
      @achievements[id] = builder.to_data
      SCScripts.log("Registered achievement: #{id}")
    end
    
    #---------------------------------------------------------------------------
    # Unlock an achievement
    #---------------------------------------------------------------------------
    def self.unlock(id)
      return false if unlocked?(id)
      
      achievement = @achievements[id]
      return false unless achievement
      
      mark_unlocked(id)
      
      # Show notification
      if achievement[:show_popup]
        pbMessage("Achievement Unlocked: #{achievement[:name]}!")
      end
      
      # Give rewards
      achievement[:rewards].each do |reward|
        case reward[:type]
        when :item
          pbReceiveItem(reward[:item], reward[:quantity] || 1)
        when :money
          $player.money += reward[:amount]
        end
      end
      
      # Run callback
      achievement[:on_unlock]&.call
      
      SCScripts.log("Achievement unlocked: #{id}")
      true
    end
    
    #---------------------------------------------------------------------------
    # Check if unlocked
    #---------------------------------------------------------------------------
    def self.unlocked?(id)
      $PokemonGlobal.sc_achievements ||= []
      $PokemonGlobal.sc_achievements.include?(id)
    end
    
    def self.mark_unlocked(id)
      $PokemonGlobal.sc_achievements ||= []
      $PokemonGlobal.sc_achievements << id unless unlocked?(id)
    end
    
    #---------------------------------------------------------------------------
    # Progress tracking (for achievements with counts)
    #---------------------------------------------------------------------------
    def self.progress(id)
      $PokemonGlobal.sc_achievement_progress ||= {}
      $PokemonGlobal.sc_achievement_progress[id] || 0
    end
    
    def self.add_progress(id, amount = 1)
      $PokemonGlobal.sc_achievement_progress ||= {}
      $PokemonGlobal.sc_achievement_progress[id] ||= 0
      $PokemonGlobal.sc_achievement_progress[id] += amount
      
      achievement = @achievements[id]
      if achievement && achievement[:target] && progress(id) >= achievement[:target]
        unlock(id)
      end
    end
    
    #---------------------------------------------------------------------------
    # Get achievement data
    #---------------------------------------------------------------------------
    def self.get(id)
      @achievements[id]
    end
    
    def self.all
      @achievements
    end
    
    def self.all_unlocked
      @achievements.select { |id, _| unlocked?(id) }
    end
    
    def self.completion_percent
      return 0 if @achievements.empty?
      (all_unlocked.count.to_f / @achievements.count * 100).round(1)
    end
  end
  
  #=============================================================================
  # AchievementBuilder
  #=============================================================================
  class AchievementBuilder
    def initialize(id)
      @id = id
      @name = id.to_s.gsub('_', ' ').split.map(&:capitalize).join(' ')
      @description = ""
      @icon = nil
      @category = :general
      @target = nil
      @rewards = []
      @show_popup = true
      @hidden = false
      @on_unlock = nil
    end
    
    def name(text)
      @name = text
    end
    
    def description(text)
      @description = text
    end
    
    def icon(path)
      @icon = path
    end
    
    def category(cat)
      @category = cat
    end
    
    def target(count)
      @target = count
    end
    
    def hidden(val = true)
      @hidden = val
    end
    
    def show_popup(val)
      @show_popup = val
    end
    
    def reward_item(item, quantity = 1)
      @rewards << { type: :item, item: item, quantity: quantity }
    end
    
    def reward_money(amount)
      @rewards << { type: :money, amount: amount }
    end
    
    def on_unlock(&block)
      @on_unlock = block
    end
    
    def to_data
      {
        id: @id,
        name: @name,
        description: @description,
        icon: @icon,
        category: @category,
        target: @target,
        rewards: @rewards,
        show_popup: @show_popup,
        hidden: @hidden,
        on_unlock: @on_unlock
      }
    end
  end
end

# Save data
class PokemonGlobalMetadata
  attr_accessor :sc_achievements, :sc_achievement_progress
end

#===============================================================================
# Short helper
#===============================================================================
def pbAchievement(id)
  GameData::Achievement.unlock(id)
end

#===============================================================================
# Example Usage
#===============================================================================
# GameData::Achievement.define :first_pokemon do |a|
#   a.name "A New Friend"
#   a.description "Catch your first Pokemon"
#   a.category :catching
#   a.reward_item :POKEBALL, 10
# end
#
# GameData::Achievement.define :catch_master do |a|
#   a.name "Catch Master"
#   a.description "Catch 100 Pokemon"
#   a.target 100
#   a.reward_money 10000
# end
#
# Unlock: pbAchievement(:first_pokemon)
# Add progress: GameData::Achievement.add_progress(:catch_master, 1)
