#===============================================================================
# Shattered Crowns Script System - Story Chapters
#===============================================================================
# Track story progression through chapters/regions.
#===============================================================================

module GameData
  #=============================================================================
  # Chapter - Story progression tracking
  #=============================================================================
  class Chapter < ScriptBase
    @chapters = {}
    @current_chapter = nil
    
    class << self
      attr_accessor :chapters, :current_chapter
    end
    
    #---------------------------------------------------------------------------
    # Define a chapter
    #---------------------------------------------------------------------------
    def self.define(id, &block)
      builder = ChapterBuilder.new(id)
      yield(builder) if block_given?
      @chapters[id] = builder.to_data
      SCScripts.log("Registered chapter: #{id}")
    end
    
    #---------------------------------------------------------------------------
    # Set current chapter
    #---------------------------------------------------------------------------
    def self.set(chapter_id)
      return false unless @chapters[chapter_id]
      
      old_chapter = @current_chapter
      @current_chapter = chapter_id
      
      # Save to global
      $PokemonGlobal.sc_current_chapter = chapter_id
      
      chapter = @chapters[chapter_id]
      
      # Run on_enter callback
      chapter[:on_enter]&.call
      
      # Show chapter title if configured
      if chapter[:show_title]
        pbMessage("\\ts[]#{chapter[:name]}")
      end
      
      SCScripts.log("Chapter changed: #{old_chapter} -> #{chapter_id}")
      true
    end
    
    #---------------------------------------------------------------------------
    # Get current chapter
    #---------------------------------------------------------------------------
    def self.current
      @current_chapter || $PokemonGlobal&.sc_current_chapter
    end
    
    def self.current_data
      @chapters[current]
    end
    
    def self.current_name
      current_data&.dig(:name) || "Unknown"
    end
    
    #---------------------------------------------------------------------------
    # Check chapter
    #---------------------------------------------------------------------------
    def self.is?(chapter_id)
      current == chapter_id
    end
    
    def self.completed?(chapter_id)
      $PokemonGlobal.sc_completed_chapters ||= []
      $PokemonGlobal.sc_completed_chapters.include?(chapter_id)
    end
    
    def self.complete(chapter_id = nil)
      chapter_id ||= current
      $PokemonGlobal.sc_completed_chapters ||= []
      $PokemonGlobal.sc_completed_chapters << chapter_id unless completed?(chapter_id)
      
      chapter = @chapters[chapter_id]
      chapter[:on_complete]&.call if chapter
    end
    
    #---------------------------------------------------------------------------
    # Get all chapters
    #---------------------------------------------------------------------------
    def self.all
      @chapters
    end
    
    def self.progress
      return 0 if @chapters.empty?
      completed = $PokemonGlobal&.sc_completed_chapters&.count || 0
      (completed.to_f / @chapters.count * 100).round(1)
    end
  end
  
  #=============================================================================
  # ChapterBuilder
  #=============================================================================
  class ChapterBuilder
    def initialize(id)
      @id = id
      @name = id.to_s.gsub('_', ' ').split.map(&:capitalize).join(' ')
      @description = ""
      @order = 0
      @region = nil
      @show_title = true
      @on_enter = nil
      @on_complete = nil
    end
    
    def name(text)
      @name = text
    end
    
    def description(text)
      @description = text
    end
    
    def order(num)
      @order = num
    end
    
    def region(name)
      @region = name
    end
    
    def show_title(val)
      @show_title = val
    end
    
    def on_enter(&block)
      @on_enter = block
    end
    
    def on_complete(&block)
      @on_complete = block
    end
    
    def to_data
      {
        id: @id,
        name: @name,
        description: @description,
        order: @order,
        region: @region,
        show_title: @show_title,
        on_enter: @on_enter,
        on_complete: @on_complete
      }
    end
  end
end

# Save data
class PokemonGlobalMetadata
  attr_accessor :sc_current_chapter, :sc_completed_chapters
end

#===============================================================================
# Short helper
#===============================================================================
def pbChapter(chapter_id = nil)
  if chapter_id
    GameData::Chapter.set(chapter_id)
  else
    GameData::Chapter.current
  end
end

#===============================================================================
# Example Usage
#===============================================================================
# GameData::Chapter.define :prologue do |c|
#   c.name "Prologue: A New Journey"
#   c.order 1
#   c.region "Kanto"
#   c.on_enter { pbPlayBGM("New Start") }
# end
#
# GameData::Chapter.define :chapter_1 do |c|
#   c.name "Chapter 1: The First Badge"
#   c.order 2
#   c.on_complete { pbAchievement(:beat_chapter_1) }
# end
#
# Set chapter: pbChapter(:prologue)
# Check: GameData::Chapter.is?(:prologue)
