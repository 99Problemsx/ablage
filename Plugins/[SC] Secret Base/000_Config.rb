#===============================================================================
# [SC] Secret Base - Configuration
# Version: 1.0.0
# Player-built hidden base with decorations, features, and NPC invitations.
#===============================================================================

module SecretBase
  ENABLED    = true
  DEBUG_MODE = false

  #=============================================================================
  # BASE LOCATIONS
  # Map IDs where a secret base can be established
  #=============================================================================

  BASE_LOCATIONS = {
    # :FOREST_CAVE   => { :map_id => 50, :name => "Forest Hideout" },
    # :MOUNTAIN_DEN  => { :map_id => 51, :name => "Mountain Den" },
    # :BEACH_COVE    => { :map_id => 52, :name => "Beach Cove" },
  }

  # Map ID used as the interior of the secret base
  BASE_INTERIOR_MAP_ID = 100

  # Transfer coordinates when entering the base
  BASE_ENTRY_X = 8
  BASE_ENTRY_Y = 12

  #=============================================================================
  # DECORATION CATEGORIES
  #=============================================================================

  DECORATION_CATEGORIES = [:Furniture, :Posters, :Plants, :Lights, :Special]

  #=============================================================================
  # DECORATIONS
  # Format: { id => { name:, category:, cost:, description:, effect: } }
  # Effects: :none, :heal, :pc, :training, :shop, :garden
  #=============================================================================

  DECORATIONS = {
    :WOODEN_TABLE    => { :name => "Wooden Table",    :category => :Furniture, :cost => 500,   :description => "A sturdy wooden table.", :effect => :none },
    :COZY_BED       => { :name => "Cozy Bed",        :category => :Furniture, :cost => 2000,  :description => "Rest here to fully heal.", :effect => :heal },
    :MINI_PC        => { :name => "Mini PC",         :category => :Special,   :cost => 5000,  :description => "Access your PC boxes.", :effect => :pc },
    :TRAINING_DUMMY => { :name => "Training Dummy",  :category => :Special,   :cost => 8000,  :description => "Train against a dummy to gain EXP.", :effect => :training },
    :BERRY_PLANTER  => { :name => "Berry Planter",   :category => :Plants,    :cost => 3000,  :description => "Grow berries in your base.", :effect => :garden },
    :POSTER_LEGENDS => { :name => "Legends Poster",  :category => :Posters,   :cost => 1000,  :description => "A poster of legendary Pokemon.", :effect => :none },
    :FAIRY_LIGHTS   => { :name => "Fairy Lights",    :category => :Lights,    :cost => 1500,  :description => "Warm fairy lights.", :effect => :none },
    :VENDOR_STALL   => { :name => "Vendor Stall",    :category => :Special,   :cost => 10000, :description => "A small shop stall.", :effect => :shop },
  }

  #=============================================================================
  # TRAINING DUMMY SETTINGS
  #=============================================================================

  TRAINING_DUMMY_SPECIES = :MAGIKARP
  TRAINING_DUMMY_LEVEL   = 10
  TRAINING_DUMMY_COOLDOWN_STEPS = 500

  #=============================================================================
  # NPC INVITATIONS
  # Invite story NPCs to visit your base
  #=============================================================================

  INVITABLE_NPCS = {
    # :LYRA   => { :display_name => "Lyra",   :dialogue => "Your base is really cozy!" },
    # :KAEL   => { :display_name => "Kael",   :dialogue => "Hmph. It's... acceptable." },
    # :ALDRIC => { :display_name => "Aldric", :dialogue => "A fine tactical retreat point." },
  }

  MAX_INVITED_NPCS = 3

  #=============================================================================
  # SOUND
  #=============================================================================
  SE_DECORATE    = "GUI sel decision"
  SE_ENTER_BASE  = "Door enter"
  BGM_BASE       = "Pokemon LPokemon Center"
end
