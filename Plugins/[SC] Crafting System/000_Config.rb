#===============================================================================
# [SC] Crafting System - Configuration
# Version: 1.0.0
# Material collection and item crafting with recipe discovery.
#===============================================================================

module CraftingSystem
  ENABLED    = true
  DEBUG_MODE = false

  #=============================================================================
  # MATERIAL CATEGORIES
  #=============================================================================

  MATERIAL_CATEGORIES = [:Organic, :Mineral, :Arcane, :Tech]

  #=============================================================================
  # RECIPES
  # Format: { recipe_id => { name:, result:, amount:, materials:, unlock: } }
  # materials: Array of [item_symbol, quantity]
  # unlock: :default (known from start), :discovery (find recipe), :quest
  #=============================================================================

  RECIPES = {
    :SUPER_REPEL_CRAFT => {
      :name      => "Super Repel",
      :result    => :SUPERREPEL,
      :amount    => 1,
      :materials => [[:REPEL, 2], [:STARDUST, 1]],
      :unlock    => :default,
    },
    :FULL_HEAL_CRAFT => {
      :name      => "Full Heal",
      :result    => :FULLHEAL,
      :amount    => 1,
      :materials => [[:ANTIDOTE, 1], [:PARALYZEHEAL, 1], [:AWAKENING, 1]],
      :unlock    => :default,
    },
    :REVIVE_CRAFT => {
      :name      => "Revive",
      :result    => :REVIVE,
      :amount    => 1,
      :materials => [[:POTION, 2], [:STARDUST, 3]],
      :unlock    => :discovery,
    },
    :RARE_CANDY_CRAFT => {
      :name      => "Rare Candy",
      :result    => :RARECANDY,
      :amount    => 1,
      :materials => [[:STARDUST, 5], [:STARPIECE, 1]],
      :unlock    => :discovery,
    },
    :PP_UP_CRAFT => {
      :name      => "PP Up",
      :result    => :PPUP,
      :amount    => 1,
      :materials => [[:ELIXIR, 1], [:STARDUST, 3]],
      :unlock    => :discovery,
    },
  }

  #=============================================================================
  # CRAFTING STATIONS
  # Where crafting can take place. nil = anywhere (portable kit)
  #=============================================================================

  REQUIRE_STATION = false    # If true, must be at a crafting station
  PORTABLE_KIT_ITEM = nil    # Set to item symbol for portable crafting kit

  #=============================================================================
  # SOUND & UI
  #=============================================================================
  SE_CRAFT       = "GUI sel decision"
  SE_DISCOVER    = "Pkmn move learnt"
  SE_FAIL        = "GUI sel buzzer"
end
