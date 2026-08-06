#===============================================================================
# Shattered Crowns Script System - Audio Manager
#===============================================================================
# Playlist control and ambient sounds.
#===============================================================================

module SCScripts
  module Audio
    @current_playlist = nil
    @playlist_index = 0
    @ambient_sounds = []
    
    #---------------------------------------------------------------------------
    # Play BGM
    #---------------------------------------------------------------------------
    def self.play_bgm(name, volume = 100, pitch = 100)
      pbBGMPlay(name, volume, pitch)
    end
    
    def self.stop_bgm(fadeout = 0)
      if fadeout > 0
        pbBGMFade(fadeout)
      else
        pbBGMStop
      end
    end
    
    def self.pause_bgm
      @paused_bgm = $game_system.playing_bgm
      pbBGMStop
    end
    
    def self.resume_bgm
      pbBGMPlay(@paused_bgm) if @paused_bgm
      @paused_bgm = nil
    end
    
    #---------------------------------------------------------------------------
    # Play SE
    #---------------------------------------------------------------------------
    def self.play_se(name, volume = 80, pitch = 100)
      pbSEPlay(name, volume, pitch)
    end
    
    def self.stop_se
      pbSEStop
    end
    
    #---------------------------------------------------------------------------
    # Play ME (Music Effect - jingles)
    #---------------------------------------------------------------------------
    def self.play_me(name, volume = 100, pitch = 100)
      pbMEPlay(name, volume, pitch)
    end
    
    #---------------------------------------------------------------------------
    # Playlists
    #---------------------------------------------------------------------------
    def self.set_playlist(tracks)
      @current_playlist = tracks
      @playlist_index = 0
    end
    
    def self.play_playlist
      return unless @current_playlist && @current_playlist.any?
      play_bgm(@current_playlist[@playlist_index])
    end
    
    def self.next_track
      return unless @current_playlist
      @playlist_index = (@playlist_index + 1) % @current_playlist.length
      play_playlist
    end
    
    def self.previous_track
      return unless @current_playlist
      @playlist_index = (@playlist_index - 1) % @current_playlist.length
      play_playlist
    end
    
    def self.shuffle_playlist
      return unless @current_playlist
      @current_playlist.shuffle!
      @playlist_index = 0
    end
    
    #---------------------------------------------------------------------------
    # Ambient sounds (looping SE)
    #---------------------------------------------------------------------------
    def self.add_ambient(name, volume = 50, pitch = 100)
      @ambient_sounds << { name: name, volume: volume, pitch: pitch }
    end
    
    def self.remove_ambient(name)
      @ambient_sounds.reject! { |a| a[:name] == name }
    end
    
    def self.clear_ambient
      @ambient_sounds.clear
    end
    
    def self.play_ambient
      @ambient_sounds.each do |ambient|
        pbSEPlay(ambient[:name], ambient[:volume], ambient[:pitch])
      end
    end
    
    #---------------------------------------------------------------------------
    # Crossfade between tracks. duration is in SECONDS.
    #---------------------------------------------------------------------------
    def self.crossfade(new_track, duration = 1.0)
      # Fade out current (pbBGMFade and pbWait both take seconds in PE v21.1)
      pbBGMFade(duration / 2.0)
      pbWait(duration / 2.0)
      # Play new
      play_bgm(new_track)
    end
    
    #---------------------------------------------------------------------------
    # Predefined audio presets
    #---------------------------------------------------------------------------
    PRESETS = {
      victory_wild: 'Battle victory wild',
      victory_trainer: 'Battle victory trainer',
      healing: 'Poke Center',
      level_up: 'Pokemon level up',
      evolution: 'Evolution',
      item_get: 'Item get',
      key_item: 'Key item get',
      pokemon_caught: 'Pokemon caught'
    }
    
    def self.play_preset(preset)
      name = PRESETS[preset]
      play_me(name) if name
    end
  end
end

#===============================================================================
# Short helpers
#===============================================================================
def pbPlayBGM(name, volume = 100)
  SCScripts::Audio.play_bgm(name, volume)
end

def pbPlaySE(name, volume = 80)
  SCScripts::Audio.play_se(name, volume)
end

def pbPlayJingle(preset)
  SCScripts::Audio.play_preset(preset)
end

def pbCrossfade(track, duration = 1.0)
  SCScripts::Audio.crossfade(track, duration)
end
