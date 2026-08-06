#===============================================================================
# Shattered Crowns Script System - Dialogue Trees
#===============================================================================
# Branching conversation system for NPCs.
#===============================================================================

module GameData
  #=============================================================================
  # Dialogue - Branching conversation trees
  #=============================================================================
  class Dialogue < ScriptBase
    @dialogues = {}
    
    class << self
      attr_accessor :dialogues
    end
    
    #---------------------------------------------------------------------------
    # Define a dialogue tree
    #---------------------------------------------------------------------------
    def self.define(id, &block)
      builder = DialogueBuilder.new(id)
      yield(builder) if block_given?
      @dialogues[id] = builder
      SCScripts.log("Registered dialogue: #{id}")
    end
    
    #---------------------------------------------------------------------------
    # Start a dialogue
    #---------------------------------------------------------------------------
    def self.start(id)
      dialogue = @dialogues[id]
      return false unless dialogue
      dialogue.run
      true
    end
    
    def self.get(id)
      @dialogues[id]
    end
  end
  
  #=============================================================================
  # DialogueBuilder
  #=============================================================================
  class DialogueBuilder
    def initialize(id)
      @id = id
      @nodes = {}
      @start_node = :start
    end
    
    #---------------------------------------------------------------------------
    # Define a dialogue node
    #---------------------------------------------------------------------------
    def node(name, &block)
      node_builder = NodeBuilder.new(name)
      yield(node_builder) if block_given?
      @nodes[name] = node_builder
    end
    
    def start_at(node_name)
      @start_node = node_name
    end

    def default(&block)
      node(:default, &block)
      start_at(:default)
    end
    
    #---------------------------------------------------------------------------
    # Run the dialogue
    #---------------------------------------------------------------------------
    def run
      current = @start_node
      
      loop do
        node = @nodes[current]
        break unless node
        
        result = node.execute
        
        case result
        when Symbol
          current = result
        when :end, nil
          break
        else
          break
        end
      end
    end
  end
  
  #=============================================================================
  # NodeBuilder
  #=============================================================================
  class NodeBuilder
    def initialize(name)
      @name = name
      @lines = []
      @choices = []
      @condition = nil
      @action = nil
      @next_node = nil
    end
    
    def say(text)
      @lines << text
    end
    
    def choice(text, goto:)
      @choices << { text: text, goto: goto }
    end
    
    def condition(&block)
      @condition = block
    end
    
    def action(&block)
      @action = block
    end
    
    def goto(node_name)
      @next_node = node_name
    end
    
    def execute
      # Check condition
      if @condition && !@condition.call
        return @next_node || :end
      end
      
      # Show lines
      @lines.each { |line| pbMessage(line) }
      
      # Run action
      @action.call if @action
      
      # Show choices or go to next
      if @choices.any?
        choice_texts = @choices.map { |c| c[:text] }
        result = pbShowCommands(nil, choice_texts, -1)
        return :end if result < 0
        return @choices[result][:goto]
      end
      
      @next_node || :end
    end
  end
end

#===============================================================================
# Short helper
#===============================================================================
def pbDialogue(id)
  GameData::Dialogue.start(id)
end

#===============================================================================
# Example Usage
#===============================================================================
# GameData::Dialogue.define :old_man_tutorial do |d|
#   d.node :start do |n|
#     n.say "Hello there, young trainer!"
#     n.say "Would you like me to show you how to catch Pokemon?"
#     n.choice "Yes, please!", goto: :tutorial
#     n.choice "No thanks.", goto: :decline
#   end
#   
#   d.node :tutorial do |n|
#     n.say "Great! First, you need to weaken the wild Pokemon..."
#     n.say "Then throw a Poke Ball!"
#     n.action { SW.set(SW::SEEN_TUTORIAL) }
#     n.goto :end_happy
#   end
#   
#   d.node :decline do |n|
#     n.say "Alright, come back if you change your mind!"
#   end
#   
#   d.node :end_happy do |n|
#     n.say "Good luck on your journey!"
#   end
# end
#
# In event: pbDialogue(:old_man_tutorial)
