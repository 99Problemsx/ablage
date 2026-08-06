#===============================================================================
# Shattered Crowns Script System - Animation Base Classes
#===============================================================================
# Base classes for overworld effects and event animations.
#===============================================================================

module OverworldAnimation
  #=============================================================================
  # Effect - Base class for map-wide effects (weather, lighting, etc.)
  #=============================================================================
  class Effect
    attr_reader :name, :active, :viewport
    
    def initialize(viewport = nil)
      @viewport = viewport || $scene.spriteset.viewport1 rescue nil
      @name = self.class.name.split('::').last
      @active = false
      @sprites = []
    end
    
    #---------------------------------------------------------------------------
    # Lifecycle methods - override in subclasses
    #---------------------------------------------------------------------------
    def start
      @active = true
      SCScripts.log("Started effect: #{@name}")
    end
    
    def stop
      @active = false
      dispose
      SCScripts.log("Stopped effect: #{@name}")
    end
    
    def update
      return unless @active
      # Override in subclass
    end
    
    def dispose
      @sprites.each { |s| s.dispose if s && !s.disposed? }
      @sprites.clear
    end
    
    def disposed?
      @sprites.all? { |s| s.nil? || s.disposed? }
    end
    
    #---------------------------------------------------------------------------
    # Helper: Create a sprite with common settings
    #---------------------------------------------------------------------------
    def create_sprite(x = 0, y = 0, z = 0)
      sprite = Sprite.new(@viewport)
      sprite.x = x
      sprite.y = y
      sprite.z = z
      @sprites << sprite
      sprite
    end
    
    #---------------------------------------------------------------------------
    # Helper: Load a graphic
    #---------------------------------------------------------------------------
    def load_graphic(path)
      RPG::Cache.load_bitmap("Graphics/#{path}")
    rescue StandardError
      nil
    end
  end
  
  #=============================================================================
  # EventAnimation - Base class for per-event animations (bubbles, fire, etc.)
  #=============================================================================
  class EventAnimation < Effect
    attr_reader :event
    
    def initialize(event, viewport = nil)
      super(viewport)
      @event = event
    end
    
    #---------------------------------------------------------------------------
    # Get event screen position
    #---------------------------------------------------------------------------
    def event_x
      @event.screen_x rescue 0
    end
    
    def event_y
      @event.screen_y rescue 0
    end
    
    #---------------------------------------------------------------------------
    # Update position to follow event
    #---------------------------------------------------------------------------
    def update_position
      @sprites.each do |sprite|
        next unless sprite && !sprite.disposed?
        sprite.x = event_x + (sprite.ox || 0)
        sprite.y = event_y + (sprite.oy || 0)
      end
    end
    
    def update
      return unless @active
      update_position
    end
  end
  
  #=============================================================================
  # Registry for active animations
  #=============================================================================
  module Registry
    @active_effects = []
    @active_event_animations = {}
    
    class << self
      def add_effect(effect)
        @active_effects << effect
        effect.start
      end
      
      def remove_effect(effect)
        effect.stop
        @active_effects.delete(effect)
      end
      
      def add_event_animation(event_id, animation)
        @active_event_animations[event_id] ||= []
        @active_event_animations[event_id] << animation
        animation.start
      end
      
      def remove_event_animation(event_id, animation = nil)
        return unless @active_event_animations[event_id]
        if animation
          animation.stop
          @active_event_animations[event_id].delete(animation)
        else
          @active_event_animations[event_id].each(&:stop)
          @active_event_animations.delete(event_id)
        end
      end
      
      def update_all
        @active_effects.each(&:update)
        @active_event_animations.each_value do |anims|
          anims.each(&:update)
        end
      end
      
      def dispose_all
        @active_effects.each(&:dispose)
        @active_effects.clear
        @active_event_animations.each_value do |anims|
          anims.each(&:dispose)
        end
        @active_event_animations.clear
      end
    end
  end
end
