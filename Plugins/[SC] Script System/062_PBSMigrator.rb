#===============================================================================
# Shattered Crowns Script System - PBS Migration Tool
#===============================================================================
# Converts existing PBS text files to Ruby script format.
# Run this once to migrate your PBS data, then disable PBS loading.
#===============================================================================

module SCScripts
  module PBSMigrator
    #---------------------------------------------------------------------------
    # Migrate all PBS files to scripts
    #---------------------------------------------------------------------------
    def self.migrate_all(output_path = "Data/Scripts")
      SCScripts.log("=== PBS Migration Tool ===")
      
      migrate_types(output_path)
      migrate_abilities(output_path)
      migrate_moves(output_path)
      migrate_items(output_path)
      migrate_pokemon(output_path)
      migrate_trainers(output_path)
      migrate_encounters(output_path)
      
      SCScripts.log("=== PBS Migration Complete ===")
      SCScripts.log("Review generated files in #{output_path}/")
    end
    
    #---------------------------------------------------------------------------
    # Migrate types.txt
    #---------------------------------------------------------------------------
    def self.migrate_types(output_path)
      return unless defined?(GameData::Type)
      
      output_file = "#{output_path}/Types/000_AllTypes.rb"
      FileUtils.mkdir_p(File.dirname(output_file))
      
      lines = []
      lines << "#" + "=" * 77
      lines << "# Type Definitions - Migrated from PBS"
      lines << "#" + "=" * 77
      lines << ""
      
      GameData::Type.each do |type|
        next if type.pseudo_type
        
        lines << "GameData::Type.define :#{type.id} do |t|"
        lines << "  t.name \"#{type.name}\""
        lines << "  t.icon_position #{type.icon_position}" if type.icon_position
        lines << "  t.special_type" if type.special_type
        lines << "end"
        lines << ""
      end
      
      # Add type chart
      lines << "#" + "=" * 77
      lines << "# Type Effectiveness Chart"
      lines << "#" + "=" * 77
      lines << ""
      lines << "GameData::TypeChart.define do"
      
      GameData::Type.each do |attacking_type|
        next if attacking_type.pseudo_type
        
        super_effective = []
        not_effective = []
        no_effect = []
        
        GameData::Type.each do |defending_type|
          next if defending_type.pseudo_type
          
          eff = attacking_type.effectiveness(defending_type.id)
          case eff
          when Effectiveness::SUPER_EFFECTIVE_ONE
            super_effective << ":#{defending_type.id}"
          when Effectiveness::NOT_VERY_EFFECTIVE_ONE
            not_effective << ":#{defending_type.id}"
          when Effectiveness::INEFFECTIVE
            no_effect << ":#{defending_type.id}"
          end
        end
        
        if super_effective.any?
          lines << "  super_effective :#{attacking_type.id}, against: [#{super_effective.join(', ')}]"
        end
        if not_effective.any?
          lines << "  not_effective :#{attacking_type.id}, against: [#{not_effective.join(', ')}]"
        end
        if no_effect.any?
          lines << "  no_effect :#{attacking_type.id}, against: [#{no_effect.join(', ')}]"
        end
      end
      
      lines << "end"
      
      File.write(output_file, lines.join("\n"))
      SCScripts.log("Migrated types to #{output_file}")
    rescue => e
      SCScripts.error("Failed to migrate types: #{e.message}")
    end
    
    #---------------------------------------------------------------------------
    # Migrate abilities.txt
    #---------------------------------------------------------------------------
    def self.migrate_abilities(output_path)
      return unless defined?(GameData::Ability)
      
      output_file = "#{output_path}/Abilities/000_AllAbilities.rb"
      FileUtils.mkdir_p(File.dirname(output_file))
      
      lines = []
      lines << "#" + "=" * 77
      lines << "# Ability Definitions - Migrated from PBS"
      lines << "#" + "=" * 77
      lines << ""
      
      GameData::Ability.each do |ability|
        lines << "GameData::Ability.define :#{ability.id} do |a|"
        lines << "  a.name \"#{ability.name}\""
        lines << "  a.description \"#{escape_string(ability.description)}\""
        
        if ability.flags && !ability.flags.empty?
          flags = ability.flags.map { |f| ":#{f}" }.join(", ")
          lines << "  a.flags #{flags}"
        end
        
        lines << "end"
        lines << ""
      end
      
      File.write(output_file, lines.join("\n"))
      SCScripts.log("Migrated abilities to #{output_file}")
    rescue => e
      SCScripts.error("Failed to migrate abilities: #{e.message}")
    end
    
    #---------------------------------------------------------------------------
    # Migrate moves.txt
    #---------------------------------------------------------------------------
    def self.migrate_moves(output_path)
      return unless defined?(GameData::Move)
      
      # Split into multiple files by type for organization
      moves_by_type = {}
      
      GameData::Move.each do |move|
        type = move.type || :NORMAL
        moves_by_type[type] ||= []
        moves_by_type[type] << move
      end
      
      moves_by_type.each do |type, moves|
        output_file = "#{output_path}/Moves/#{type.to_s.capitalize}_Moves.rb"
        FileUtils.mkdir_p(File.dirname(output_file))
        
        lines = []
        lines << "#" + "=" * 77
        lines << "# #{type} Type Move Definitions - Migrated from PBS"
        lines << "#" + "=" * 77
        lines << ""
        
        moves.each do |move|
          lines << "GameData::Move.define :#{move.id} do |m|"
          lines << "  m.name \"#{move.name}\""
          lines << "  m.type :#{move.type}"
          lines << "  m.category :#{move.category}"
          lines << "  m.power #{move.base_damage}" if move.base_damage && move.base_damage > 0
          lines << "  m.accuracy #{move.accuracy}" if move.accuracy
          lines << "  m.pp #{move.total_pp}" if move.total_pp
          lines << "  m.target :#{move.target}" if move.target
          lines << "  m.priority #{move.priority}" if move.priority && move.priority != 0
          lines << "  m.function_code \"#{move.function_code}\"" if move.function_code && move.function_code != "None"
          lines << "  m.effect_chance #{move.effect_chance}" if move.effect_chance && move.effect_chance > 0
          lines << "  m.makes_contact" if move.contact?
          lines << "  m.sound_based" if move.sound_move?
          lines << "  m.punching" if move.punching_move?
          lines << "  m.high_crit_ratio" if move.high_critical_hit_rate?
          lines << "  m.description \"#{escape_string(move.description)}\""
          lines << "end"
          lines << ""
        end
        
        File.write(output_file, lines.join("\n"))
      end
      
      SCScripts.log("Migrated moves to #{output_path}/Moves/")
    rescue => e
      SCScripts.error("Failed to migrate moves: #{e.message}")
    end
    
    #---------------------------------------------------------------------------
    # Migrate items.txt
    #---------------------------------------------------------------------------
    def self.migrate_items(output_path)
      return unless defined?(GameData::Item)
      
      # Split by pocket
      items_by_pocket = {}
      
      GameData::Item.each do |item|
        pocket = item.pocket || 1
        items_by_pocket[pocket] ||= []
        items_by_pocket[pocket] << item
      end
      
      pocket_names = {
        1 => "Items",
        2 => "Medicine",
        3 => "PokeBalls",
        4 => "TMs_HMs",
        5 => "Berries",
        6 => "Mail",
        7 => "BattleItems",
        8 => "KeyItems"
      }
      
      items_by_pocket.each do |pocket, items|
        pocket_name = pocket_names[pocket] || "Pocket#{pocket}"
        output_file = "#{output_path}/Items/#{pocket_name}.rb"
        FileUtils.mkdir_p(File.dirname(output_file))
        
        lines = []
        lines << "#" + "=" * 77
        lines << "# #{pocket_name} - Migrated from PBS"
        lines << "#" + "=" * 77
        lines << ""
        
        items.each do |item|
          lines << "GameData::Item.define :#{item.id} do |i|"
          lines << "  i.name \"#{item.name}\""
          lines << "  i.pocket #{item.pocket}"
          lines << "  i.price #{item.price}" if item.price && item.price > 0
          lines << "  i.field_use :#{item.field_use}" if item.field_use
          lines << "  i.battle_use :#{item.battle_use}" if item.battle_use
          lines << "  i.teaches :#{item.move}" if item.move
          lines << "  i.not_consumable" unless item.consumable?
          lines << "  i.description \"#{escape_string(item.description)}\""
          lines << "end"
          lines << ""
        end
        
        File.write(output_file, lines.join("\n"))
      end
      
      SCScripts.log("Migrated items to #{output_path}/Items/")
    rescue => e
      SCScripts.error("Failed to migrate items: #{e.message}")
    end
    
    #---------------------------------------------------------------------------
    # Migrate pokemon.txt
    #---------------------------------------------------------------------------
    def self.migrate_pokemon(output_path)
      return unless defined?(GameData::Species)
      
      # Split into files by generation or dex number ranges
      GameData::Species.each do |species|
        next if species.form > 0  # Skip forms for now
        
        dex_num = species.id_number || 0
        gen = get_generation(dex_num)
        
        output_file = "#{output_path}/Pokemon/Gen#{gen}/#{species.id}.rb"
        FileUtils.mkdir_p(File.dirname(output_file))
        
        lines = []
        lines << "#" + "=" * 77
        lines << "# #{species.name} (##{dex_num})"
        lines << "#" + "=" * 77
        lines << ""
        lines << "GameData::Species.define :#{species.id} do |pkmn|"
        lines << "  pkmn.name \"#{species.name}\""
        
        # Types
        types = species.types.map { |t| ":#{t}" }.join(", ")
        lines << "  pkmn.types #{types}"
        
        # Base stats
        if species.base_stats
          stats = species.base_stats
          lines << "  pkmn.base_stats hp: #{stats[:HP]}, attack: #{stats[:ATTACK]}, defense: #{stats[:DEFENSE]},"
          lines << "                  sp_atk: #{stats[:SPECIAL_ATTACK]}, sp_def: #{stats[:SPECIAL_DEFENSE]}, speed: #{stats[:SPEED]}"
        end
        
        # Abilities
        if species.abilities && !species.abilities.empty?
          abilities = species.abilities.map { |a| ":#{a}" }.join(", ")
          lines << "  pkmn.abilities #{abilities}"
        end
        
        if species.hidden_abilities && !species.hidden_abilities.empty?
          hidden = species.hidden_abilities.map { |a| ":#{a}" }.join(", ")
          lines << "  pkmn.hidden_abilities #{hidden}"
        end
        
        # Other properties
        lines << "  pkmn.gender_ratio :#{species.gender_ratio}" if species.gender_ratio
        lines << "  pkmn.growth_rate :#{species.growth_rate}" if species.growth_rate
        lines << "  pkmn.base_exp #{species.base_exp}" if species.base_exp
        lines << "  pkmn.catch_rate #{species.catch_rate}" if species.catch_rate
        lines << "  pkmn.happiness #{species.happiness}" if species.happiness
        
        # Egg groups
        if species.egg_groups && !species.egg_groups.empty?
          groups = species.egg_groups.map { |g| ":#{g}" }.join(", ")
          lines << "  pkmn.egg_groups #{groups}"
        end
        
        lines << "  pkmn.hatch_steps #{species.hatch_steps}" if species.hatch_steps
        lines << "  pkmn.height #{species.height}" if species.height
        lines << "  pkmn.weight #{species.weight}" if species.weight
        lines << "  pkmn.color :#{species.color}" if species.color
        lines << "  pkmn.shape :#{species.shape}" if species.shape
        lines << "  pkmn.category \"#{species.category}\"" if species.category
        lines << "  pkmn.pokedex_entry \"#{escape_string(species.pokedex_entry)}\""
        
        # Level-up moves
        if species.moves && !species.moves.empty?
          lines << ""
          lines << "  pkmn.moves do |m|"
          species.moves.each do |level, move|
            lines << "    m.at #{level}, :#{move}"
          end
          lines << "  end"
        end
        
        # Evolutions
        if species.evolutions && !species.evolutions.empty?
          lines << ""
          lines << "  pkmn.evolutions do |evo|"
          species.evolutions.each do |evolution|
            species_id, method, param = evolution
            if param
              lines << "    evo.to :#{species_id}, method: :#{method}, param: #{param.inspect}"
            else
              lines << "    evo.to :#{species_id}, method: :#{method}"
            end
          end
          lines << "  end"
        end
        
        lines << "end"
        
        File.write(output_file, lines.join("\n"))
      end
      
      SCScripts.log("Migrated Pokemon to #{output_path}/Pokemon/")
    rescue => e
      SCScripts.error("Failed to migrate Pokemon: #{e.message}")
    end
    
    #---------------------------------------------------------------------------
    # Migrate trainers.txt
    #---------------------------------------------------------------------------
    def self.migrate_trainers(output_path)
      return unless defined?(GameData::Trainer)
      
      output_file = "#{output_path}/Trainers/AllTrainers.rb"
      FileUtils.mkdir_p(File.dirname(output_file))
      
      lines = []
      lines << "#" + "=" * 77
      lines << "# Trainer Definitions - Migrated from PBS"
      lines << "#" + "=" * 77
      lines << ""
      
      GameData::Trainer.each do |trainer|
        key = "#{trainer.trainer_type}_#{trainer.name}_#{trainer.version}"
        
        lines << "GameData::Trainer.define \"#{key}\" do |t|"
        lines << "  t.trainer_type :#{trainer.trainer_type}"
        lines << "  t.name \"#{trainer.name}\""
        lines << "  t.version #{trainer.version}" if trainer.version > 0
        lines << "  t.lose_text \"#{escape_string(trainer.lose_text)}\"" if trainer.lose_text
        
        if trainer.party && !trainer.party.empty?
          lines << ""
          lines << "  t.party do |team|"
          trainer.party.each do |poke|
            pokemon_line = "    team.add :#{poke.species}, #{poke.level}"
            extras = []
            extras << "item: :#{poke.item}" if poke.item
            extras << "ability: :#{poke.ability}" if poke.ability
            extras << "nature: :#{poke.nature}" if poke.nature
            extras << "moves: [#{poke.moves.map { |m| ":#{m}" }.join(', ')}]" if poke.moves && !poke.moves.empty?
            
            if extras.any?
              pokemon_line += ", #{extras.join(', ')}"
            end
            
            lines << pokemon_line
          end
          lines << "  end"
        end
        
        lines << "end"
        lines << ""
      end
      
      File.write(output_file, lines.join("\n"))
      SCScripts.log("Migrated trainers to #{output_file}")
    rescue => e
      SCScripts.error("Failed to migrate trainers: #{e.message}")
    end
    
    #---------------------------------------------------------------------------
    # Migrate encounters.txt
    #---------------------------------------------------------------------------
    def self.migrate_encounters(output_path)
      return unless defined?(GameData::Encounter)
      
      GameData::Encounter.each_of_version(0) do |encounter|
        map_id = encounter.map
        map_name = encounter.map ? "Map#{encounter.map}" : "Unknown"
        
        output_file = "#{output_path}/Maps/Encounters/#{map_name}_Encounters.rb"
        FileUtils.mkdir_p(File.dirname(output_file))
        
        lines = []
        lines << "#" + "=" * 77
        lines << "# Encounters for #{map_name}"
        lines << "#" + "=" * 77
        lines << ""
        lines << "GameData::MapEncounter.define :#{map_name.downcase}_encounters do |enc|"
        lines << "  enc.map_id #{map_id}"
        
        encounter.types.each do |enc_type, slots|
          next unless slots && !slots.empty?
          
          lines << ""
          lines << "  enc.#{enc_type.to_s.downcase} do |slot|"
          
          slots.each do |slot_data|
            species, min_level, max_level = slot_data
            if min_level == max_level
              lines << "    slot.encounter :#{species}, #{min_level}"
            else
              lines << "    slot.encounter :#{species}, #{min_level}..#{max_level}"
            end
          end
          
          lines << "  end"
        end
        
        lines << "end"
        
        File.write(output_file, lines.join("\n"))
      end
      
      SCScripts.log("Migrated encounters to #{output_path}/Maps/Encounters/")
    rescue => e
      SCScripts.error("Failed to migrate encounters: #{e.message}")
    end
    
    #---------------------------------------------------------------------------
    # Helper methods
    #---------------------------------------------------------------------------
    def self.escape_string(str)
      return "" unless str
      str.to_s.gsub('"', '\\"').gsub("\n", "\\n")
    end
    
    def self.get_generation(dex_num)
      case dex_num
      when 1..151   then 1
      when 152..251 then 2
      when 252..386 then 3
      when 387..493 then 4
      when 494..649 then 5
      when 650..721 then 6
      when 722..809 then 7
      when 810..905 then 8
      else 9
      end
    end
  end
end

#===============================================================================
# Debug Menu Integration
#===============================================================================
module SCScripts
  module MigratorDebug
    def self.add_to_debug_menu
      return unless defined?(MenuHandlers)
      
      MenuHandlers.add(:debug_menu, :sc_migrate_pbs, {
        "name" => "Migrate PBS to Scripts",
        "parent" => :main,
        "description" => "Convert all PBS files to Ruby scripts",
        "effect" => proc {
          if pbConfirmMessage("This will create Ruby script files from your PBS data.\nContinue?")
            SCScripts::PBSMigrator.migrate_all
            pbMessage("Migration complete! Check Data/Scripts/ for generated files.")
          end
        }
      })
    end
  end
end
