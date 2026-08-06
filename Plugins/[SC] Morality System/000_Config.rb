#===============================================================================
# [SC] Morality System - Configuration
# Version: 1.0.0
# Light/Dark alignment based on story choices. Affects endings, NPCs, unlocks.
#===============================================================================

module MoralitySystem
  ENABLED    = true
  DEBUG_MODE = false

  #=============================================================================
  # ALIGNMENT SCALE
  # Range: -100 (Pure Dark) to +100 (Pure Light), 0 = Neutral
  #=============================================================================

  MIN_VALUE = -100
  MAX_VALUE =  100
  START_VALUE = 0

  #=============================================================================
  # ALIGNMENT TIERS
  #=============================================================================

  TIERS = {
    :PURE_DARK   => { :range => (-100..-61), :label => "Pure Dark",    :color => Color.new(80, 0, 120) },
    :DARK        => { :range => (-60..-21),  :label => "Dark",         :color => Color.new(120, 40, 160) },
    :NEUTRAL     => { :range => (-20..20),   :label => "Neutral",      :color => Color.new(180, 180, 180) },
    :LIGHT       => { :range => (21..60),    :label => "Light",        :color => Color.new(255, 220, 100) },
    :PURE_LIGHT  => { :range => (61..100),   :label => "Pure Light",   :color => Color.new(255, 255, 200) },
  }

  #=============================================================================
  # ENDING REQUIREMENTS
  # Which alignment tier unlocks which ending path
  #=============================================================================

  ENDINGS = {
    :REDEMPTION   => { :min_tier => :PURE_LIGHT, :description => "The Chosen redeems the Crowns" },
    :BALANCE      => { :min_tier => :NEUTRAL,    :description => "A fragile balance is restored" },
    :DOMINATION   => { :min_tier => :PURE_DARK,  :description => "The Chosen shatters all Crowns" },
  }

  #=============================================================================
  # EXCLUSIVE UNLOCKS
  # Pokemon or items only available at certain alignments
  #=============================================================================

  ALIGNMENT_UNLOCKS = {
    # :LIGHT => { :pokemon => [:XERNEAS], :items => [:LIGHTRUNE] },
    # :DARK  => { :pokemon => [:YVELTAL], :items => [:DARKRUNE] },
  }

  #=============================================================================
  # NPC REACTION MODIFIERS
  # NPCs may react differently based on alignment
  #=============================================================================

  NPC_REACTION_ENABLED = true

  #=============================================================================
  # VISUAL FEEDBACK
  #=============================================================================

  SHOW_ALIGNMENT_CHANGE = true    # Flash screen on alignment shift
  LIGHT_FLASH_COLOR = Color.new(255, 255, 200, 80)
  DARK_FLASH_COLOR  = Color.new(80, 0, 120, 80)
  FLASH_DURATION    = 8   # Frames

  #=============================================================================
  # SOUNDS
  #=============================================================================
  SE_LIGHT_SHIFT = "GUI sel decision"
  SE_DARK_SHIFT  = "GUI sel buzzer"
  SE_TIER_CHANGE = "Pkmn move learnt"
end
