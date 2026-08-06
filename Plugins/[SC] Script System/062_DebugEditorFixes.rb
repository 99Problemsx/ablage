#===============================================================================
# Shattered Crowns - Debug Editor Fixes
#===============================================================================
# Monkey-patches TrainerBattleLister to be nil-safe when GameData::Trainer.get
# returns nil (e.g. when trainers live in ScriptRegistry instead of DATA).
# Applied at plugin load time so it's available for debug menu.
#===============================================================================

if defined?(TrainerBattleLister)
  TrainerBattleLister.class_eval do
    # Override commands to use try_get with nil guard
    def commands
      @commands.clear
      @ids.clear
      cmds = []
      idx = 1
      GameData::Trainer.each do |trainer|
        cmds.push([idx, trainer.trainer_type, trainer.real_name, trainer.version])
        idx += 1
      end
      cmds.sort! do |a, b|
        if a[1] == b[1]
          if a[2] == b[2]
            (a[3] == b[3]) ? a[0] <=> b[0] : a[3] <=> b[3]
          else
            a[2].downcase <=> b[2].downcase
          end
        else
          a[1].to_s.downcase <=> b[1].to_s.downcase
        end
      end
      if @includeNew
        @commands.push(_INTL("[NEW TRAINER BATTLE]"))
        @ids.push(true)
      end
      cmds.each do |t|
        trainer_data = GameData::Trainer.try_get(t[1], t[2], t[3])
        party_size = (trainer_data && trainer_data.pokemon) ? trainer_data.pokemon.length : 0
        if t[3] > 0
          @commands.push(_INTL("{1} {2} ({3}) x{4}",
                               GameData::TrainerType.get(t[1]).name, t[2], t[3],
                               party_size))
        else
          @commands.push(_INTL("{1} {2} x{3}",
                               GameData::TrainerType.get(t[1]).name, t[2],
                               party_size))
        end
        @ids.push([t[1], t[2], t[3]])
      end
      @index = @selection
      @index = @commands.length - 1 if @index >= @commands.length
      @index = 0 if @index < 0
      return @commands
    end

    # Override refresh to use try_get with nil guard
    def refresh(index)
      @sprite.bitmap.dispose if @sprite.bitmap
      return if index < 0
      begin
        if @ids[index].is_a?(Array)
          @sprite.setBitmap(GameData::TrainerType.front_sprite_filename(@ids[index][0]), 0)
        else
          @sprite.setBitmap(nil)
        end
      rescue StandardError
        @sprite.setBitmap(nil)
      end
      if @sprite.bitmap
        @sprite.ox = @sprite.bitmap.width / 2
        @sprite.oy = @sprite.bitmap.height
      end
      text = ""
      if !@includeNew || index > 0
        tr_data = GameData::Trainer.try_get(@ids[index][0], @ids[index][1], @ids[index][2])
        if tr_data && tr_data.pokemon
          tr_data.pokemon.each_with_index do |pkmn, i|
            text += "\n" if i > 0
            sp_name = "???"
            begin
              sp_name = GameData::Species.get(pkmn[:species]).real_name
            rescue StandardError
              sp_name = pkmn[:species].to_s
            end
            text += sprintf("%s Lv.%d", sp_name, pkmn[:level] || 1)
          end
        end
      end
      @pkmnList.text = text
      @pkmnList.resizeHeightToFit(text, Graphics.width / 2)
      @pkmnList.y = Graphics.height - @pkmnList.height
    end
  end
  
  SCScripts.debug("Debug editor fixes applied", :startup) if defined?(SCScripts)
end
