#===============================================================================
# Shattered Crowns Script System - Debug Data Writer
#===============================================================================
# Intercepts Debug menu changes and writes them to Ruby files instead of PBS.
# This ensures changes made in Debug mode persist in the script system.
#===============================================================================

module SCScripts
  module DebugWriter
    #---------------------------------------------------------------------------
    # Write a single Pokemon entry to Ruby file
    #---------------------------------------------------------------------------
    def self.write_pokemon(id, data, file_path = nil)
      id = id.to_sym
      
      # Determine file path based on primary type
      if file_path.nil?
        primary_type = (data[:types]&.first || :NORMAL).to_s.capitalize
        file_path = "#{SCScripts::POKEMON_SCRIPTS_PATH}/#{primary_type}_Pokemon.rb"
      end
      
      entry = generate_pokemon_entry(id, data)
      append_or_update_entry(file_path, id, entry, "GameData::Species.define :#{id}")
      
      # Update registry
      GameData::ScriptRegistry.register_pokemon(id, data)
      SCScripts.log("Saved Pokemon :#{id} to #{file_path}")
    end
    
    #---------------------------------------------------------------------------
    # Write a Pokemon form entry
    #---------------------------------------------------------------------------
    def self.write_pokemon_form(species, form_num, data, file_path = nil)
      species = species.to_sym
      
      if file_path.nil?
        file_path = "#{SCScripts::POKEMON_SCRIPTS_PATH}/Forms/Custom_Forms.rb"
      end
      
      entry = generate_form_entry(species, form_num, data)
      pattern = "GameData::Species.define_form :#{species}, #{form_num}"
      append_or_update_entry(file_path, "#{species}_#{form_num}", entry, pattern)
      
      GameData::ScriptRegistry.register_pokemon_form(species, form_num, data)
      SCScripts.log("Saved Form :#{species} ##{form_num} to #{file_path}")
    end
    
    #---------------------------------------------------------------------------
    # Write a Move entry
    #---------------------------------------------------------------------------
    def self.write_move(id, data, file_path = nil)
      id = id.to_sym
      
      if file_path.nil?
        move_type = (data[:type] || :NORMAL).to_s.capitalize
        file_path = "#{SCScripts::MOVES_SCRIPTS_PATH}/#{move_type}_Moves.rb"
      end
      
      entry = generate_move_entry(id, data)
      append_or_update_entry(file_path, id, entry, "GameData::Move.define :#{id}")
      
      GameData::ScriptRegistry.register_move(id, data)
      SCScripts.log("Saved Move :#{id} to #{file_path}")
    end
    
    #---------------------------------------------------------------------------
    # Write an Item entry
    #---------------------------------------------------------------------------
    def self.write_item(id, data, file_path = nil)
      id = id.to_sym
      
      if file_path.nil?
        file_path = "#{SCScripts::ITEMS_SCRIPTS_PATH}/Custom_Items.rb"
      end
      
      entry = generate_item_entry(id, data)
      append_or_update_entry(file_path, id, entry, "GameData::Item.define :#{id}")
      
      GameData::ScriptRegistry.register_item(id, data)
      SCScripts.log("Saved Item :#{id} to #{file_path}")
    end
    
    #---------------------------------------------------------------------------
    # Write an Ability entry
    #---------------------------------------------------------------------------
    def self.write_ability(id, data, file_path = nil)
      id = id.to_sym
      
      if file_path.nil?
        file_path = "#{SCScripts::ABILITIES_SCRIPTS_PATH}/Custom_Abilities.rb"
      end
      
      entry = generate_ability_entry(id, data)
      append_or_update_entry(file_path, id, entry, "GameData::Ability.define :#{id}")
      
      GameData::ScriptRegistry.register_ability(id, data)
      SCScripts.log("Saved Ability :#{id} to #{file_path}")
    end
    
    #---------------------------------------------------------------------------
    # Write a Trainer entry
    #---------------------------------------------------------------------------
    def self.write_trainer(type, name, version, data, file_path = nil)
      type = type.to_sym
      
      if file_path.nil?
        file_path = "#{SCScripts::TRAINERS_SCRIPTS_PATH}/Custom_Trainers.rb"
      end
      
      entry = generate_trainer_entry(type, name, version, data)
      key = "#{type}_#{name}_#{version}"
      pattern = "GameData::Trainer.define :#{type}, \"#{name}\", #{version}"
      append_or_update_entry(file_path, key, entry, pattern)
      
      GameData::ScriptRegistry.register_trainer(key, data)
      SCScripts.log("Saved Trainer #{type}/#{name}/#{version} to #{file_path}")
    end
    
    #---------------------------------------------------------------------------
    # Write a TrainerType entry
    #---------------------------------------------------------------------------
    def self.write_trainer_type(id, data, file_path = nil)
      id = id.to_sym
      
      if file_path.nil?
        file_path = "#{SCScripts::TRAINERS_SCRIPTS_PATH}/Custom_TrainerTypes.rb"
      end
      
      entry = generate_trainer_type_entry(id, data)
      append_or_update_entry(file_path, id, entry, "GameData::TrainerType.define :#{id}")
      
      GameData::ScriptRegistry.register_trainer_type(id, data)
      SCScripts.log("Saved TrainerType :#{id} to #{file_path}")
    end
    
    #---------------------------------------------------------------------------
    # Write Encounter data
    #---------------------------------------------------------------------------
    def self.write_encounter(map_id, version, data, file_path = nil)
      if file_path.nil?
        file_path = "#{SCScripts::ENCOUNTERS_SCRIPTS_PATH}/Custom_Encounters.rb"
      end
      
      entry = generate_encounter_entry(map_id, version, data)
      key = "#{map_id}_#{version}"
      pattern = "GameData::Encounter.define #{map_id}, #{version}"
      append_or_update_entry(file_path, key, entry, pattern)
      
      GameData::ScriptRegistry.register_encounter(key, data)
      SCScripts.log("Saved Encounter Map #{map_id} v#{version} to #{file_path}")
    end
    
    #---------------------------------------------------------------------------
    # Write Map Metadata
    #---------------------------------------------------------------------------
    def self.write_map_metadata(map_id, data, file_path = nil)
      if file_path.nil?
        file_path = "#{SCScripts::MAP_SCRIPTS_PATH}/Custom_MapMetadata.rb"
      end
      
      entry = generate_map_metadata_entry(map_id, data)
      pattern = "GameData::MapMetadata.define #{map_id}"
      append_or_update_entry(file_path, map_id.to_s, entry, pattern)
      
      GameData::ScriptRegistry.register_map(map_id, data)
      SCScripts.log("Saved MapMetadata #{map_id} to #{file_path}")
    end
    
    #==========================================================================
    # Entry Generators
    #==========================================================================
    
    def self.generate_pokemon_entry(id, data)
      lines = ["GameData::Species.define :#{id} do |s|"]
      lines << "  s.name          \"#{escape(data[:name])}\"" if data[:name]
      
      if data[:types]&.any?
        types = data[:types].map { |t| ":#{t}" }.join(', ')
        lines << "  s.types         #{types}"
      end
      
      if data[:base_stats]
        bs = data[:base_stats]
        lines << "  s.base_stats    hp: #{bs[:hp]}, attack: #{bs[:attack]}, defense: #{bs[:defense]}, speed: #{bs[:speed]}, sp_atk: #{bs[:sp_atk]}, sp_def: #{bs[:sp_def]}"
      end
      
      lines << "  s.gender_ratio  :#{data[:gender_ratio]}" if data[:gender_ratio]
      lines << "  s.growth_rate   :#{data[:growth_rate]}" if data[:growth_rate]
      lines << "  s.base_exp      #{data[:base_exp]}" if data[:base_exp]
      lines << "  s.catch_rate    #{data[:catch_rate]}" if data[:catch_rate]
      lines << "  s.happiness     #{data[:happiness]}" if data[:happiness]
      
      if data[:abilities]&.any?
        abilities = data[:abilities].map { |a| ":#{a}" }.join(', ')
        lines << "  s.abilities     #{abilities}"
      end
      
      if data[:hidden_abilities]&.any?
        hidden = data[:hidden_abilities].map { |a| ":#{a}" }.join(', ')
        lines << "  s.hidden_abilities #{hidden}"
      end
      
      if data[:moves]&.any?
        lines << "  s.moves do |m|"
        data[:moves].each do |move|
          lines << "    m.at #{move[:level]}, :#{move[:move]}"
        end
        lines << "  end"
      end
      
      if data[:egg_groups]&.any?
        groups = data[:egg_groups].map { |g| ":#{g}" }.join(', ')
        lines << "  s.egg_groups    #{groups}"
      end
      
      lines << "  s.hatch_steps   #{data[:hatch_steps]}" if data[:hatch_steps]
      lines << "  s.height        #{data[:height]}" if data[:height]
      lines << "  s.weight        #{data[:weight]}" if data[:weight]
      lines << "  s.color         :#{data[:color]}" if data[:color]
      lines << "  s.shape         :#{data[:shape]}" if data[:shape]
      lines << "  s.category      \"#{escape(data[:category])}\"" if data[:category]
      lines << "  s.pokedex_entry \"#{escape(data[:pokedex])}\"" if data[:pokedex]
      
      if data[:evolutions]&.any?
        data[:evolutions].each do |evo|
          if evo[:param]
            lines << "  s.evolves_into  :#{evo[:species]}, :#{evo[:method]}, #{evo[:param]}"
          else
            lines << "  s.evolves_into  :#{evo[:species]}, :#{evo[:method]}"
          end
        end
      end
      
      lines << "end"
      lines.join("\n") + "\n\n"
    end
    
    def self.generate_form_entry(species, form_num, data)
      lines = ["GameData::Species.define_form :#{species}, #{form_num} do |f|"]
      lines << "  f.form_name     \"#{escape(data[:form_name])}\"" if data[:form_name]
      
      if data[:types]&.any?
        types = data[:types].map { |t| ":#{t}" }.join(', ')
        lines << "  f.types         #{types}"
      end
      
      if data[:base_stats]
        bs = data[:base_stats]
        lines << "  f.base_stats    hp: #{bs[:hp]}, attack: #{bs[:attack]}, defense: #{bs[:defense]}, speed: #{bs[:speed]}, sp_atk: #{bs[:sp_atk]}, sp_def: #{bs[:sp_def]}"
      end
      
      if data[:abilities]&.any?
        abilities = data[:abilities].map { |a| ":#{a}" }.join(', ')
        lines << "  f.abilities     #{abilities}"
      end
      
      lines << "  f.mega_stone    :#{data[:mega_stone]}" if data[:mega_stone]
      lines << "  f.height        #{data[:height]}" if data[:height]
      lines << "  f.weight        #{data[:weight]}" if data[:weight]
      lines << "end"
      lines.join("\n") + "\n\n"
    end
    
    def self.generate_move_entry(id, data)
      lines = ["GameData::Move.define :#{id} do |m|"]
      lines << "  m.name          \"#{escape(data[:name])}\"" if data[:name]
      lines << "  m.type          :#{data[:type]}" if data[:type]
      lines << "  m.category      :#{data[:category]}" if data[:category]
      lines << "  m.power         #{data[:power]}" if data[:power] && data[:power] > 0
      lines << "  m.accuracy      #{data[:accuracy]}" if data[:accuracy]
      lines << "  m.total_pp      #{data[:pp] || data[:total_pp]}" if data[:pp] || data[:total_pp]
      lines << "  m.target        :#{data[:target]}" if data[:target]
      lines << "  m.priority      #{data[:priority]}" if data[:priority] && data[:priority] != 0
      lines << "  m.function_code \"#{data[:function_code]}\"" if data[:function_code]
      
      if data[:flags]&.any?
        flags = data[:flags].map { |f| ":#{f}" }.join(', ')
        lines << "  m.flags         #{flags}"
      end
      
      lines << "  m.description   \"#{escape(data[:description])}\"" if data[:description]
      lines << "end"
      lines.join("\n") + "\n\n"
    end
    
    def self.generate_item_entry(id, data)
      lines = ["GameData::Item.define :#{id} do |i|"]
      lines << "  i.name        \"#{escape(data[:name])}\"" if data[:name]
      lines << "  i.name_plural \"#{escape(data[:name_plural])}\"" if data[:name_plural]
      lines << "  i.pocket      #{data[:pocket]}" if data[:pocket]
      lines << "  i.price       #{data[:price]}" if data[:price]
      lines << "  i.field_use   :#{data[:field_use]}" if data[:field_use]
      lines << "  i.battle_use  :#{data[:battle_use]}" if data[:battle_use]
      
      if data[:flags]&.any?
        flags = data[:flags].map { |f| ":#{f}" }.join(', ')
        lines << "  i.flags       #{flags}"
      end
      
      lines << "  i.description \"#{escape(data[:description])}\"" if data[:description]
      lines << "end"
      lines.join("\n") + "\n\n"
    end
    
    def self.generate_ability_entry(id, data)
      lines = ["GameData::Ability.define :#{id} do |a|"]
      lines << "  a.name        \"#{escape(data[:name])}\"" if data[:name]
      lines << "  a.description \"#{escape(data[:description])}\"" if data[:description]
      
      if data[:flags]&.any?
        flags = data[:flags].map { |f| ":#{f}" }.join(', ')
        lines << "  a.flags       #{flags}"
      end
      
      lines << "end"
      lines.join("\n") + "\n\n"
    end
    
    def self.generate_trainer_type_entry(id, data)
      lines = ["GameData::TrainerType.define :#{id} do |t|"]
      lines << "  t.name        \"#{escape(data[:name])}\"" if data[:name]
      lines << "  t.gender      :#{data[:gender]}" if data[:gender]
      lines << "  t.base_money  #{data[:base_money]}" if data[:base_money]
      lines << "  t.skill_level #{data[:skill_level]}" if data[:skill_level]
      lines << "end"
      lines.join("\n") + "\n\n"
    end
    
    def self.generate_trainer_entry(type, name, version, data)
      lines = ["GameData::Trainer.define :#{type}, \"#{escape(name)}\", #{version} do |t|"]
      lines << "  t.lose_text \"#{escape(data[:lose_text])}\"" if data[:lose_text]
      
      if data[:items]&.any?
        items = data[:items].map { |i| ":#{i}" }.join(', ')
        lines << "  t.items     #{items}"
      end
      
      data[:pokemon]&.each do |pkmn|
        lines << "  t.pokemon :#{pkmn[:species]}, #{pkmn[:level]} do |p|"
        if pkmn[:moves]&.any?
          moves = pkmn[:moves].map { |m| ":#{m}" }.join(', ')
          lines << "    p.moves    #{moves}"
        end
        lines << "    p.item     :#{pkmn[:item]}" if pkmn[:item]
        lines << "    p.nature   :#{pkmn[:nature]}" if pkmn[:nature]
        lines << "    p.ability  :#{pkmn[:ability]}" if pkmn[:ability]
        lines << "    p.shiny    true" if pkmn[:shiny]
        lines << "  end"
      end
      
      lines << "end"
      lines.join("\n") + "\n\n"
    end
    
    def self.generate_encounter_entry(map_id, version, data)
      lines = ["GameData::Encounter.define #{map_id}, #{version} do |e|"]
      
      data[:encounters]&.each do |type, enc_data|
        lines << "  e.#{type} #{enc_data[:density]} do |enc|"
        enc_data[:pokemon]&.each do |pkmn|
          if pkmn[:min_level] == pkmn[:max_level]
            lines << "    enc.add :#{pkmn[:species]}, #{pkmn[:min_level]}, #{pkmn[:probability]}"
          else
            lines << "    enc.add :#{pkmn[:species]}, #{pkmn[:min_level]}..#{pkmn[:max_level]}, #{pkmn[:probability]}"
          end
        end
        lines << "  end"
      end
      
      lines << "end"
      lines.join("\n") + "\n\n"
    end
    
    def self.generate_map_metadata_entry(map_id, data)
      lines = ["GameData::MapMetadata.define #{map_id} do |m|"]
      lines << "  m.name          \"#{escape(data[:name])}\"" if data[:name]
      lines << "  m.outdoor       true" if data[:outdoor]
      lines << "  m.weather       :#{data[:weather]}, #{data[:weather_chance]}" if data[:weather]
      lines << "  m.bicycle       true" if data[:bicycle]
      lines << "  m.bicycle_always true" if data[:bicycle_always]
      lines << "  m.dark_map      true" if data[:dark_map]
      lines << "  m.safari_map    true" if data[:safari_map]
      lines << "  m.dive_map      #{data[:dive_map]}" if data[:dive_map]
      lines << "end"
      lines.join("\n") + "\n\n"
    end
    
    #==========================================================================
    # File Utilities
    #==========================================================================
    
    def self.append_or_update_entry(file_path, id, entry, pattern)
      ensure_file_exists(file_path)
      
      content = File.read(file_path, encoding: 'UTF-8')
      
      # Check if entry already exists
      if content.include?(pattern)
        # Update existing entry
        # Find the whole block (from pattern to next "end\n\n" or end of file)
        regex = /#{Regexp.escape(pattern)}.*?^end\n\n/m
        if content.match?(regex)
          content.gsub!(regex, entry)
          File.write(file_path, content, encoding: 'UTF-8')
          return :updated
        end
      end
      
      # Append new entry
      File.open(file_path, 'a', encoding: 'UTF-8') do |f|
        f.write("\n") unless content.end_with?("\n")
        f.write(entry)
      end
      :appended
    end
    
    def self.ensure_file_exists(file_path)
      dir = File.dirname(file_path)
      FileUtils.mkdir_p(dir) unless Dir.exist?(dir)
      
      unless File.exist?(file_path)
        header = <<~HEADER
        #===============================================================================
        # Custom Definitions (Debug Generated)
        #===============================================================================
        # Auto-generated by Debug menu. Edit with care.
        #===============================================================================
        
        HEADER
        File.write(file_path, header, encoding: 'UTF-8')
      end
    end
    
    def self.escape(str)
      return '' unless str
      str.to_s.gsub('"', '\\"').gsub("\n", ' ')
    end
  end
end
