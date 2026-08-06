#===============================================================================
# Shattered Crowns Script System - Timed Events
#===============================================================================
# Events that trigger at specific times or days.
#===============================================================================

module GameData
  #=============================================================================
  # TimedEvent - Time-based event triggers
  #=============================================================================
  class TimedEvent < ScriptBase
    @events = {}
    
    class << self
      attr_accessor :events
    end
    
    #---------------------------------------------------------------------------
    # Define a timed event
    #---------------------------------------------------------------------------
    def self.define(id, &block)
      builder = TimedEventBuilder.new(id)
      yield(builder) if block_given?
      @events[id] = builder.to_data
      SCScripts.log("Registered timed event: #{id}")
    end
    
    #---------------------------------------------------------------------------
    # Check and trigger all applicable events
    #---------------------------------------------------------------------------
    def self.check_all
      now = Time.now
      @events.each do |id, event|
        next unless should_trigger?(event, now)
        trigger(id)
      end
    end
    
    #---------------------------------------------------------------------------
    # Check if event should trigger
    #---------------------------------------------------------------------------
    def self.should_trigger?(event, now = Time.now)
      # Check time of day
      if event[:hours]
        return false unless event[:hours].include?(now.hour)
      end
      
      # Check day of week (0=Sunday, 6=Saturday)
      if event[:days]
        return false unless event[:days].include?(now.wday)
      end
      
      # Check specific date
      if event[:date]
        return false unless now.month == event[:date][:month] && now.day == event[:date][:day]
      end
      
      # Check condition
      if event[:condition]
        return false unless event[:condition].call
      end
      
      true
    end
    
    #---------------------------------------------------------------------------
    # Trigger an event
    #---------------------------------------------------------------------------
    def self.trigger(id)
      event = @events[id]
      return false unless event
      
      event[:action]&.call
      SCScripts.log("Triggered timed event: #{id}")
      true
    end
    
    #---------------------------------------------------------------------------
    # Time helpers
    #---------------------------------------------------------------------------
    def self.is_morning?
      (6..11).include?(Time.now.hour)
    end
    
    def self.is_afternoon?
      (12..17).include?(Time.now.hour)
    end
    
    def self.is_evening?
      (18..20).include?(Time.now.hour)
    end
    
    def self.is_night?
      !(6..20).include?(Time.now.hour)
    end
    
    def self.is_weekend?
      [0, 6].include?(Time.now.wday)
    end
    
    def self.is_weekday?
      (1..5).include?(Time.now.wday)
    end
  end
  
  #=============================================================================
  # TimedEventBuilder
  #=============================================================================
  class TimedEventBuilder
    def initialize(id)
      @id = id
      @hours = nil
      @days = nil
      @date = nil
      @condition = nil
      @action = nil
    end
    
    # Set hours (0-23)
    def at_hours(*hours)
      @hours = hours.flatten
    end
    
    def morning
      @hours = (6..11).to_a
    end
    
    def afternoon
      @hours = (12..17).to_a
    end
    
    def evening
      @hours = (18..20).to_a
    end
    
    def night
      @hours = [21, 22, 23, 0, 1, 2, 3, 4, 5]
    end
    
    # Set days (0=Sunday, 6=Saturday)
    def on_days(*days)
      @days = days.flatten
    end
    
    def weekdays
      @days = [1, 2, 3, 4, 5]
    end
    
    def weekends
      @days = [0, 6]
    end
    
    # Specific date
    def on_date(month, day)
      @date = { month: month, day: day }
    end
    
    # Condition
    def condition(&block)
      @condition = block
    end
    
    # Action to run
    def action(&block)
      @action = block
    end
    
    def to_data
      {
        id: @id,
        hours: @hours,
        days: @days,
        date: @date,
        condition: @condition,
        action: @action
      }
    end
  end
end

#===============================================================================
# Example Usage
#===============================================================================
# GameData::TimedEvent.define :night_market do |e|
#   e.night
#   e.action { SW.set(SW::NIGHT_MARKET_OPEN) }
# end
#
# GameData::TimedEvent.define :weekend_tournament do |e|
#   e.weekends
#   e.at_hours 10, 11, 12, 13, 14
#   e.action { pbMessage("The weekend tournament is happening!") }
# end
#
# GameData::TimedEvent.define :christmas_event do |e|
#   e.on_date 12, 25
#   e.action { GameData::MysteryGift.claim(:christmas_gift) }
# end
#
# Check all events: GameData::TimedEvent.check_all
