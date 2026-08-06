#===============================================================================
# [SC] Crafting System - Core Logic
#===============================================================================

#===============================================================================
# Save Data
#===============================================================================

class CraftingSaveData
  attr_accessor :unlocked_recipes  # Array of recipe keys
  attr_accessor :craft_counts      # Hash { recipe_key => times_crafted }

  def initialize
    @unlocked_recipes = []
    @craft_counts     = {}
    # Unlock default recipes
    CraftingSystem::RECIPES.each do |key, recipe|
      @unlocked_recipes.push(key) if recipe[:unlock] == :default
    end
  end

  def unlocked?(recipe_key)
    @unlocked_recipes.include?(recipe_key)
  end

  def unlock(recipe_key)
    return false if unlocked?(recipe_key)
    @unlocked_recipes.push(recipe_key)
    true
  end

  def record_craft(recipe_key)
    @craft_counts[recipe_key] ||= 0
    @craft_counts[recipe_key] += 1
  end

  def times_crafted(recipe_key)
    @craft_counts[recipe_key] || 0
  end

  def total_crafted
    @craft_counts.values.sum
  end
end

#===============================================================================
# Global metadata
#===============================================================================

class PokemonGlobalMetadata
  attr_accessor :crafting_data

  def crafting_data
    @crafting_data ||= CraftingSaveData.new
  end
end

SaveData.register(:crafting_data) do
  save_value { $PokemonGlobal.crafting_data }
  load_value { |val| $PokemonGlobal.crafting_data = val }
  new_game_value { CraftingSaveData.new }
end

#===============================================================================
# Crafting Manager
#===============================================================================

module CraftingManager
  def self.data
    $PokemonGlobal.crafting_data
  end

  #=============================================================================
  # Check if player has materials for a recipe
  #=============================================================================

  def self.can_craft?(recipe_key)
    recipe = CraftingSystem::RECIPES[recipe_key]
    return false unless recipe && data.unlocked?(recipe_key)
    recipe[:materials].all? { |mat_item, mat_qty| $bag.has?(mat_item, mat_qty) }
  end

  #=============================================================================
  # Craft an item
  #=============================================================================

  def self.craft(recipe_key)
    recipe = CraftingSystem::RECIPES[recipe_key]
    return false unless recipe
    unless data.unlocked?(recipe_key)
      pbMessage(_INTL("You haven't discovered this recipe yet."))
      return false
    end
    unless can_craft?(recipe_key)
      pbSEPlay(CraftingSystem::SE_FAIL) if CraftingSystem::SE_FAIL
      pbMessage(_INTL("You don't have the required materials."))
      return false
    end

    # Consume materials
    recipe[:materials].each { |mat_item, mat_qty| $bag.remove(mat_item, mat_qty) }

    # Grant result
    result_item = GameData::Item.try_get(recipe[:result])
    $bag.add(recipe[:result], recipe[:amount])
    data.record_craft(recipe_key)

    pbSEPlay(CraftingSystem::SE_CRAFT)
    result_name = result_item ? result_item.name : recipe[:result].to_s
    pbMessage(_INTL("You crafted {1} x{2}!", result_name, recipe[:amount]))
    true
  end

  #=============================================================================
  # Discover a recipe
  #=============================================================================

  def self.discover(recipe_key)
    recipe = CraftingSystem::RECIPES[recipe_key]
    return false unless recipe
    if data.unlock(recipe_key)
      pbSEPlay(CraftingSystem::SE_DISCOVER)
      pbMessage(_INTL("New recipe discovered: {1}!", recipe[:name]))
      # Lore Codex integration
      codexDiscover(:"RECIPE_#{recipe_key}") if defined?(codexDiscover)
      return true
    end
    false
  end

  #=============================================================================
  # Open crafting menu
  #=============================================================================

  def self.open_menu
    recipes = data.unlocked_recipes.map { |key|
      recipe = CraftingSystem::RECIPES[key]
      next nil unless recipe
      craftable = can_craft?(key) ? "✓" : "✗"
      "#{craftable} #{recipe[:name]}"
    }.compact
    recipes.push("Cancel")

    loop do
      choice = pbMessage(_INTL("Crafting ({1} recipes known)", data.unlocked_recipes.length),
                         recipes, recipes.length)
      break if choice == recipes.length - 1

      recipe_key = data.unlocked_recipes[choice]
      next unless recipe_key
      show_recipe_detail(recipe_key)
    end
  end

  #=============================================================================
  # Show recipe detail + craft option
  #=============================================================================

  def self.show_recipe_detail(recipe_key)
    recipe = CraftingSystem::RECIPES[recipe_key]
    return unless recipe

    result_item = GameData::Item.try_get(recipe[:result])
    result_name = result_item ? result_item.name : recipe[:result].to_s

    msg = _INTL("{1}\nResult: {2} x{3}\nMaterials:\n", recipe[:name], result_name, recipe[:amount])
    recipe[:materials].each do |mat_item, mat_qty|
      item_data = GameData::Item.try_get(mat_item)
      item_name = item_data ? item_data.name : mat_item.to_s
      owned = $bag.quantity(mat_item)
      msg += _INTL("  {1}: {2}/{3}\n", item_name, owned, mat_qty)
    end
    msg += _INTL("Times crafted: {1}", data.times_crafted(recipe_key))

    if can_craft?(recipe_key)
      if pbConfirmMessage(msg + _INTL("\nCraft this item?"))
        craft(recipe_key)
      end
    else
      pbMessage(msg)
    end
  end
end

#===============================================================================
# Event helpers
#===============================================================================

def pbOpenCrafting
  return unless CraftingSystem::ENABLED
  if CraftingSystem::REQUIRE_STATION && CraftingSystem::PORTABLE_KIT_ITEM
    unless $bag.has?(CraftingSystem::PORTABLE_KIT_ITEM)
      pbMessage(_INTL("You need a crafting station or portable kit."))
      return
    end
  end
  CraftingManager.open_menu
end

def pbDiscoverRecipe(recipe_key)
  CraftingManager.discover(recipe_key)
end

def pbCraftItem(recipe_key)
  CraftingManager.craft(recipe_key)
end

def pbCanCraft?(recipe_key)
  CraftingManager.can_craft?(recipe_key)
end

def pbRecipeKnown?(recipe_key)
  $PokemonGlobal.crafting_data.unlocked?(recipe_key)
end
