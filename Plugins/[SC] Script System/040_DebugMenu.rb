#===============================================================================
# Shattered Crowns Script System - Debug Menu
#===============================================================================
# View all registered scripts at runtime.
#===============================================================================

module SCScripts
  module Debug
    #---------------------------------------------------------------------------
    # Show debug menu
    #---------------------------------------------------------------------------
    def self.show_menu
      return unless $DEBUG
      
      choices = [
        "View Switches/Variables",
        "View Trainer Teams",
        "View Cutscenes",
        "View Shops",
        "View Quests",
        "View Achievements",
        "View Chapters",
        "View Mystery Gifts",
        "View All Statistics",
        "Reload Scripts",
        "Cancel"
      ]
      
      loop do
        result = pbShowCommands(nil, choices, choices.length)
        break if result < 0 || result == choices.length - 1
        
        case result
        when 0 then show_switches_variables
        when 1 then show_trainer_teams
        when 2 then show_cutscenes
        when 3 then show_shops
        when 4 then show_quests
        when 5 then show_achievements
        when 6 then show_chapters
        when 7 then show_mystery_gifts
        when 8 then show_statistics
        when 9 then reload_scripts
        end
      end
    end
    
    #---------------------------------------------------------------------------
    # View registered items
    #---------------------------------------------------------------------------
    def self.show_switches_variables
      lines = ["=== SWITCHES ==="]
      SCScripts::Switches.constants.each do |const|
        val = SCScripts::Switches.const_get(const)
        status = $game_switches[val] ? "ON" : "OFF"
        lines << "#{const}: #{val} [#{status}]"
      end
      
      lines << "\n=== VARIABLES ==="
      SCScripts::Variables.constants.each do |const|
        val = SCScripts::Variables.const_get(const)
        current = $game_variables[val]
        lines << "#{const}: #{val} = #{current}"
      end
      
      show_text_window("Switches & Variables", lines.first(20).join("\n"))
    end
    
    def self.show_trainer_teams
      teams = GameData::TrainerTeam.all rescue {}
      lines = teams.map { |id, team| "#{id}: #{team[:pokemon].count} Pokemon" }
      show_text_window("Trainer Teams (#{teams.count})", lines.first(15).join("\n"))
    end
    
    def self.show_cutscenes
      scenes = GameData::Cutscene.cutscenes rescue {}
      lines = scenes.map { |id, scene| "#{id}: #{scene.steps.count} steps" }
      show_text_window("Cutscenes (#{scenes.count})", lines.first(15).join("\n"))
    end
    
    def self.show_shops
      shops = GameData::Shop.shops rescue {}
      lines = shops.map { |id, shop| "#{id}: #{shop.items.count} items" }
      show_text_window("Shops (#{shops.count})", lines.first(15).join("\n"))
    end
    
    def self.show_quests
      quests = GameData::Quest.quests rescue {}
      active = GameData::Quest.active_quests rescue []
      completed = GameData::Quest.completed_quests rescue []
      
      lines = ["Active: #{active.count}, Completed: #{completed.count}", ""]
      quests.each do |id, quest|
        status = completed.include?(id) ? "[DONE]" : (active.any? { |q| q[:id] == id } ? "[ACTIVE]" : "")
        lines << "#{id} #{status}"
      end
      show_text_window("Quests (#{quests.count})", lines.first(15).join("\n"))
    end
    
    def self.show_achievements
      achievements = GameData::Achievement.all rescue {}
      unlocked = GameData::Achievement.all_unlocked rescue {}
      
      lines = ["Unlocked: #{unlocked.count}/#{achievements.count}", ""]
      achievements.each do |id, ach|
        status = GameData::Achievement.unlocked?(id) ? "[✓]" : "[ ]"
        lines << "#{status} #{ach[:name]}"
      end
      show_text_window("Achievements", lines.first(15).join("\n"))
    end
    
    def self.show_chapters
      chapters = GameData::Chapter.all rescue {}
      current = GameData::Chapter.current rescue nil
      
      lines = ["Current: #{current || 'None'}", ""]
      chapters.each do |id, ch|
        status = id == current ? "[CURRENT]" : (GameData::Chapter.completed?(id) ? "[DONE]" : "")
        lines << "#{ch[:order]}. #{ch[:name]} #{status}"
      end
      show_text_window("Chapters (#{chapters.count})", lines.first(15).join("\n"))
    end
    
    def self.show_mystery_gifts
      gifts = GameData::MysteryGift.all rescue {}
      
      lines = []
      gifts.each do |id, gift|
        status = GameData::MysteryGift.claimed?(id) ? "[CLAIMED]" : "[AVAILABLE]"
        lines << "#{gift[:name]} #{status}"
      end
      show_text_window("Mystery Gifts (#{gifts.count})", lines.first(15).join("\n"))
    end
    
    def self.show_statistics
      lines = [
        "=== Script System Statistics ===",
        "",
        "Switches defined: #{SCScripts::Switches.constants.count}",
        "Variables defined: #{SCScripts::Variables.constants.count}",
        "Trainer Teams: #{(GameData::TrainerTeam.all rescue {}).count}",
        "Cutscenes: #{(GameData::Cutscene.cutscenes rescue {}).count}",
        "Shops: #{(GameData::Shop.shops rescue {}).count}",
        "Quests: #{(GameData::Quest.quests rescue {}).count}",
        "Achievements: #{(GameData::Achievement.all rescue {}).count}",
        "Chapters: #{(GameData::Chapter.all rescue {}).count}",
        "Mystery Gifts: #{(GameData::MysteryGift.all rescue {}).count}",
        "",
        "Achievement Progress: #{(GameData::Achievement.completion_percent rescue 0)}%",
        "Chapter Progress: #{(GameData::Chapter.progress rescue 0)}%"
      ]
      show_text_window("Statistics", lines.join("\n"))
    end
    
    #---------------------------------------------------------------------------
    # Reload scripts
    #---------------------------------------------------------------------------
    def self.reload_scripts
      pbMessage("Reloading scripts...")
      SCScripts::Loader.load_all
      pbMessage("Scripts reloaded!")
    end
    
    #---------------------------------------------------------------------------
    # Helper to show text window
    #---------------------------------------------------------------------------
    def self.show_text_window(title, text)
      pbMessage("\\ts[]\\l[8]#{title}\\n#{text}")
    end
  end
end

#===============================================================================
# Add debug menu shortcut
#===============================================================================
def pbScriptDebug
  SCScripts::Debug.show_menu
end

# Debug menu can be accessed via pbScriptDebug() in the debug console
# or by calling SCScripts::Debug.show_menu
