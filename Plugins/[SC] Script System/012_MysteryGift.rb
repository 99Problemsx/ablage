#===============================================================================
# Shattered Crowns Script System - Mystery Gifts
#===============================================================================
# Define wonder cards and gift Pokemon/items.
#===============================================================================

module GameData
  #=============================================================================
  # MysteryGift - Define downloadable gifts
  #=============================================================================
  class MysteryGift < ScriptBase
    @gifts = {}
    
    class << self
      attr_accessor :gifts
    end
    
    #---------------------------------------------------------------------------
    # Define a mystery gift
    # Usage: MysteryGift.define :launch_pikachu do |gift| ... end
    #---------------------------------------------------------------------------
    def self.define(id, &block)
      builder = GiftBuilder.new(id)
      yield(builder) if block_given?
      @gifts[id] = builder.to_data
      SCScripts.log("Registered mystery gift: #{id}")
    end
    
    #---------------------------------------------------------------------------
    # Claim a gift
    #---------------------------------------------------------------------------
    def self.claim(id)
      gift = @gifts[id]
      return false unless gift
      return false if claimed?(id)
      
      case gift[:type]
      when :pokemon
        # Refuse if party + box space exhausted (pbAddPokemonSilent will fail).
        if $player && $player.party.length >= Settings::MAX_PARTY_SIZE &&
           $PokemonStorage && $PokemonStorage.full?
          pbMessage(_INTL("You have no room to receive this Pokemon!"))
          return false
        end
        pokemon = Pokemon.new(gift[:species], gift[:level])
        pokemon.form = gift[:form] if gift[:form]
        pokemon.item = gift[:item] if gift[:item]
        pokemon.ot = gift[:ot] if gift[:ot]
        pokemon.obtain_text = gift[:obtain_text] if gift[:obtain_text]
        pokemon.shiny = true if gift[:shiny]
        
        if pbAddPokemonSilent(pokemon)
          pbMessage(_INTL("You received {1}!", pokemon.name))
          mark_claimed(id)
          return true
        else
          pbMessage(_INTL("Could not deliver the Pokemon. Try making room."))
        end
        
      when :item
        if pbReceiveItem(gift[:item_id], gift[:quantity] || 1)
          mark_claimed(id)
          return true
        end
      end
      
      false
    end
    
    #---------------------------------------------------------------------------
    # Check if gift was claimed
    #---------------------------------------------------------------------------
    def self.claimed?(id)
      $PokemonGlobal.sc_claimed_gifts ||= []
      $PokemonGlobal.sc_claimed_gifts.include?(id)
    end
    
    def self.mark_claimed(id)
      $PokemonGlobal.sc_claimed_gifts ||= []
      $PokemonGlobal.sc_claimed_gifts << id unless claimed?(id)
    end
    
    #---------------------------------------------------------------------------
    # Get gift info
    #---------------------------------------------------------------------------
    def self.get(id)
      @gifts[id]
    end
    
    def self.all
      @gifts
    end
    
    def self.available
      @gifts.reject { |id, _| claimed?(id) }
    end
  end
  
  #=============================================================================
  # GiftBuilder
  #=============================================================================
  class GiftBuilder
    def initialize(id)
      @id = id
      @type = :pokemon
      @name = id.to_s.gsub('_', ' ').split.map(&:capitalize).join(' ')
      @description = ""
      @species = nil
      @level = 5
      @form = 0
      @item = nil
      @item_id = nil
      @quantity = 1
      @shiny = false
      @ot = nil
      @obtain_text = nil
      @expire_date = nil
    end
    
    def name(text)
      @name = text
    end
    
    def description(text)
      @description = text
    end
    
    # Pokemon gift
    def pokemon(species, level, options = {})
      @type = :pokemon
      @species = species
      @level = level
      @form = options[:form] || 0
      @item = options[:item]
      @shiny = options[:shiny] || false
      @ot = options[:ot]
      @obtain_text = options[:obtain_text]
    end
    
    # Item gift
    def item(item_id, quantity = 1)
      @type = :item
      @item_id = item_id
      @quantity = quantity
    end
    
    def expires(date_string)
      @expire_date = date_string
    end
    
    def to_data
      {
        id: @id,
        type: @type,
        name: @name,
        description: @description,
        species: @species,
        level: @level,
        form: @form,
        item: @item,
        item_id: @item_id,
        quantity: @quantity,
        shiny: @shiny,
        ot: @ot,
        obtain_text: @obtain_text,
        expire_date: @expire_date
      }
    end
  end
end

# Save data extension
class PokemonGlobalMetadata
  attr_accessor :sc_claimed_gifts
end

#===============================================================================
# Example Usage
#===============================================================================
# GameData::MysteryGift.define :launch_pikachu do |gift|
#   gift.name "Launch Pikachu"
#   gift.description "Special Pikachu to celebrate game launch!"
#   gift.pokemon :PIKACHU, 25, shiny: true, item: :LIGHTBALL
# end
#
# GameData::MysteryGift.define :early_potion_pack do |gift|
#   gift.name "Early Bird Pack"
#   gift.item :POTION, 10
# end
#
# To claim: GameData::MysteryGift.claim(:launch_pikachu)
