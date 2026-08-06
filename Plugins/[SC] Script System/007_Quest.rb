#===============================================================================
# Shattered Crowns Script System - Quest System
#===============================================================================
# Provides a quest/mission tracking system with objectives and rewards.
#===============================================================================

module GameData
  #=============================================================================
  # Quest System
  #=============================================================================
  class Quest < ScriptBase
    @quests = {}
    @active_quests = []
    @completed_quests = []
    
    class << self
      attr_accessor :quests, :active_quests, :completed_quests
    end
    
    #---------------------------------------------------------------------------
    # Define a quest
    # Usage: Quest.define :first_pokemon do |q| ... end
    #---------------------------------------------------------------------------
    def self.define(id, &block)
      builder = QuestBuilder.new(id)
      yield(builder) if block_given?
      @quests[id] = builder.to_data
      SCScripts.log("Registered quest: #{id}")
    end
    
    #---------------------------------------------------------------------------
    # Start a quest
    #---------------------------------------------------------------------------
    def self.start(quest_id)
      return false if active?(quest_id) || completed?(quest_id)
      
      quest = @quests[quest_id]
      return false unless quest
      
      @active_quests << { id: quest_id, objectives: quest[:objectives].map { |o| o.merge(done: false) } }
      
      if quest[:on_start]
        quest[:on_start].call
      end
      
      pbMessage("New Quest: #{quest[:name]}!") if quest[:show_notification]
      SCScripts.log("Started quest: #{quest_id}")
      true
    end
    
    #---------------------------------------------------------------------------
    # Complete an objective
    #---------------------------------------------------------------------------
    def self.complete_objective(quest_id, objective_index)
      quest_data = @active_quests.find { |q| q[:id] == quest_id }
      return false unless quest_data
      
      objective = quest_data[:objectives][objective_index]
      return false unless objective
      
      objective[:done] = true
      
      # Check if all objectives complete
      if quest_data[:objectives].all? { |o| o[:done] }
        complete(quest_id)
      end
      
      true
    end
    
    #---------------------------------------------------------------------------
    # Complete a quest
    #---------------------------------------------------------------------------
    def self.complete(quest_id)
      quest_data = @active_quests.find { |q| q[:id] == quest_id }
      return false unless quest_data
      
      quest = @quests[quest_id]
      
      # Give rewards
      if quest[:rewards]
        quest[:rewards].each do |reward|
          case reward[:type]
          when :item
            pbReceiveItem(reward[:item], reward[:quantity] || 1)
          when :money
            $player.money += reward[:amount]
          when :pokemon
            pbAddPokemon(reward[:species], reward[:level])
          end
        end
      end
      
      # Move to completed
      @active_quests.delete(quest_data)
      @completed_quests << quest_id
      
      if quest[:on_complete]
        quest[:on_complete].call
      end
      
      pbMessage("Quest Complete: #{quest[:name]}!") if quest[:show_notification]
      SCScripts.log("Completed quest: #{quest_id}")
      true
    end
    
    #---------------------------------------------------------------------------
    # Status checks
    #---------------------------------------------------------------------------
    def self.active?(quest_id)
      @active_quests.any? { |q| q[:id] == quest_id }
    end
    
    def self.completed?(quest_id)
      @completed_quests.include?(quest_id)
    end
    
    def self.available?(quest_id)
      !active?(quest_id) && !completed?(quest_id)
    end
    
    def self.objective_done?(quest_id, objective_index)
      quest_data = @active_quests.find { |q| q[:id] == quest_id }
      return false unless quest_data
      quest_data[:objectives][objective_index]&.dig(:done) || false
    end
    
    #---------------------------------------------------------------------------
    # Get quest data
    #---------------------------------------------------------------------------
    def self.get(quest_id)
      @quests[quest_id]
    end
    
    def self.get_active
      @active_quests.filter_map { |q|
        quest = @quests[q[:id]]
        next nil unless quest
        quest.merge(progress: q)
      }
    end
  end
  
  #=============================================================================
  # QuestBuilder
  #=============================================================================
  class QuestBuilder
    def initialize(id)
      @id = id
      @name = id.to_s.gsub('_', ' ').split.map(&:capitalize).join(' ')
      @description = ""
      @objectives = []
      @rewards = []
      @category = :main
      @chapter = nil
      @playable_character = nil
      @giver = nil
      @location = nil
      @chapter_unlock = nil
      @show_notification = true
      @on_start = nil
      @on_complete = nil
    end
    
    def name(text)
      @name = text
    end
    
    def description(text)
      @description = text
    end
    
    def category(cat)
      @category = cat # :main, :side, :daily, :event
    end
    
    # Alias for category - used by Main_Story_Quests.rb as q.type :main_story
    def type(cat)
      @category = cat
    end
    
    def chapter(num)
      @chapter = num
    end
    
    def playable_character(char)
      @playable_character = char
    end
    
    def giver(name)
      @giver = name.to_s
    end
    
    def location(place)
      @location = place.to_s
    end
    
    def chapter_unlock(num)
      @chapter_unlock = num
    end
    
    # Friendship points for bonding quests
    # Usage: q.friendship_points :lyra, 10
    def friendship_points(character, amount)
      @rewards << { type: :friendship, character: character, amount: amount }
    end
    
    def show_notification(value)
      @show_notification = value
    end
    
    # Add objective (supports multiple calling forms)
    # Single text: q.objective "Do something", count: 3
    # Symbol type:  q.objective :catch_species, species: :PIDGEY, count: 1
    def objective(text_or_type, options = {})
      if text_or_type.is_a?(Symbol)
        @objectives << {
          type: text_or_type,
          text: text_or_type.to_s.gsub('_', ' ').capitalize,
          count: options[:count] || 1,
          current: 0
        }.merge(options)
      else
        @objectives << {
          text: text_or_type,
          count: options[:count] || 1,
          current: 0
        }.merge(options)
      end
    end
    
    # Set objectives as an array (used by Main_Story_Quests.rb)
    def objectives(arr)
      @objectives = arr.map do |obj|
        if obj.is_a?(Hash)
          { text: obj[:text] || obj[:id].to_s, count: obj[:count] || 1, current: 0 }.merge(obj)
        else
          { text: obj.to_s, count: 1, current: 0 }
        end
      end
    end
    
    # Add rewards
    def reward_item(item, quantity = 1)
      @rewards << { type: :item, item: item, quantity: quantity }
    end
    
    def reward_money(amount)
      @rewards << { type: :money, amount: amount }
    end
    
    def reward_pokemon(species, level, options = {})
      @rewards << { type: :pokemon, species: species, level: level, options: options }
    end
    
    # Callbacks
    def on_start(&block)
      @on_start = block
    end
    
    def on_complete(&block)
      @on_complete = block
    end
    
    def to_data
      {
        id: @id,
        name: @name,
        description: @description,
        category: @category,
        chapter: @chapter,
        playable_character: @playable_character,
        giver: @giver,
        location: @location,
        chapter_unlock: @chapter_unlock,
        objectives: @objectives,
        rewards: @rewards,
        show_notification: @show_notification,
        on_start: @on_start,
        on_complete: @on_complete
      }
    end
  end
end

#===============================================================================
# Save/Load hooks
#===============================================================================
class PokemonGlobalMetadata
  attr_accessor :sc_active_quests, :sc_completed_quests
end

# Save quest data
module SCScripts
  module QuestSaveData
    def self.save
      $PokemonGlobal.sc_active_quests = GameData::Quest.active_quests
      $PokemonGlobal.sc_completed_quests = GameData::Quest.completed_quests
    end

    def self.load
      if $PokemonGlobal.sc_active_quests
        GameData::Quest.active_quests = $PokemonGlobal.sc_active_quests
      end
      if $PokemonGlobal.sc_completed_quests
        GameData::Quest.completed_quests = $PokemonGlobal.sc_completed_quests
      end
    end
  end
end

# Register save/load hooks so quest progress persists across sessions
SaveData.register(:sc_quest_data) do
  save_value { SCScripts::QuestSaveData.save; nil }
  load_value { |_value| SCScripts::QuestSaveData.load }
  new_game_value { nil }
end
