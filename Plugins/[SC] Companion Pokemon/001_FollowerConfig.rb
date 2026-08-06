#===============================================================================
# [SC] Companion Pokemon - Follower Configuration
# Settings for the overworld follower system.
# Replaces Following Pokemon EX with a modern, self-contained implementation.
#===============================================================================

# Conflict check: our plugin replaces FP-EX entirely
if PluginManager.installed?("Following Pokemon EX")
  raise "CONFLICT: [SC] Companion Pokemon v4.0 replaces Following Pokemon EX.\n" \
        "Please delete the folder Plugins/Following Pokemon EX/ and recompile."
end

module CompanionFollower
  #=============================================================================
  # ANIMATION IDs — raw RPG Maker database animation IDs
  # Must match the Animations.rxdata entries for emote balloons.
  #=============================================================================
  ANIMATION_COME_OUT      = 30
  ANIMATION_COME_IN       = 29

  ANIMATION_EMOTE_HEART   = 9
  ANIMATION_EMOTE_HAPPY   = 10
  ANIMATION_EMOTE_MUSIC   = 12
  ANIMATION_EMOTE_ELIPSES = 13
  ANIMATION_EMOTE_ANGRY   = 15
  ANIMATION_EMOTE_POISON  = 17

  # Shorthand aliases used by Companion Reaction Config
  ANIM_EMOTE_HEART   = ANIMATION_EMOTE_HEART
  ANIM_EMOTE_HAPPY   = ANIMATION_EMOTE_HAPPY
  ANIM_EMOTE_MUSIC   = ANIMATION_EMOTE_MUSIC
  ANIM_EMOTE_ELIPSES = ANIMATION_EMOTE_ELIPSES
  ANIM_EMOTE_ANGRY   = ANIMATION_EMOTE_ANGRY
  ANIM_EMOTE_POISON  = ANIMATION_EMOTE_POISON
  ANIM_COME_OUT      = ANIMATION_COME_OUT
  ANIM_COME_IN       = ANIMATION_COME_IN

  # Companion emotes are rendered directly from the supplied 5x2 animation
  # sheets. This avoids depending on mutable RPG Maker animation database IDs.
  # Each entry is [sheet filename, cell sequence]. Cells are numbered left to
  # right, top row 0-4 and bottom row 5-9.
  EMOTE_SHEET_CELL_SIZE = 192
  # The visible bubbles in all three sheets are centered around x=90 rather
  # than the mathematical cell center x=96.
  EMOTE_CONTENT_CENTER_X = 90
  EMOTE_SHEET_FRAMES = {
    :COME_OUT => ["029-Emotion01", [7, 6, 5, 0, 1, 2, 3]],
    :COME_IN  => ["029-Emotion01", [3, 2, 1, 0, 5, 6, 7]],
    :QUESTION => ["Follower_Emote1", [0, 1, 2, 3, 3, 3]],
    :EXCLAIM  => ["Follower_Emote1", [5, 6, 7, 8, 9, 9]],
    :MUSIC    => ["Follower_Emote2", [0, 5, 0, 5, 0, 5]],
    :HAPPY    => ["Follower_Emote2", [1, 2, 3, 4, 4, 4]],
    :HEART    => ["Follower_Emote2", [8, 9, 8, 9, 9, 9]],
    :POISON   => ["Follower_Emote3", [0, 1, 0, 1, 0, 1]],
    :ANGRY    => ["Follower_Emote3", [2, 3, 2, 3, 3, 3]],
    :DOTS     => ["Follower_Emote3", [4, 9, 4, 9, 9, 9]]
  }
  EMOTE_FRAME_DURATION = 6
  EMOTE_HOLD_DURATION  = 18
  EMOTE_FADE_DURATION  = 10
  EMOTE_Y_OFFSET       = 12

  #=============================================================================
  # TOGGLE SETTINGS
  #=============================================================================
  # Key to toggle follower on/off. Set to nil to disable.
  TOGGLE_KEY              = Input::JUMPUP    # A key

  # Cycle through party with keyboard shortcuts
  CYCLE_PARTY_FORWARD_KEY  = Input::JUMPDOWN  # S key
  CYCLE_PARTY_BACKWARD_KEY = Input::R      # W key

  # Key to swap control between player and Pokemon. Set to nil to disable.
  SWAP_CONTROL_KEY         = Input::L      # D key

  # Show follower toggle option in the Options screen
  SHOW_TOGGLE_IN_OPTIONS  = true

  #=============================================================================
  # VISUAL SETTINGS
  #=============================================================================
  # Whether the follower always stays in walk animation (like HGSS)
  ALWAYS_ANIMATE          = true

  # Whether the follower always faces the player when idle
  ALWAYS_FACE_PLAYER      = false

  # Whether other events can walk through the follower
  IMPASSABLE_FOLLOWER     = true

  # Whether the follower slides into battle instead of Pokeball throw
  SLIDE_INTO_BATTLE       = true

  # Show Pokeball animation at Pokemon Center
  SHOW_POKECENTER_ANIMATION = true

  # Apply colored status tones to the follower sprite
  APPLY_STATUS_TONES      = true
  TONE_BURN               = [206, 73, 43]
  TONE_POISON             = [109, 55, 130]
  TONE_PARALYSIS          = [204, 152, 44]
  TONE_FROZEN             = [56, 160, 193]
  TONE_SLEEP              = [0, 0, 0]

  # Dust animation when landing from a jump
  DUST_ANIMATION_ID       = Settings::DUST_ANIMATION_ID rescue 6

  #=============================================================================
  # DISTANCE SETTINGS
  #=============================================================================
  # Pixel offset to push follower away from player to prevent overlap
  FOLLOWER_DISTANCE_OFFSET = 8

  # Per-species distance overrides for large Pokemon
  FOLLOWER_DISTANCE_EXCEPTIONS = {
    :VENUSAUR   => 16, :CHARIZARD  => 16, :BLASTOISE  => 16,
    :ONIX       => 24, :GYARADOS   => 24, :LAPRAS     => 16,
    :SNORLAX    => 16, :ARTICUNO   => 16, :ZAPDOS     => 16,
    :MOLTRES    => 16, :DRAGONITE  => 16, :MEWTWO     => 16,
    :RHYDON     => 16,
    :MEGANIUM   => 16, :FERALIGATR => 16, :STEELIX    => 24,
    :LUGIA      => 24, :HOOH       => 24, :TYRANITAR  => 16,
    :GROUDON    => 24, :KYOGRE     => 24, :RAYQUAZA   => 24,
    :WAILORD    => 32, :METAGROSS  => 16,
    :DIALGA     => 24, :PALKIA     => 24, :GIRATINA   => 24,
    :REGIGIGAS  => 24, :RESHIRAM   => 24, :ZEKROM     => 24,
    :KYUREM     => 24, :XERNEAS    => 16, :YVELTAL    => 24,
    :ZYGARDE    => 24, :SOLGALEO   => 24, :LUNALA     => 24,
    :NECROZMA   => 24, :ETERNATUS  => 32, :CALYREX    => 16,
  }

  #=============================================================================
  # LEVITATING POKEMON — always hover above ground/water
  #=============================================================================
  LEVITATING_FOLLOWERS = [
    :BEEDRILL, :VENOMOTH, :ABRA, :GEODUDE, :MAGNEMITE, :GASTLY, :HAUNTER,
    :KOFFING, :WEEZING, :PORYGON, :MEW,
    :MISDREAVUS, :UNOWN, :PORYGON2, :CELEBI,
    :DUSTOX, :SHEDINJA, :MEDITITE, :VOLBEAT, :ILLUMISE, :FLYGON, :LUNATONE,
    :SOLROCK, :BALTOY, :CLAYDOL, :CASTFORM, :SHUPPET, :DUSKULL, :CHIMECHO,
    :GLALIE, :BELDUM, :METANG, :LATIAS, :LATIOS, :JIRACHI,
    :MISMAGIUS, :BRONZOR, :BRONZONG, :SPIRITOMB, :CARNIVINE, :MAGNEZONE,
    :PORYGONZ, :PROBOPASS, :DUSKNOIR, :FROSLASS, :ROTOM, :UXIE, :MESPRIT,
    :AZELF, :GIRATINA_1, :CRESSELIA, :DARKRAI,
    :MUNNA, :MUSHARNA, :YAMASK, :COFAGRIGUS, :SOLOSIS, :DUOSION, :REUNICLUS,
    :VANILLITE, :VANILLISH, :VANILLUXE, :ELGYEM, :BEHEEYEM, :LAMPENT,
    :CHANDELURE, :CRYOGONAL, :HYDREIGON, :VOLCARONA, :RESHIRAM, :ZEKROM,
    :SPRITZEE, :DRAGALGE, :CARBINK, :KLEFKI, :PHANTUMP, :DIANCIE, :HOOPA,
    :VIKAVOLT, :CUTIEFLY, :RIBOMBEE, :COMFEY, :DHELMISE, :TAPUKOKO, :TAPULELE,
    :TAPUBULU, :COSMOG, :COSMOEM, :LUNALA, :NIHILEGO, :KARTANA, :NECROZMA,
    :MAGEARNA, :POIPOLE, :NAGANADEL,
    :ORBEETLE, :FLAPPLE, :SINISTEA, :POLTEAGEIST, :FROSMOTH, :DREEPY, :DRAKLOAK,
    :DRAGAPULT, :ETERNATUS, :REGIELEKI, :REGIDRAGO, :CALYREX,
  ]

  # Pokemon that cannot follow while surfing
  SURFING_EXCEPTIONS = [
    :CHARIZARD, :PIDGEY, :SPEAROW, :FARFETCHD, :DODUO, :DODRIO, :SCYTHER,
    :ZAPDOS_1,
    :NATU, :XATU, :MURKROW, :DELIBIRD,
    :TAILLOW, :VIBRAVA, :TROPIUS,
    :STARLY, :HONCHKROW, :CHINGLING, :CHATOT, :ROTOM_1, :ROTOM_2, :ROTOM_3,
    :ROTOM_5, :SHAYMIN_1, :ARCEUS_2,
    :ARCHEN, :DUCKLETT, :EMOLGA, :EELEKTRIK, :EELEKTROSS, :RUFFLET, :VULLABY,
    :LANDORUS_1,
    :FLETCHLING, :HAWLUCHA,
    :ROWLET, :DARTRIX, :PIKIPEK, :ORICORIO, :SILVALLY_2,
    :ROOKIDEE, :CALYREX_1, :CALYREX_2,
  ]

  #=============================================================================
  # TIMING — friendship and item find timers (in seconds)
  #=============================================================================
  FRIENDSHIP_TIME_TAKEN   = 125
  ITEM_TIME_TAKEN         = 375

  #=============================================================================
  # FOLLOWER COMMON EVENT — set to a common event ID for talk interaction,
  # or nil to use the built-in talk system.
  #=============================================================================
  FOLLOWER_COMMON_EVENT   = nil
end
