#===============================================================================
# Shattered Crowns Script System - Cutscenes/Events DSL
#===============================================================================
# Provides a clean DSL for defining cutscenes and scripted events.
#===============================================================================

module GameData
  #=============================================================================
  # Cutscene - DSL for scripted sequences
  #=============================================================================
  class Cutscene < ScriptBase
    @cutscenes = {}
    @played_history = []  # Track which cutscenes have been played
    
    class << self
      attr_accessor :cutscenes, :played_history
    end
    
    #---------------------------------------------------------------------------
    # Define a cutscene
    # Usage: Cutscene.define :intro_scene do |scene| ... end
    # Usage: Cutscene.define :intro_scene do |scene, event_id: nil| ... end
    #---------------------------------------------------------------------------
    def self.define(name, &block)
      @cutscenes[name] = block
      SCScripts.log("Registered cutscene: #{name}")
    end
    
    #---------------------------------------------------------------------------
    # Play a cutscene by name
    # Usage: GameData::Cutscene.play(:intro_scene)
    # Usage: GameData::Cutscene.play(:intro_scene, event_id: 5)
    # Options: auto_save: true/false (saves before playing)
    #---------------------------------------------------------------------------
    def self.play(name, auto_save: false, **params)
      # Story Choice Mode Auto-Dispatch
      # If Choice Mode is on, check if a "_choice" variant exists (e.g., :intro_scene_choice)
      if defined?(StoryChoices) && StoryChoices.enabled?
        choice_name = "#{name}_choice".to_sym
        if @cutscenes.key?(choice_name)
          original_name = name
          name = choice_name
          SCScripts.log("Story Choice Mode: Redirecting '#{original_name}' to '#{choice_name}'")
        end
      end

      cutscene_block = @cutscenes[name]
      unless cutscene_block
        SCScripts.log("ERROR: Cutscene '#{name}' not found!")
        return false
      end
      
      # Auto-save before important cutscenes
      if auto_save && $game_system && $game_map
        pbSave
        pbMessage("Game saved.")
      end
      
      # Add to history
      @played_history << { name: name, time: Time.now } unless @played_history.any? { |h| h[:name] == name }
      
      # Create builder and execute with parameters
      builder = CutsceneBuilder.new(name)
      cutscene_block.call(builder, **params)
      builder.execute
      true
    end
    
    #---------------------------------------------------------------------------
    # Check if cutscene exists
    #---------------------------------------------------------------------------
    def self.exists?(name)
      @cutscenes.key?(name)
    end
    
    #---------------------------------------------------------------------------
    # Check if cutscene has been played this session
    #---------------------------------------------------------------------------
    def self.played?(name)
      @played_history.any? { |h| h[:name] == name }
    end
    
    #---------------------------------------------------------------------------
    # Get list of all registered cutscenes
    #---------------------------------------------------------------------------
    def self.list_all
      @cutscenes.keys.sort
    end
    
    #---------------------------------------------------------------------------
    # Get count of all cutscenes
    #---------------------------------------------------------------------------
    def self.count
      @cutscenes.size
    end
    
    #---------------------------------------------------------------------------
    # Get play history
    #---------------------------------------------------------------------------
    def self.history
      @played_history
    end
    
    #---------------------------------------------------------------------------
    # Clear history (for new game)
    #---------------------------------------------------------------------------
    def self.clear_history
      @played_history = []
    end
    
    #---------------------------------------------------------------------------
    # CUTSCENE GALLERY - Replay cutscenes from menu
    #---------------------------------------------------------------------------
    def self.open_gallery
      # Get all cutscenes that have been played
      available = @played_history.map { |h| h[:name] }
      
      if available.empty?
        pbMessage("No cutscenes unlocked yet.")
        return
      end
      
      # Build choice list
      names = available.map { |n| n.to_s.gsub('_', ' ').split.map(&:capitalize).join(' ') }
      names << "Cancel"
      
      loop do
        choice = pbShowCommands(nil, names, names.length - 1)
        break if choice == names.length - 1 || choice < 0
        
        # Replay the selected cutscene
        selected_name = available[choice]
        pbMessage("Replaying: #{names[choice]}")
        play(selected_name)
      end
    end
    
    #---------------------------------------------------------------------------
    # Debug: List all cutscenes in console
    #---------------------------------------------------------------------------
    def self.debug_list
      echoln "=== REGISTERED CUTSCENES (#{count}) ==="
      list_all.each_with_index do |name, i|
        played_marker = played?(name) ? "[✓]" : "[ ]"
        echoln "#{i+1}. #{played_marker} #{name}"
      end
      echoln "==================================="
    end
  end

  
  #=============================================================================
  # CutsceneBuilder - Builds cutscene sequences
  #=============================================================================
  class CutsceneBuilder
    attr_reader :name, :steps
    
    def initialize(name)
      @name = name
      @steps = []
      @variables = {}
    end
    
    #---------------------------------------------------------------------------
    # Step types
    #---------------------------------------------------------------------------
    
    # Show dialogue
    def say(speaker, text, options = {})
      @steps << { type: :dialogue, speaker: speaker, text: text, options: options }
    end
    
    # Show message (no speaker)
    def message(text)
      @steps << { type: :message, text: text }
    end
    
    # Move an event/character
    def move(target, route, wait: true)
      @steps << { type: :move, target: target, route: route, wait: wait }
    end
    
    # Wait for time
    def wait(frames)
      @steps << { type: :wait, frames: frames }
    end
    
    # Fade screen
    def fade_out(duration = 8)
      @steps << { type: :fade_out, duration: duration }
    end
    
    def fade_in(duration = 8)
      @steps << { type: :fade_in, duration: duration }
    end
    
    # Play sound effect
    def play_se(filename, volume = 80, pitch = 100)
      @steps << { type: :play_se, filename: filename, volume: volume, pitch: pitch }
    end
    
    # Play background music
    def play_bgm(filename, volume = 100, pitch = 100)
      @steps << { type: :play_bgm, filename: filename, volume: volume, pitch: pitch }
    end
    
    # Stop music
    def stop_bgm(fadeout = 0)
      @steps << { type: :stop_bgm, fadeout: fadeout }
    end
    
    # Change map
    def transfer(map_id, x, y, direction = nil)
      @steps << { type: :transfer, map_id: map_id, x: x, y: y, direction: direction }
    end
    
    # Set switch
    def set_switch(switch_id, value = true)
      @steps << { type: :set_switch, switch_id: switch_id, value: value }
    end
    
    # Set variable
    def set_variable(var_id, value)
      @steps << { type: :set_variable, var_id: var_id, value: value }
    end
    
    # Conditional block
    def condition(check, &block)
      builder = CutsceneBuilder.new("#{@name}_condition")
      yield(builder) if block_given?
      @steps << { type: :condition, check: check, sub_steps: builder.steps }
    end
    
    # Run custom Ruby code
    def script(&block)
      @steps << { type: :script, block: block }
    end
    
    # Show choice
    def choice(options, variable: nil, &block)
      @steps << { type: :choice, options: options, variable: variable, block: block }
    end
    
    # Give Pokemon
    def give_pokemon(species, level, options = {})
      @steps << { type: :give_pokemon, species: species, level: level, options: options }
    end
    
    # Give item
    def give_item(item, quantity = 1)
      @steps << { type: :give_item, item: item, quantity: quantity }
    end
    
    # Heal party
    def heal_party
      @steps << { type: :heal_party }
    end
    
    # Start battle with optional win/lose handling
    # Usage: 
    #   scene.trainer_battle :RIVAL1, "Gary", 0
    #   scene.trainer_battle :RIVAL1, "Gary", 0 do |won|
    #     if won
    #       # win messages
    #     else
    #       # lose messages
    #     end
    #   end
    def trainer_battle(trainer_type, name, version = 0, &block)
      @steps << { type: :trainer_battle, trainer_type: trainer_type, name: name, version: version, block: block }
    end
    
    # Check last battle result
    def battle_won?
      @last_battle_won == true
    end
    
    def battle_lost?
      @last_battle_won == false
    end

    
    def wild_battle(species, level, options = {})
      @steps << { type: :wild_battle, species: species, level: level, options: options }
    end

    #---------------------------------------------------------------------------
    # Animations & Expressions
    #---------------------------------------------------------------------------
    
    # Show emotion bubble (Exclamation, Question, etc.)
    # emotion: :exclamation, :question, :ellipses, :heart, :anger, :sweat, :idea, :music
    def show_emotion(target, emotion, wait: true)
      @steps << { type: :show_emotion, target: target, emotion: emotion, wait: wait }
    end
    
    # Play specific animation ID from database
    def show_animation(target, animation_id, wait: true)
      @steps << { type: :show_animation, target: target, animation_id: animation_id, wait: wait }
    end
    
    # Jump
    def jump(target, x_plus, y_plus, wait: true)
       @steps << { type: :jump, target: target, x: x_plus, y: y_plus, wait: wait }
    end

    #---------------------------------------------------------------------------
    # Camera & Visual Effects
    #---------------------------------------------------------------------------
    
    # Shake screen
    # power: 1-9 (intensity)
    # speed: 1-9 (speed)
    # duration: frames
    def camera_shake(power, duration, speed = 5)
      @steps << { type: :camera_shake, power: power, speed: speed, duration: duration }
    end
    
    # Flash screen
    # duration: frames
    # color: Color object usually. We can default to white.
    def camera_flash(duration, color = nil)
      @steps << { type: :camera_flash, duration: duration, color: color }
    end
    
    # Tint screen
    # tone: Tone object or symbol (:sepia, :dark, :night, :reset)
    # duration: frames
    def camera_tint(tone, duration)
      @steps << { type: :camera_tint, tone: tone, duration: duration }
    end
    
    # Pan camera (Scroll Map)
    # direction: 2, 4, 6, 8 (numpad)
    # distance: number of tiles
    # speed: 1-6
    def camera_pan(direction, distance, speed)
       @steps << { type: :camera_pan, direction: direction, distance: distance, speed: speed }
    end

    # Pan camera to event (Complex, simulates scroll)
    def camera_pan_to_event(target, speed = 4)
      @steps << { type: :camera_pan_to_event, target: target, speed: speed }
    end
    
    # Reset camera to player (center)
    def camera_reset(speed = 4)
      @steps << { type: :camera_reset, speed: speed }
    end
    
    # Erase event (temporary until map reload)
    def remove_event(target)
      @steps << { type: :remove_event, target: target }
    end
    
    # Transparent/Opacity
    def set_event_opacity(target, opacity)
      @steps << { type: :set_event_opacity, target: target, opacity: opacity }
    end
    
    # Alias for convenience (if used mistakenly as show_event)
    def show_event(target)
      set_event_opacity(target, 255)
    end
    
    #---------------------------------------------------------------------------
    # Execute the cutscene
    #---------------------------------------------------------------------------
    def execute
      # Save current BGM to restore after cutscene
      @saved_bgm = $game_system.playing_bgm
      
      # Pre-process steps to chain consecutive messages
      @steps.each_with_index do |step, i|
        # Only process text steps
        next unless [:message, :dialogue].include?(step[:type])
        
        # Look ahead for the next step
        next_step = @steps[i + 1]
        next unless next_step
        
        # If next step is also text, chain them
        if [:message, :dialogue].include?(next_step[:type])
          # Ensure we don't modify frozen strings or create duplicates
          text = step[:text].is_a?(String) ? step[:text].dup : step[:text].to_s
          
          # Add \1 if it's not already there
          unless text.end_with?("\\1")
            text += "\\1"
            step[:text] = text
          end
        end
      end
      
      @steps.each do |step|
        execute_step(step)
      end
      
      # Restore previous BGM if we changed it
      if @saved_bgm && @bgm_changed
        pbBGMPlay(@saved_bgm)
      end
    end
    
    private
    
    def execute_step(step)
      case step[:type]
      when :dialogue
        # Just show the text - use scene.message if you don't want speaker handling
        # The speaker parameter is stored but PE's message system handles display
        pbMessage(step[:text])
        
      when :message
        pbMessage(step[:text])
        
      when :wait
        (step[:frames] || 8).times { pbUpdateSceneMap }
        
      when :fade_out
        pbFadeOutIn(step[:duration]) { }
        
      when :fade_in
        # Usually handled by fade_out block
        
      when :play_se
        pbSEPlay(step[:filename], step[:volume], step[:pitch])
        
      when :play_bgm
        # Just use filename - PE finds the file automatically
        pbBGMPlay(step[:filename])
        @bgm_changed = true
        
      when :stop_bgm
        pbBGMFade(step[:fadeout])
        
      when :transfer
        pbFadeOutIn {
          $game_temp.player_new_map_id = step[:map_id]
          $game_temp.player_new_x = step[:x]
          $game_temp.player_new_y = step[:y]
          $game_temp.player_new_direction = step[:direction] if step[:direction]
          $scene.transfer_player
        }
        
      when :set_switch
        $game_switches[step[:switch_id]] = step[:value]
        $game_map.need_refresh = true
        
      when :set_variable
        $game_variables[step[:var_id]] = step[:value]
        
      when :condition
        if step[:check].call
          step[:sub_steps].each { |s| execute_step(s) }
        end
        
      when :script
        step[:block].call if step[:block]
        
      when :choice
        choices = step[:options]
        # Use pbShowCommands for proper choice menu
        result = pbShowCommands(nil, choices, -1)
        $game_variables[step[:variable]] = result if step[:variable]
        step[:block].call(result) if step[:block]
        
      when :give_pokemon
        pbAddPokemon(step[:species], step[:level])
        
      when :give_item
        pbReceiveItem(step[:item], step[:quantity])
        
      when :heal_party
        $player.party.each { |p| p.heal }
        
      when :trainer_battle
        result = TrainerBattle.start(step[:trainer_type], step[:name], step[:version])
        # result is true if player won, false if lost/ran
        @last_battle_won = (result == 1) # 1 = win, 2 = loss, 3 = draw, 4 = run, 5 = items
        step[:block].call(@last_battle_won) if step[:block]

        
      when :wild_battle
        pbWildBattle(step[:species], step[:level])

      when :show_emotion
        # Resolve target
        target = nil
        if step[:target].is_a?(Symbol)
           target = (step[:target] == :PLAYER) ? $game_player : $game_map.events.values.find { |e| e.name == step[:target].to_s }
        elsif step[:target].is_a?(Integer)
           target = $game_map.events[step[:target]]
        end
        
        if target
          # Map symbols to standard Essentials/RPG Maker animation IDs or balloon IDs
          # This mapping depends on the specific game's database.
          # Providing defaults based on common Essentials setup or letting user specify ID.
          emote_id = case step[:emotion]
                     when :exclamation then 1
                     when :question    then 2
                     when :ellipses    then 3
                     when :heart       then 4
                     when :anger       then 5
                     when :sweat       then 6
                     when :idea        then 7
                     when :music       then 8
                     else 1
                     end
          
          # Use pbExclaim or showBalloon if available, or just animation
          # PbExclaim is often defined in Essentials for player/events
          if defined?(pbExclaim)
             pbExclaim(target, emote_id)
          else
             # Fallback to standard animation if no exclaim system
             # Assuming standard animation IDs for emotions are often 1-8
             target.animation_id = emote_id
          end
          
          if step[:wait]
             # Wait for animation duration (usually 8-15 frames for balloons)
             20.times { Graphics.update; pbUpdateSceneMap }
          end
        end

      when :show_animation
         target = nil
         if step[:target].is_a?(Symbol)
            target = (step[:target] == :PLAYER) ? $game_player : $game_map.events.values.find { |e| e.name == step[:target].to_s }
         elsif step[:target].is_a?(Integer)
            target = $game_map.events[step[:target]]
         end
         
         if target
           target.animation_id = step[:animation_id]
           if step[:wait]
             while target.animation_id != 0
               Graphics.update
               pbUpdateSceneMap
             end
           end
         end

      when :jump
         target = nil
         if step[:target].is_a?(Symbol)
            target = (step[:target] == :PLAYER) ? $game_player : $game_map.events.values.find { |e| e.name == step[:target].to_s }
         elsif step[:target].is_a?(Integer)
            target = $game_map.events[step[:target]]
         end
         
         if target
           # Use move route for jump
           route = [PBMoveRoute::JUMP, step[:x], step[:y]]
           pbMoveRoute(target, route)
           
           if step[:wait]
             while target.jumping?
               Graphics.update
               pbUpdateSceneMap
             end
           end
         end

      when :camera_shake
        $game_screen.start_shake(step[:power], step[:speed], step[:duration])
        # Wait for shake? Usually no, but we can if we want.
        
      when :camera_flash
        color = step[:color] || Color.new(255, 255, 255, 255)
        $game_screen.start_flash(color, step[:duration])
        
      when :camera_tint
        tone = step[:tone]
        if tone.is_a?(Symbol)
          case tone
          when :reset, :normal then tone = Tone.new(0, 0, 0, 0)
          when :sepia          then tone = Tone.new(30, -30, -60, 0) # Brownish
          when :dark           then tone = Tone.new(-68, -68, -68, 0)
          when :night          then tone = Tone.new(-100, -100, -100, 20)
          when :red            then tone = Tone.new(100, -50, -50, 0)
          when :white          then tone = Tone.new(150, 150, 150, 0) # Intense light
          else tone = Tone.new(0,0,0,0)
          end
        end
        # Ensure it's a Tone
        tone = Tone.new(0,0,0,0) unless tone.is_a?(Tone)
        $game_screen.start_tone_change(tone, step[:duration])
        
      when :camera_pan
        $game_map.start_scroll(step[:direction], step[:distance], step[:speed])
        while $game_map.scrolling?
          Graphics.update
          pbUpdateSceneMap
        end
        
      when :camera_pan_to_event
        # Resolve target
        target = nil
        if step[:target].is_a?(Symbol) && step[:target] == :PLAYER
           target = $game_player
        elsif step[:target].is_a?(Integer)
           target = $game_map.events[step[:target]]
        elsif step[:target].is_a?(Symbol)
           # Try to find event with name (slow, but works)
           target = $game_map.events.values.find { |e| e.name == step[:target].to_s }
        end
        
        if target
          # Calculate difference from center
          # This is tricky because standard scroll doesn't "pan to". 
          # We'll rely on the fact that if we aren't centered, we scroll?
          # Actually, Essentials forces center on player. 
          # To pan away, we must scroll.
          # To pan BACK, we scroll back. 
          # Simple implementation: Scroll towards target relative to player.
          
          dx = target.x - $game_player.x
          dy = target.y - $game_player.y
          
          # Scroll X
          if dx != 0
            dir = dx > 0 ? 6 : 4
            $game_map.start_scroll(dir, dx.abs, step[:speed])
            while $game_map.scrolling?; Graphics.update; pbUpdateSceneMap; end
          end
          
          # Scroll Y
          if dy != 0
            dir = dy > 0 ? 2 : 8
            $game_map.start_scroll(dir, dy.abs, step[:speed])
            while $game_map.scrolling?; Graphics.update; pbUpdateSceneMap; end
          end
        end

      when :camera_reset
        # Just Center on player?
        # If we scrolled away, we need to scroll back?
        # RPG Maker centers on player if you scroll back. 
        # Or we can just snap.
        # But for smooth, we might need a "return" logic which is hard if we don't track offset.
        # For now, let's just snap to player (update map display).
        $game_player.center($game_player.x, $game_player.y)
        
      when :remove_event
        target = nil
        if step[:target].is_a?(Integer)
           target = $game_map.events[step[:target]]
        elsif step[:target].is_a?(Symbol)
           target = $game_map.events.values.find { |e| e.name == step[:target].to_s }
        end
        target.erase if target
        
      when :set_event_opacity
        target = nil
        if step[:target].is_a?(Integer)
           target = $game_map.events[step[:target]]
        elsif step[:target].is_a?(Symbol)
           target = $game_map.events.values.find { |e| e.name == step[:target].to_s }
        end
        target.opacity = step[:opacity] if target
        
      when :move
        # Resolve target
        target = nil
        if step[:target].is_a?(Symbol)
          if step[:target] == :PLAYER
            target = $game_player
          # Add other symbols if needed (e.g. :PARTNER)
          end
        elsif step[:target].is_a?(Integer)
          target = $game_map.events[step[:target]]
        end
        
        if target
          # Build move route
          route = step[:route]
          if route.is_a?(Array)
            # Convert symbols to MoveRoute commands
            converted_route = []
            route.each do |cmd|
              if cmd.is_a?(Symbol)
                # Normalize to lowercase symbol to support :STEP_UP and :step_up
                cmd_norm = cmd.to_s.downcase.to_sym
                
                case cmd_norm
                when :step_down  then converted_route << PBMoveRoute::DOWN
                when :step_left  then converted_route << PBMoveRoute::LEFT
                when :step_right then converted_route << PBMoveRoute::RIGHT
                when :step_up    then converted_route << PBMoveRoute::UP
                when :step_lower_left  then converted_route << PBMoveRoute::LOWER_LEFT
                when :step_lower_right then converted_route << PBMoveRoute::LOWER_RIGHT
                when :step_upper_left  then converted_route << PBMoveRoute::UPPER_LEFT
                when :step_upper_right then converted_route << PBMoveRoute::UPPER_RIGHT
                when :move_random      then converted_route << PBMoveRoute::RANDOM
                when :step_toward_player then converted_route << PBMoveRoute::TOWARD_PLAYER
                when :step_away_from_player then converted_route << PBMoveRoute::AWAY_FROM_PLAYER
                when :step_forward     then converted_route << PBMoveRoute::FORWARD
                when :step_backward    then converted_route << PBMoveRoute::BACKWARD
                when :turn_down  then converted_route << PBMoveRoute::TURN_DOWN
                when :turn_left  then converted_route << PBMoveRoute::TURN_LEFT
                when :turn_right then converted_route << PBMoveRoute::TURN_RIGHT
                when :turn_up    then converted_route << PBMoveRoute::TURN_UP
                when :turn_90_right then converted_route << PBMoveRoute::TURN_RIGHT90
                when :turn_90_left  then converted_route << PBMoveRoute::TURN_LEFT90
                when :turn_180   then converted_route << PBMoveRoute::TURN180
                when :turn_random then converted_route << PBMoveRoute::TURN_RANDOM
                when :turn_toward_player then converted_route << PBMoveRoute::TURN_TOWARD_PLAYER
                when :turn_away_from_player then converted_route << PBMoveRoute::TURN_AWAY_FROM_PLAYER
                when :through_on  then converted_route << PBMoveRoute::THROUGH_ON
                when :through_off then converted_route << PBMoveRoute::THROUGH_OFF
                when :always_on_top_on  then converted_route << PBMoveRoute::ALWAYS_ON_TOP_ON
                when :always_on_top_off then converted_route << PBMoveRoute::ALWAYS_ON_TOP_OFF
                when :walk_anim_on  then converted_route << PBMoveRoute::WALK_ANIME_ON
                when :walk_anim_off then converted_route << PBMoveRoute::WALK_ANIME_OFF
                when :step_anim_on  then converted_route << PBMoveRoute::STEP_ANIME_ON
                when :step_anim_off then converted_route << PBMoveRoute::STEP_ANIME_OFF
                when :dir_fix_on    then converted_route << PBMoveRoute::DIRECTION_FIX_ON
                when :dir_fix_off   then converted_route << PBMoveRoute::DIRECTION_FIX_OFF
                else
                  SCScripts.log("WARNING: Unknown move route symbol: #{cmd}")
                end
              elsif cmd.is_a?(Array) # For commands with params like [:wait, 20]
                 op = cmd[0]
                 param = cmd[1]
                 case op
                 when :wait
                   converted_route << PBMoveRoute::WAIT
                   converted_route << param
                 when :switch_on
                   converted_route << PBMoveRoute::SWITCH_ON
                   converted_route << param
                 when :switch_off
                   converted_route << PBMoveRoute::SWITCH_OFF
                   converted_route << param
                 when :change_speed
                   converted_route << PBMoveRoute::CHANGE_SPEED
                   converted_route << param
                 when :change_freq
                    converted_route << PBMoveRoute::CHANGE_FREQUENCY
                    converted_route << param
                 when :opacity
                    converted_route << PBMoveRoute::OPACITY
                    converted_route << param
                 when :play_se
                    converted_route << PBMoveRoute::PLAY_SE
                    converted_route << param
                 end
              else
                converted_route << cmd
              end
            end
            
            pbMoveRoute(target, converted_route)
          elsif route.is_a?(RPG::MoveRoute)
            target.force_move_route(route)
          end
          
          # Wait for move completion if requested
          if step[:wait]
            while target.moving? || target.move_route_forcing
              pbUpdateSceneMap
              Graphics.update
            end
          end
        else
          SCScripts.log("WARNING: Move target '#{step[:target]}' not found")
        end
      end
    end
  end
end

#===============================================================================
# Reset cutscene history & save/load it with the player save
#===============================================================================
EventHandlers.add(:on_start_new_game, :sc_cutscene_reset_history,
  proc {
    GameData::Cutscene.clear_history if defined?(GameData::Cutscene)
  }
)

SaveData.register(:sc_cutscene_history) do
  ensure_class :Array
  save_value { GameData::Cutscene.history.dup rescue [] }
  load_value { |value| GameData::Cutscene.played_history = value if defined?(GameData::Cutscene) }
  new_game_value { [] }
end

#===============================================================================
# Short helper functions for event scripts (fits in RPG Maker script box)
#===============================================================================
def pbCutscene(name, **params)
  GameData::Cutscene.play(name, **params)
end

def pbShop(name)
  GameData::Shop.open(name)
end

def pbQuest(action, name)
  case action
  when :start then GameData::Quest.start(name)
  when :complete then GameData::Quest.complete(name)
  when :active then GameData::Quest.active?(name)
  end
end

