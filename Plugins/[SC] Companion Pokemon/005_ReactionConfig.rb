#===============================================================================
# [SC] Companion Pokemon - Reaction Configuration
# Version: 4.0.0
# Ambient reactions for the follower Pokemon based on affection and context.
# Requires: [SC] Pokemon Affection
#===============================================================================

module CompanionPokemon
  ENABLED    = true
  DEBUG_MODE = false

  # v22's Game_Map#name prefers the public MapMetadata name. Several distinct
  # maps in this project intentionally share that name (e.g. the city, its Gym
  # and its Pokemon Center), so environmental detection must also consider the
  # internal RMXP map name and battle environment.
  def self.current_map_identity
    return "" if !$game_map
    display_name = ($game_map.name rescue "")
    internal_name = (pbGetBasicMapNameFromId($game_map.map_id) rescue "")
    return "#{display_name} #{internal_name}".downcase
  end

  def self.current_battle_environment
    metadata = $game_map&.metadata
    return metadata&.battle_environment
  end

  #=============================================================================
  # REACTION CHECK — how often to evaluate environmental reactions
  #=============================================================================
  REACTION_STEP_INTERVAL = 40   # Steps between reaction checks
  REACTION_COOLDOWN      = 120  # Min steps between showing any reaction

  #=============================================================================
  # EMOTE ANIMATIONS — mapped to raw animation database IDs.
  # Played on the follower event via CompanionFollower abstraction layer.
  #=============================================================================
  EMOTE_MAP = {
    :HAPPY    => CompanionFollower::ANIM_EMOTE_HAPPY,   # 10 — Smile face
    :HEART    => CompanionFollower::ANIM_EMOTE_HEART,   # 9  — Heart bubble
    :MUSIC    => CompanionFollower::ANIM_EMOTE_MUSIC,   # 12 — Music note
    :ANGRY    => CompanionFollower::ANIM_EMOTE_ANGRY,   # 15 — Anger mark
    :DOTS     => CompanionFollower::ANIM_EMOTE_ELIPSES, # 13 — Ellipsis / nervous
    :POISON   => CompanionFollower::ANIM_EMOTE_POISON,  # 17 — Swirl / sick
    :COME_OUT => CompanionFollower::ANIM_COME_OUT,      # 30 — Pokeball release
    :COME_IN  => CompanionFollower::ANIM_COME_IN,       # 29 — Pokeball return
  }

  # Status tone overlays live in 001_FollowerConfig.rb (APPLY_STATUS_TONES +
  # TONE_BURN / TONE_POISON / TONE_PARALYSIS / TONE_FROZEN / TONE_SLEEP).
  # 008_FollowerVisuals.rb reads those directly — keep this file focused on
  # reaction routes only.

  #=============================================================================
  # MOVE ROUTE PATTERNS — cute movements played with the emote
  # Uses PBMoveRoute constants from Pokemon Essentials.
  #=============================================================================
  MOVE_ROUTES = {
    :JUMP => [
      PBMoveRoute::JUMP, 0, 0,
    ],
    :DOUBLE_JUMP => [
      PBMoveRoute::JUMP, 0, 0,
      PBMoveRoute::WAIT, 10,
      PBMoveRoute::JUMP, 0, 0,
    ],
    :SPIN => [
      PBMoveRoute::TURN_RIGHT,
      PBMoveRoute::WAIT, 4,
      PBMoveRoute::TURN_DOWN,
      PBMoveRoute::WAIT, 4,
      PBMoveRoute::TURN_LEFT,
      PBMoveRoute::WAIT, 4,
      PBMoveRoute::TURN_UP,
    ],
    :SPIN_JUMP => [
      PBMoveRoute::TURN_RIGHT,
      PBMoveRoute::WAIT, 4,
      PBMoveRoute::TURN_DOWN,
      PBMoveRoute::WAIT, 4,
      PBMoveRoute::TURN_LEFT,
      PBMoveRoute::WAIT, 4,
      PBMoveRoute::TURN_UP,
      PBMoveRoute::WAIT, 4,
      PBMoveRoute::JUMP, 0, 0,
    ],
    :DANCE => [
      PBMoveRoute::TURN_RIGHT,
      PBMoveRoute::WAIT, 4,
      PBMoveRoute::JUMP, 0, 0,
      PBMoveRoute::WAIT, 10,
      PBMoveRoute::TURN_UP,
      PBMoveRoute::WAIT, 4,
      PBMoveRoute::JUMP, 0, 0,
      PBMoveRoute::WAIT, 10,
      PBMoveRoute::TURN_LEFT,
      PBMoveRoute::WAIT, 4,
      PBMoveRoute::JUMP, 0, 0,
      PBMoveRoute::WAIT, 10,
      PBMoveRoute::TURN_DOWN,
      PBMoveRoute::WAIT, 4,
      PBMoveRoute::JUMP, 0, 0,
    ],
    :STEP_BACK => [
      PBMoveRoute::WAIT, 8,
      PBMoveRoute::STEP_ANIME_ON,
      PBMoveRoute::WAIT, 16,
      PBMoveRoute::STEP_ANIME_OFF,
    ],
    :LOOK_AROUND => [
      PBMoveRoute::TURN_LEFT,
      PBMoveRoute::WAIT, 10,
      PBMoveRoute::TURN_UP,
      PBMoveRoute::WAIT, 10,
      PBMoveRoute::TURN_RIGHT,
      PBMoveRoute::WAIT, 10,
      PBMoveRoute::TURN_DOWN,
      PBMoveRoute::WAIT, 8,
      PBMoveRoute::TURN_TOWARD_PLAYER,
    ],
    :SNIFF => [
      PBMoveRoute::STEP_ANIME_ON,
      PBMoveRoute::FORWARD,
      PBMoveRoute::WAIT, 16,
      PBMoveRoute::BACKWARD,
      PBMoveRoute::STEP_ANIME_OFF,
      PBMoveRoute::TURN_TOWARD_PLAYER,
    ],
    :WIGGLE => [
      PBMoveRoute::TURN_LEFT,
      PBMoveRoute::WAIT, 3,
      PBMoveRoute::TURN_RIGHT,
      PBMoveRoute::WAIT, 3,
      PBMoveRoute::TURN_LEFT,
      PBMoveRoute::WAIT, 3,
      PBMoveRoute::TURN_TOWARD_PLAYER,
    ],
    :APPROACH => [
      PBMoveRoute::TOWARD_PLAYER,
      PBMoveRoute::WAIT, 12,
      PBMoveRoute::STEP_ANIME_ON,
      PBMoveRoute::WAIT, 16,
      PBMoveRoute::STEP_ANIME_OFF,
    ],
    :SHY_BACK => [
      PBMoveRoute::AWAY_FROM_PLAYER,
      PBMoveRoute::WAIT, 8,
      PBMoveRoute::TURN_TOWARD_PLAYER,
      PBMoveRoute::WAIT, 12,
    ],
    :ALERT => [
      PBMoveRoute::JUMP, 0, 0,
      PBMoveRoute::WAIT, 4,
      PBMoveRoute::TURN_LEFT,
      PBMoveRoute::WAIT, 4,
      PBMoveRoute::TURN_RIGHT,
      PBMoveRoute::WAIT, 4,
      PBMoveRoute::TURN_TOWARD_PLAYER,
    ],
    :SETTLE => [
      PBMoveRoute::STEP_ANIME_ON,
      PBMoveRoute::WAIT, 8,
      PBMoveRoute::TURN_RIGHT90,
      PBMoveRoute::WAIT, 8,
      PBMoveRoute::STEP_ANIME_OFF,
    ],
  }

  #=============================================================================
  # ENVIRONMENT TAGS — map terrain tag / map metadata to reaction contexts
  # Each context has a set of reactions keyed by minimum affection level.
  # :emote => which emote animation to play (from EMOTE_MAP)
  # :move  => which move route pattern to play (from MOVE_ROUTES, per tier)
  # :cry   => true to play the Pokemon cry on MAX affection reactions
  #=============================================================================
  REACTIONS = {
    #---------------------------------------------------------------------------
    # Outdoors / Sunny
    #---------------------------------------------------------------------------
    :SUNNY => {
      :condition => proc { |pkmn|
        next false unless $game_screen && $game_screen.weather_type == :Sun
        next true
      },
      :emote => { :LOW => :HAPPY, :MEDIUM => :HAPPY, :HIGH => :MUSIC, :MAX => :HEART },
      :move  => { :LOW => :LOOK_AROUND, :MEDIUM => :LOOK_AROUND, :HIGH => :SPIN, :MAX => :SPIN_JUMP },
      :cry   => true,
      :messages => {
        :LOW    => ["{1} is squinting in the bright sun."],
        :MEDIUM => ["{1} is happily basking in the sunlight!"],
        :HIGH   => ["{1} twirls around joyfully under the sun!",
                    "{1} looks at you and purrs contentedly."],
        :MAX    => ["{1} nuzzles against you in the warm sunlight!",
                    "{1} seems overjoyed to be out with you!"],
      },
    },
    #---------------------------------------------------------------------------
    # Rain
    #---------------------------------------------------------------------------
    :RAIN => {
      :condition => proc { |pkmn|
        next false unless $game_screen
        next [:Rain, :HeavyRain].include?($game_screen.weather_type)
      },
      :emote => { :LOW => :DOTS, :MEDIUM => :HAPPY, :HIGH => :MUSIC, :MAX => :MUSIC },
      :move  => { :LOW => :WIGGLE, :MEDIUM => :WIGGLE, :HIGH => :DOUBLE_JUMP, :MAX => :DANCE },
      :cry   => false,
      :messages => {
        :LOW    => ["{1} shakes the rain off its body."],
        :MEDIUM => ["{1} doesn't seem to mind the rain with you around.",
                    "{1} splashes in a puddle!"],
        :HIGH   => ["{1} seems to enjoy the rain!",
                    "{1} trots happily through the raindrops."],
        :MAX    => ["{1} dances in the rain, overjoyed!"],
      },
    },
    #---------------------------------------------------------------------------
    # Snow / Hail
    #---------------------------------------------------------------------------
    :SNOW => {
      :condition => proc { |pkmn|
        next false unless $game_screen
        next [:Snow, :Blizzard, :Hail].include?($game_screen.weather_type)
      },
      :emote => { :LOW => :DOTS, :MEDIUM => :DOTS, :HIGH => :HAPPY, :MAX => :HEART },
      :move  => { :LOW => :WIGGLE, :MEDIUM => :WIGGLE, :HIGH => :DOUBLE_JUMP, :MAX => :APPROACH },
      :cry   => false,
      :messages => {
        :LOW    => ["{1} shivers a little in the cold."],
        :MEDIUM => ["{1} breathes out a puff of warm air.",
                    "{1} looks a bit chilly but stays close."],
        :HIGH   => ["{1} hops through the snow playfully!"],
        :MAX    => ["{1} cuddles up to you for warmth!",
                    "{1} catches snowflakes on its nose!"],
      },
    },
    #---------------------------------------------------------------------------
    # Cave / Darkness
    #---------------------------------------------------------------------------
    :CAVE => {
      :condition => proc { |pkmn|
        next false unless $game_map
        metadata = GameData::MapMetadata.try_get($game_map.map_id)
        names = CompanionPokemon.current_map_identity
        environment = CompanionPokemon.current_battle_environment
        next (metadata && (metadata.dark_map || metadata.snap_edges)) ||
             environment == :Cave ||
             names.match?(/cave|cavern|tunnel|mine|grotto|underground/)
      },
      :emote => { :LOW => :DOTS, :MEDIUM => :DOTS, :HIGH => :HAPPY, :MAX => :ANGRY },
      :move  => { :LOW => :SHY_BACK, :MEDIUM => :LOOK_AROUND, :HIGH => :LOOK_AROUND, :MAX => :ALERT },
      :cry   => true,
      :messages => {
        :LOW    => ["{1} looks uneasy in the dark...",
                    "{1} stays very close behind you."],
        :MEDIUM => ["{1} nervously looks around the cave.",
                    "{1} jumps at a sound in the distance!"],
        :HIGH   => ["{1} trusts you enough to keep calm here.",
                    "{1} sticks close, watching your back."],
        :MAX    => ["{1} bravely leads the way through the darkness!",
                    "{1} seems alert and protective of you."],
      },
    },
    #---------------------------------------------------------------------------
    # Near Water (surfing terrain)
    #---------------------------------------------------------------------------
    :WATER => {
      :condition => proc { |pkmn|
        next false unless $game_player && $game_map
        x = $game_player.x
        y = $game_player.y
        # Check adjacent tiles for water terrain
        has_water = false
        [[-1,0],[1,0],[0,-1],[0,1]].each do |dx, dy|
          terrain = $game_map.terrain_tag(x + dx, y + dy)
          has_water = true if terrain.can_surf
        end
        next has_water
      },
      :emote => { :LOW => :DOTS, :MEDIUM => :HAPPY, :HIGH => :MUSIC, :MAX => :HEART },
      :move  => { :LOW => :LOOK_AROUND, :MEDIUM => :SNIFF, :HIGH => :JUMP, :MAX => :DOUBLE_JUMP },
      :cry   => false,
      :messages => {
        :LOW    => ["{1} gazes at the water."],
        :MEDIUM => ["{1} dips a paw into the water!",
                    "{1} watches the ripples curiously."],
        :HIGH   => ["{1} splashes around happily at the water's edge!"],
        :MAX    => ["{1} wants to play in the water with you!"],
      },
    },
    #---------------------------------------------------------------------------
    # Near Trainer (when a trainer is close)
    #---------------------------------------------------------------------------
    :TRAINER_NEARBY => {
      :condition => proc { |pkmn|
        next false unless $game_map && $game_player
        px = $game_player.x
        py = $game_player.y
        alert = false
        $game_map.events.each_value do |event|
          next unless event.name && event.name[/trainer/i]
          dist = (event.x - px).abs + (event.y - py).abs
          alert = true if dist <= 5
        end
        next alert
      },
      :emote => { :LOW => :DOTS, :MEDIUM => :ANGRY, :HIGH => :ANGRY, :MAX => :ANGRY },
      :move  => { :LOW => :LOOK_AROUND, :MEDIUM => :ALERT, :HIGH => :ALERT, :MAX => :DOUBLE_JUMP },
      :cry   => true,
      :messages => {
        :LOW    => ["{1} tenses up, sensing someone nearby."],
        :MEDIUM => ["{1} growls softly in warning...",
                    "{1}'s ears perk up!"],
        :HIGH   => ["{1} gets into a battle stance!",
                    "{1} looks ready to protect you!"],
        :MAX    => ["{1} stands bravely in front of you, ready to fight!"],
      },
    },
    #---------------------------------------------------------------------------
    # Gym / important building
    #---------------------------------------------------------------------------
    :GYM => {
      :condition => proc { |pkmn|
        next false unless $game_map
        names = CompanionPokemon.current_map_identity
        next names.match?(/gym|league|arena|elite|champion/)
      },
      :emote => { :LOW => :DOTS, :MEDIUM => :HAPPY, :HIGH => :ANGRY, :MAX => :ANGRY },
      :move  => { :LOW => :LOOK_AROUND, :MEDIUM => :LOOK_AROUND, :HIGH => :JUMP, :MAX => :SPIN_JUMP },
      :cry   => true,
      :messages => {
        :LOW    => ["{1} seems nervous about what's ahead."],
        :MEDIUM => ["{1} takes a deep breath, preparing itself."],
        :HIGH   => ["{1} is pumped up and ready for battle!"],
        :MAX    => ["{1} looks at you with burning determination!",
                    "{1} bumps your hand confidently!"],
      },
    },
    #---------------------------------------------------------------------------
    # Generic outdoor (fallback when nothing else triggers)
    #---------------------------------------------------------------------------
    :OUTDOOR => {
      :condition => proc { |pkmn|
        next false unless $game_map
        next $game_map.metadata&.outdoor_map rescue true
      },
      :emote => { :LOW => nil, :MEDIUM => :HAPPY, :HIGH => :MUSIC, :MAX => :HEART },
      :move  => { :LOW => :LOOK_AROUND, :MEDIUM => :SNIFF, :HIGH => :JUMP, :MAX => :SPIN_JUMP },
      :cry   => false,
      :messages => {
        :LOW    => ["{1} follows along quietly."],
        :MEDIUM => ["{1} looks around with curiosity.",
                    "{1} sniffs the air."],
        :HIGH   => ["{1} hums happily as it walks beside you!",
                    "{1} trots along cheerfully."],
        :MAX    => ["{1} nudges your hand affectionately.",
                    "{1} seems thrilled to be on an adventure with you!",
                    "{1} gazes at you with complete trust."],
      },
    },
    #---------------------------------------------------------------------------
    # Sandstorm
    #---------------------------------------------------------------------------
    :SANDSTORM => {
      :condition => proc { |pkmn|
        next false unless $game_screen
        next $game_screen.weather_type == :Sandstorm
      },
      :emote => { :LOW => :ANGRY, :MEDIUM => :DOTS, :HIGH => :DOTS, :MAX => :HAPPY },
      :move  => { :LOW => :SHY_BACK, :MEDIUM => :WIGGLE, :HIGH => :LOOK_AROUND },
      :cry   => false,
      :messages => {
        :LOW    => ["{1} is covered in sand...",
                    "{1} spat out a mouthful of sand!"],
        :MEDIUM => ["{1} is squinting through the sandstorm.",
                    "{1} is trying to shield its eyes from the sand."],
        :HIGH   => ["{1} pushes through the sandstorm, staying close.",
                    "{1} doesn't let the sand slow it down."],
        :MAX    => ["{1} braves the sandstorm beside you without flinching!"],
      },
    },
    #---------------------------------------------------------------------------
    # Storm / Thunder
    #---------------------------------------------------------------------------
    :STORM => {
      :condition => proc { |pkmn|
        next false unless $game_screen
        next $game_screen.weather_type == :Storm
      },
      :emote => { :LOW => :DOTS, :MEDIUM => :DOTS, :HIGH => :HAPPY, :MAX => :ANGRY },
      :move  => { :LOW => :SHY_BACK, :MEDIUM => :WIGGLE, :HIGH => :LOOK_AROUND, :MAX => :ALERT },
      :cry   => true,
      :messages => {
        :LOW    => ["{1} flinched at a flash of lightning!",
                    "{1} is shaking from the thunder..."],
        :MEDIUM => ["{1} looks uneasy in the storm.",
                    "{1} was startled by the lightning and pressed against you!"],
        :HIGH   => ["{1} watches the storm with determination.",
                    "{1} isn't going to let a little storm stop it!"],
        :MAX    => ["{1} stares into the storm defiantly!",
                    "{1} lets out a cry that rivals the thunder!"],
      },
    },
    #---------------------------------------------------------------------------
    # Forest (map flag)
    #---------------------------------------------------------------------------
    :FOREST => {
      :condition => proc { |pkmn|
        next false unless $game_map
        metadata = $game_map.metadata
        names = CompanionPokemon.current_map_identity
        next (metadata && (metadata.has_flag?("Forest") rescue false)) ||
             CompanionPokemon.current_battle_environment == :Forest ||
             names.match?(/forest|woods|grove|jungle|garden|natural park/)
      },
      :emote => { :LOW => :HAPPY, :MEDIUM => :MUSIC, :HIGH => :MUSIC, :MAX => :HEART },
      :move  => { :MEDIUM => :JUMP, :HIGH => :SPIN, :MAX => :DANCE },
      :cry   => false,
      :messages => {
        :LOW    => ["{1} is sniffing at the plants curiously.",
                    "{1} is staring at a bug on a leaf."],
        :MEDIUM => ["{1} is wandering around enjoying the forest scenery.",
                    "{1} is listening to the rustling leaves.",
                    "{1} is playing with a leaf!"],
        :HIGH   => ["{1} is jumping around restlessly in the forest!",
                    "{1} is staring at the light filtering through the trees.",
                    "{1} got tangled in a branch for a second!"],
        :MAX    => ["{1} looks completely at peace in the forest with you.",
                    "{1} found a nice sunny spot between the trees!"],
      },
    },
    #---------------------------------------------------------------------------
    # Beach (map flag)
    #---------------------------------------------------------------------------
    :BEACH => {
      :condition => proc { |pkmn|
        next false unless $game_map
        metadata = $game_map.metadata
        names = CompanionPokemon.current_map_identity
        next (metadata && (metadata.has_flag?("Beach") rescue false)) ||
             names.match?(/beach|shore|coast|seaside/)
      },
      :emote => { :LOW => :HAPPY, :MEDIUM => :HAPPY, :HIGH => :MUSIC, :MAX => :HEART },
      :move  => { :MEDIUM => :JUMP, :HIGH => :DOUBLE_JUMP, :MAX => :DANCE },
      :cry   => false,
      :messages => {
        :LOW    => ["{1} is staring at the ocean.",
                    "{1} paws at the sand curiously."],
        :MEDIUM => ["{1} is playing in the sand!",
                    "{1} seems to enjoy the sound of the waves.",
                    "{1} is staring at your footprints in the sand."],
        :HIGH   => ["{1} is rolling around in the sand!",
                    "{1} keeps trying to push you towards the water!",
                    "{1} is excitedly watching the waves crash!"],
        :MAX    => ["{1} looks like it's having the time of its life at the beach!",
                    "{1} is building a little sand pile with its paws!"],
      },
    },
    #---------------------------------------------------------------------------
    # Pokemon Center (map flag)
    #---------------------------------------------------------------------------
    :POKECENTER => {
      :condition => proc { |pkmn|
        next false unless $game_map
        metadata = $game_map.metadata
        names = CompanionPokemon.current_map_identity
        next (metadata && (metadata.has_flag?("PokeCenter") rescue false)) ||
             names.match?(/pok[eé].*center|healing center/)
      },
      :emote => { :LOW => :HAPPY, :MEDIUM => :HAPPY, :HIGH => :HEART, :MAX => :HEART },
      :move  => { :LOW => :LOOK_AROUND, :MEDIUM => :SNIFF, :HIGH => :SETTLE, :MAX => :APPROACH },
      :cry   => false,
      :messages => {
        :LOW    => ["{1} looks relieved to be in a safe place."],
        :MEDIUM => ["{1} chirps a greeting at the nurse.",
                    "{1} seems fascinated by the healing machine.",
                    "{1} is making itself comfortable."],
        :HIGH   => ["{1} looks happy and relaxed in the Pokemon Center.",
                    "{1} seems to be completely at ease here."],
        :MAX    => ["{1} nuzzles the nurse gratefully!",
                    "{1} is relaxing with a content expression."],
      },
    },
    #---------------------------------------------------------------------------
    # Player's House
    #---------------------------------------------------------------------------
    :HOME => {
      :condition => proc { |pkmn|
        next false unless $game_map && $player
        names = CompanionPokemon.current_map_identity
        next names.include?($player.name.downcase) ||
             names.match?(/player.*house|your house|home/)
      },
      :emote => { :LOW => :HAPPY, :MEDIUM => :HAPPY, :HIGH => :HEART, :MAX => :HEART },
      :move  => { :LOW => :SNIFF, :MEDIUM => :LOOK_AROUND, :HIGH => :SPIN, :MAX => :APPROACH },
      :cry   => true,
      :messages => {
        :LOW    => ["{1} is sniffing around the room curiously."],
        :MEDIUM => ["{1} seems to recognize your scent everywhere.",
                    "{1} is looking at your belongings."],
        :HIGH   => ["{1} rolls around on the floor happily!",
                    "{1} seems to feel right at home here."],
        :MAX    => ["{1} curls up beside your bed contentedly.",
                    "{1} looks at you as if to say 'this is OUR home.'"],
      },
    },
    #---------------------------------------------------------------------------
    # Night time (outdoor only, 20:00-05:00)
    #---------------------------------------------------------------------------
    :NIGHT => {
      :condition => proc { |pkmn|
        next false unless $game_map
        outdoor = $game_map.metadata&.outdoor_map rescue false
        next false unless outdoor
        hour = pbGetTimeNow.hour rescue 12
        next hour >= 20 || hour < 5
      },
      :emote => { :LOW => :DOTS, :MEDIUM => :DOTS, :HIGH => :HAPPY, :MAX => :HEART },
      :move  => { :LOW => :LOOK_AROUND, :MEDIUM => :LOOK_AROUND, :HIGH => :SETTLE, :MAX => :APPROACH },
      :cry   => false,
      :messages => {
        :LOW    => ["{1} looks a little sleepy...",
                    "{1} keeps close in the dark."],
        :MEDIUM => ["{1} is yawning widely.",
                    "{1} is looking up at the stars.",
                    "{1} stumbles slightly in the darkness."],
        :HIGH   => ["{1} is gazing at the moon peacefully.",
                    "{1} seems to enjoy the quiet of the night."],
        :MAX    => ["{1} leans against you under the starlight.",
                    "{1} looks up at the stars, then at you, completely content."],
      },
    },
    #---------------------------------------------------------------------------
    # Pokemon Lab (map flag)
    #---------------------------------------------------------------------------
    :LAB => {
      :condition => proc { |pkmn|
        next false unless $game_map
        metadata = $game_map.metadata
        names = CompanionPokemon.current_map_identity
        next (metadata && (metadata.has_flag?("PokemonLab") rescue false)) ||
             names.match?(/pok[eé]mon lab|institute|laboratory|professor/)
      },
      :emote => { :LOW => :DOTS, :MEDIUM => :DOTS, :HIGH => :HAPPY, :MAX => :HAPPY },
      :move  => { :LOW => :LOOK_AROUND, :MEDIUM => :SNIFF, :HIGH => :LOOK_AROUND, :MAX => :SNIFF },
      :cry   => false,
      :messages => {
        :LOW    => ["{1} is touching some kind of switch...",
                    "{1} seems confused by all the machinery."],
        :MEDIUM => ["{1} has a cord in its mouth!",
                    "{1} seems to want to touch the equipment."],
        :HIGH   => ["{1} is watching the scientists with curiosity.",
                    "{1} is trying to read the screens."],
        :MAX    => ["{1} presses its nose against a monitor curiously!"],
      },
    },
    #---------------------------------------------------------------------------
    # Bridge — crossing a bridge (uses $PokemonGlobal.bridge)
    #---------------------------------------------------------------------------
    :BRIDGE => {
      :condition => proc { |pkmn|
        next($PokemonGlobal.bridge > 0) rescue false
      },
      :emote => { :LOW => :DOTS, :MEDIUM => :HAPPY, :HIGH => :HAPPY, :MAX => :MUSIC },
      :move  => { :MEDIUM => :JUMP, :HIGH => :JUMP, :MAX => :DOUBLE_JUMP },
      :cry   => false,
      :messages => {
        :LOW    => ["{1} glances nervously over the edge of the bridge.",
                    "{1} is treading carefully across the bridge."],
        :MEDIUM => ["{1} looks down and shuffles a bit closer to you.",
                    "{1} peeks over the railing with curiosity.",
                    "{1} is watching the water below with wide eyes."],
        :HIGH   => ["{1} is trotting across the bridge confidently!",
                    "{1} stops mid-bridge to enjoy the view.",
                    "{1} leans over to watch the river below."],
        :MAX    => ["{1} is practically skipping across the bridge!",
                    "{1} pauses to feel the wind and looks incredibly happy.",
                    "{1} poses heroically on the bridge like an adventurer!"],
      },
    },

    #---------------------------------------------------------------------------
    # Ice Sliding — sliding on ice puzzle tiles
    #---------------------------------------------------------------------------
    :ICE_SLIDING => {
      :condition => proc { |pkmn|
        next($PokemonGlobal.ice_sliding) rescue false
      },
      :emote => { :LOW => :DOTS, :MEDIUM => :DOTS, :HIGH => :HAPPY, :MAX => :MUSIC },
      :move  => { :HIGH => :SPIN, :MAX => :SPIN_JUMP },
      :cry   => false,
      :messages => {
        :LOW    => ["{1} is struggling to keep its balance on the ice!",
                    "{1} slips and scrambles to catch up to you!"],
        :MEDIUM => ["{1} is sliding after you, legs flailing!",
                    "{1} looks dizzy from all the sliding!",
                    "{1} just bumped into you from behind!"],
        :HIGH   => ["{1} is starting to enjoy the ice sliding!",
                    "{1} does a little spin on the ice!",
                    "{1} is giggling as it slides across the floor!"],
        :MAX    => ["{1} slides past you and strikes a pose!",
                    "{1} is doing figure skating moves on the ice!",
                    "{1} twirls gracefully and slides back to your side!",
                    "{1} learned to ice skate just to keep up with you!"],
      },
    },

    #---------------------------------------------------------------------------
    # Fog
    #---------------------------------------------------------------------------
    :FOG => {
      :condition => proc { |pkmn|
        next false unless $game_screen
        next $game_screen.weather_type == :Fog
      },
      :emote => { :LOW => :DOTS, :MEDIUM => :DOTS, :HIGH => :HAPPY, :MAX => :MUSIC },
      :move  => { :LOW => :STEP_BACK, :HIGH => :JUMP },
      :cry   => false,
      :messages => {
        :LOW    => ["{1} can barely see and is sticking very close...",
                    "{1} bumped into you in the fog!"],
        :MEDIUM => ["{1} sniffs the thick foggy air curiously.",
                    "{1} is squinting through the mist."],
        :HIGH   => ["{1} navigates the fog like a pro!",
                    "{1} uses its senses to guide the way through the mist."],
        :MAX    => ["{1} walks confidently through the fog with you — nothing can separate you!",
                    "{1} stays right at your side, a warm presence in the cold fog."],
      },
    },
    #---------------------------------------------------------------------------
    # Mountain / Peak / Summit / Cliff
    #---------------------------------------------------------------------------
    :MOUNTAIN => {
      :condition => proc { |pkmn|
        next false unless $game_map
        metadata = $game_map.metadata
        if metadata && (metadata.has_flag?("Mountain") rescue false)
          next true
        end
        names = CompanionPokemon.current_map_identity
        next names.match?(/mountain|peak|summit|cliff|ridge|volcano|plateau/)
      },
      :emote => { :LOW => :DOTS, :MEDIUM => :HAPPY, :HIGH => :MUSIC, :MAX => :HEART },
      :move  => { :MEDIUM => :JUMP, :HIGH => :DOUBLE_JUMP, :MAX => :SPIN_JUMP },
      :cry   => true,
      :messages => {
        :LOW    => ["{1} is panting from the steep climb...",
                    "{1} looks tired from climbing."],
        :MEDIUM => ["{1} pauses to catch its breath on the mountain.",
                    "{1} looks around at the mountain scenery with awe."],
        :HIGH   => ["{1} is energized by the mountain air!",
                    "{1} races ahead up the mountain path!",
                    "{1} is enjoying the view from up high!"],
        :MAX    => ["{1} stands at the peak and lets out a triumphant cry!",
                    "{1} looks out over the valley with you — together at the top of the world!",
                    "{1} is so proud of climbing this mountain with you!"],
      },
    },
    #---------------------------------------------------------------------------
    # Lake / River / Pond / Waterfall
    #---------------------------------------------------------------------------
    :LAKE => {
      :condition => proc { |pkmn|
        next false unless $game_map
        metadata = $game_map.metadata
        if metadata && (metadata.has_flag?("Lake") rescue false)
          next true
        end
        names = CompanionPokemon.current_map_identity
        next names.match?(/lake|river|pond|falls|waterfall|harbor|port|dock|island/)
      },
      :emote => { :LOW => :HAPPY, :MEDIUM => :HAPPY, :HIGH => :MUSIC, :MAX => :HEART },
      :move  => { :MEDIUM => :JUMP, :HIGH => :DOUBLE_JUMP, :MAX => :DANCE },
      :cry   => false,
      :messages => {
        :LOW    => ["{1} is gazing at the water quietly.",
                    "{1} watches the water flow by."],
        :MEDIUM => ["{1} skips a stone across the water!",
                    "{1} is watching the fish swimming below.",
                    "{1} is listening to the sound of the water."],
        :HIGH   => ["{1} splashes its paw in the water playfully!",
                    "{1} is fascinated by its own reflection in the water!",
                    "{1} found a pretty stone by the waterside!"],
        :MAX    => ["{1} is sitting peacefully by the water with you.",
                    "{1} nuzzles you by the lakeside — what a perfect spot!",
                    "{1} wants to come back here with you again someday!"],
      },
    },
    #---------------------------------------------------------------------------
    # Morning (outdoor, 5AM-10AM)
    #---------------------------------------------------------------------------
    :MORNING => {
      :condition => proc { |pkmn|
        next false unless $game_map
        outdoor = $game_map.metadata&.outdoor_map rescue false
        next false unless outdoor
        hour = pbGetTimeNow.hour rescue 12
        next hour >= 5 && hour < 10
      },
      :emote => { :LOW => nil, :MEDIUM => :HAPPY, :HIGH => :MUSIC, :MAX => :HEART },
      :move  => { :MEDIUM => :JUMP, :MAX => :SPIN },
      :cry   => false,
      :messages => {
        :LOW    => ["{1} yawns and stretches in the morning light.",
                    "{1} blinks sleepily as the sun rises."],
        :MEDIUM => ["{1} seems refreshed by the cool morning air.",
                    "{1} took a deep breath of the crisp morning air!"],
        :HIGH   => ["{1} is watching the sunrise with a peaceful expression.",
                    "{1} stretches its body in the morning light and looks energized!"],
        :MAX    => ["{1} greets the new day with you by its side — pure bliss!",
                    "{1} nuzzles you gently in the soft morning glow."],
      },
    },
    #---------------------------------------------------------------------------
    # Surfing — player is surfing on water
    #---------------------------------------------------------------------------
    :SURFING => {
      :condition => proc { |pkmn|
        next($PokemonGlobal.surfing) rescue false
      },
      :emote => { :LOW => :DOTS, :MEDIUM => :HAPPY, :HIGH => :MUSIC, :MAX => :HEART },
      :move  => { :HIGH => :JUMP, :MAX => :DOUBLE_JUMP },
      :cry   => false,
      :messages => {
        :LOW    => ["{1} is paddling hard to keep up!",
                    "{1} looks a bit nervous on the water..."],
        :MEDIUM => ["{1} is getting the hang of surfing!",
                    "{1} splashes along behind you on the water."],
        :HIGH   => ["{1} is riding the waves like a natural!",
                    "{1} is having a blast surfing alongside you!"],
        :MAX    => ["{1} surfs beside you in perfect sync — what a team!",
                    "{1} leaps out of the water joyfully and dives back in!"],
      },
    },
    #---------------------------------------------------------------------------
    # Diving — player is diving underwater
    #---------------------------------------------------------------------------
    :DIVING => {
      :condition => proc { |pkmn|
        next($PokemonGlobal.diving) rescue false
      },
      :emote => { :LOW => :DOTS, :MEDIUM => :DOTS, :HIGH => :HAPPY, :MAX => :MUSIC },
      :move  => { :HIGH => :SPIN },
      :cry   => false,
      :messages => {
        :LOW    => ["{1} is holding its breath!",
                    "{1} looks around the underwater world nervously."],
        :MEDIUM => ["{1} is watching the bubbles rise with fascination.",
                    "{1} is swimming alongside you carefully."],
        :HIGH   => ["{1} is darting around underwater, exploring everything!",
                    "{1} found a pretty shell on the ocean floor!"],
        :MAX    => ["{1} glides through the water gracefully with you — a magical moment!",
                    "{1} points excitedly at the colorful coral and sea life!"],
      },
    },
    #---------------------------------------------------------------------------
    # Bicycle — player is riding a bicycle
    #---------------------------------------------------------------------------
    :BICYCLE => {
      :condition => proc { |pkmn|
        next($PokemonGlobal.bicycle) rescue false
      },
      :emote => { :LOW => :DOTS, :MEDIUM => :HAPPY, :HIGH => :MUSIC, :MAX => :HEART },
      :move  => { :HIGH => :DOUBLE_JUMP, :MAX => :SPIN_JUMP },
      :cry   => false,
      :messages => {
        :LOW    => ["{1} is running hard to keep up with the bike!",
                    "{1} is panting as it chases after you!"],
        :MEDIUM => ["{1} matches your pace easily on the bike!",
                    "{1} seems to enjoy running alongside the bicycle."],
        :HIGH   => ["{1} is racing your bike and winning!",
                    "{1} is sprinting alongside you with a huge grin!"],
        :MAX    => ["{1} is keeping pace effortlessly — you're both flying!",
                    "{1} leaps over obstacles as you bike side by side!"],
      },
    },
    #---------------------------------------------------------------------------
    # Indoors generic (fallback for non-outdoor, non-flagged maps)
    #---------------------------------------------------------------------------
    :INDOORS => {
      :condition => proc { |pkmn|
        next false unless $game_map
        outdoor = $game_map.metadata&.outdoor_map rescue false
        next !outdoor
      },
      :emote => { :LOW => nil, :MEDIUM => :HAPPY, :HIGH => :HAPPY, :MAX => :HEART },
      :move  => { :LOW => :LOOK_AROUND, :MEDIUM => :SNIFF, :HIGH => :SETTLE, :MAX => :APPROACH },
      :cry   => false,
      :messages => {
        :LOW    => ["{1} is looking around the room."],
        :MEDIUM => ["{1} sniffs at the furniture curiously.",
                    "{1} is pacing around slowly."],
        :HIGH   => ["{1} found a cozy spot and settled down for a moment.",
                    "{1} is watching people come and go."],
        :MAX    => ["{1} stays close to you, perfectly relaxed.",
                    "{1} seems happy just being near you indoors."],
      },
    },
  }

  #=============================================================================
  # TYPE-SPECIFIC BONUS REACTIONS
  # Fire types react differently to rain, Ice types love snow, etc.
  #=============================================================================
  TYPE_REACTIONS = {
    :FIRE => {
      :RAIN    => ["{1} flickers unhappily in the rain...",
                   "{1}'s flame sputters a little.",
                   "{1} is shivering... The rain is really bothering it."],
      :SUNNY   => ["{1}'s body glows brighter in the sunlight!",
                   "{1} breathed a small puff of smoke into the air.",
                   "{1}'s tail flame is burning intensely!"],
      :SNOW    => ["{1} is trying to keep its flame lit in the cold!",
                   "{1} shivers and inches closer to you for warmth."],
      :STORM   => ["{1} looks nervous as rain and lightning clash...",
                   "{1}'s flame keeps flickering in the storm!"],
    },
    :WATER => {
      :RAIN    => ["{1} is energized by the rain!",
                   "{1} opens its mouth to catch raindrops!",
                   "{1} is happily splashing around in the puddles!"],
      :WATER   => ["{1} can barely contain its excitement near the water!",
                   "{1} is staring at the water with longing eyes!"],
      :SUNNY   => ["{1} seems a bit warm... It keeps looking for shade.",
                   "{1}'s skin is drying out a little in the sun."],
      :BEACH   => ["{1} is ecstatic to be at the beach!",
                   "{1} can't wait to jump into the waves!"],
      :SURFING => ["{1} is in its element! It swims circles around you!",
                   "{1} dives under the water and pops back up splashing!"],
      :DIVING  => ["{1} is gliding through the water effortlessly!",
                   "{1} is exploring every nook of the underwater world!"],
      :LAKE    => ["{1} wants to dive into the lake so badly!",
                   "{1} is testing the water temperature with excitement!"],
    },
    :ICE => {
      :SNOW    => ["{1} feels right at home in the snow!",
                   "{1} makes a little snow angel!",
                   "{1} is gnawing on a piece of hailstone cheerfully!"],
      :SUNNY   => ["{1} seems a bit uncomfortable in the heat...",
                   "{1} is trying to find some shade..."],
      :CAVE    => ["{1} seems to enjoy the cool temperature in here.",
                   "{1}'s breath is creating little ice crystals!"],
      :MOUNTAIN => ["{1} loves the cold mountain air!",
                    "{1} is sliding down an icy slope gleefully!"],
      :DIVING   => ["{1} freezes the water around it as it swims!"],
    },
    :GRASS => {
      :SUNNY   => ["{1} soaks up the sunlight, feeling energized!",
                   "{1} stretched its leaves out towards the sun."],
      :RAIN    => ["{1} seems to grow a bit taller in the rain!",
                   "{1} is happily absorbing the rainwater!"],
      :FOREST  => ["{1} is completely in its element among the trees!",
                   "{1} released a sweet, floral scent into the air.",
                   "{1} is swaying gently, catching a breeze only it can feel."],
      :SANDSTORM => ["{1} is wilting a little in the sand and wind..."],
      :LAKE    => ["{1} dips its roots into the water and sighs contentedly.",
                   "{1} is admiring the lily pads by the water's edge."],
      :MORNING => ["{1} stretches its leaves wide to greet the morning sun!"],
    },
    :DARK => {
      :CAVE    => ["{1} moves through the darkness with ease!",
                   "{1} seems perfectly at home in the dark.",
                   "{1}'s eyes gleam in the shadows."],
      :NIGHT   => ["{1} comes alive in the darkness of night!",
                   "{1} is prowling through the shadows comfortably."],
    },
    :GHOST => {
      :CAVE    => ["{1} flickers in and out of visibility, enjoying itself!",
                   "{1} makes spooky noises just to mess with you!"],
      :NIGHT   => ["{1} is floating around eerily in the moonlight!",
                   "{1} tried to scare you and is laughing!",
                   "{1} disappears for a moment, then pops back up giggling!"],
    },
    :ELECTRIC => {
      :RAIN    => ["{1} crackles with extra electricity in the storm!"],
      :STORM   => ["{1} is staring at the lightning with excitement!",
                   "{1} is happily zapping and jumping in circles!",
                   "{1} shouted at the sky as lightning struck nearby!"],
      :FOG     => ["{1}'s static makes the fog crackle and spark!"],
      :SURFING => ["{1} is generating tiny sparks on the water surface!"],
    },
    :FIGHTING => {
      :GYM     => ["{1} is shadowboxing in anticipation!",
                   "{1} stretches, ready for the challenge!",
                   "{1} is doing warm-up exercises!"],
      :TRAINER_NEARBY => ["{1} cracks its knuckles, ready for anything!",
                          "{1} is bouncing on its feet, eager to battle!"],
    },
    :PSYCHIC => {
      :LAB     => ["{1} is reading the data on a screen with its mind!",
                   "{1}'s eyes glow faintly as it senses the equipment."],
      :CAVE    => ["{1} senses something deep within the cave...",
                   "{1}'s psychic aura illuminates its surroundings faintly."],
      :NIGHT   => ["{1} is meditating peacefully under the stars."],
    },
    :DRAGON => {
      :STORM   => ["{1} roars into the storm without fear!",
                   "{1} seems to draw power from the raging weather!"],
      :GYM     => ["{1} is radiating an intense, ancient power!",
                   "{1} looks at the gym with a predator's gaze."],
      :CAVE    => ["{1} seems to feel an ancient kinship with the cave."],
      :MOUNTAIN => ["{1} lets out a primal roar that echoes through the peaks!",
                    "{1} claims the mountaintop as its own domain!"],
    },
    :FAIRY => {
      :FOREST  => ["{1} is dancing between the flowers happily!",
                   "{1} is sprinkling sparkles as it moves through the trees!",
                   "{1} seems to be communicating with the forest spirits!"],
      :NIGHT   => ["{1} glows softly in the moonlight, ethereal and beautiful.",
                   "{1} is playing with the fireflies!"],
      :SUNNY   => ["{1} sparkles beautifully in the sunlight!"],
    },
    :STEEL => {
      :SANDSTORM => ["{1} doesn't mind the sandstorm one bit.",
                     "{1}'s metallic body easily shrugs off the sand."],
      :LAB     => ["{1} examines the machinery with surprising interest.",
                   "{1}'s body resonates faintly with the equipment."],
      :CAVE    => ["{1}'s metal body echoes slightly in the cave."],
    },
    :ROCK => {
      :SANDSTORM => ["{1} is completely unbothered by the sandstorm.",
                     "{1} is right at home in the sandy wind!"],
      :CAVE    => ["{1} blends in perfectly with the cave walls.",
                   "{1} seems to feel very comfortable underground."],
      :BEACH   => ["{1} found a nice warm spot on the rocks!"],
      :MOUNTAIN => ["{1} is scaling the rocky terrain with ease!",
                    "{1} feels right at home on this mountain!"],
    },
    :GROUND => {
      :SANDSTORM => ["{1} is rolling in the sand happily!",
                     "{1} feels the earth beneath it and is content."],
      :CAVE    => ["{1} can feel the vibrations deep underground.",
                   "{1} seems to know exactly where it's going."],
      :MOUNTAIN => ["{1} digs its claws into the mountain trail with confidence!",
                    "{1} senses the ancient rock formations deep below."],
    },
    :FLYING => {
      :STORM   => ["{1} is struggling against the strong winds!",
                   "{1} had to tuck its wings in tight!"],
      :SUNNY   => ["{1} is soaring and gliding in the warm updrafts!",
                   "{1} spreads its wings wide in the sunshine!"],
      :OUTDOOR => ["{1} takes a brief flight and circles back to you!",
                   "{1} is watching the clouds drift by."],
      :MOUNTAIN => ["{1} takes off and soars above the mountain peak!",
                    "{1} rides the mountain updrafts with its wings spread wide!"],
      :SURFING  => ["{1} skims the water surface alongside you!",
                    "{1} glides above the waves effortlessly!"],
      :FOG      => ["{1} flies above the fog and reports what it sees!"],
    },
    :BUG => {
      :FOREST  => ["{1} is buzzing excitedly among the trees!",
                   "{1} found a friend! A wild bug Pokemon waves at it!",
                   "{1} is fascinated by the other insects."],
      :RAIN    => ["{1} is hiding under a leaf to stay dry!"],
      :NIGHT   => ["{1} is drawn to any nearby light sources."],
    },
    :POISON => {
      :CAVE    => ["{1} found some interesting mushrooms to sniff!",
                   "{1} seems very comfortable in the damp cave."],
      :FOREST  => ["{1} is examining the plants for toxic compounds.",
                   "{1} puffs out a tiny cloud of purple gas."],
    },
    :NORMAL => {
      :HOME    => ["{1} is so happy to be home! It's rolling on the floor!",
                   "{1} found its favorite spot and curled up."],
      :POKECENTER => ["{1} is watching the nurse with admiration.",
                      "{1} seems very relaxed in the Pokemon Center."],
      :OUTDOOR => ["{1} is trotting along happily, tail wagging!",
                   "{1} sniffs everything it passes with great interest."],
    },
  }

  #=============================================================================
  # SHINY POKEMON REACTIONS
  # Special reactions when the follower is a shiny Pokemon.
  # Checked with a 15% chance per reaction cycle.
  #=============================================================================
  SHINY_REACTIONS_ENABLED = true
  SHINY_REACTION_CHANCE   = 15  # % chance per reaction check

  SHINY_REACTIONS = {
    :emote => :HEART,
    :move  => :SPIN,
    :messages => {
      :LOW    => ["{1}'s unusual coloring catches the light beautifully.",
                  "{1} sparkles faintly — what a rare sight!"],
      :MEDIUM => ["{1}'s unique colors seem to shimmer in this light!",
                  "People stop to stare at {1}'s rare coloring!"],
      :HIGH   => ["{1} seems proud of its special appearance!",
                  "{1}'s rare coloring makes it stand out magnificently!",
                  "{1} poses, showing off its beautiful shiny form!"],
      :MAX    => ["{1} gleams with a radiance that matches your bond!",
                  "{1}'s shiny form seems to glow even brighter when it's near you!",
                  "The light dances off {1}'s rare coloring — truly one of a kind!"],
    },
  }

  #=============================================================================
  # FRIENDSHIP-BASED REACTIONS
  # Uses base happiness (not affection) for dialogue flavor.
  # High friendship >= 220, Low friendship <= 50.
  #=============================================================================
  FRIENDSHIP_REACTIONS_ENABLED = true
  FRIENDSHIP_REACTION_CHANCE   = 30  # % chance per reaction check

  FRIENDSHIP_HIGH_THRESHOLD = 220  # Very high friendship
  FRIENDSHIP_LOW_THRESHOLD  = 50   # Very low friendship

  FRIENDSHIP_HIGH_REACTIONS = {
    :emote => :HEART,
    :move  => :SPIN_JUMP,
    :messages => [
      "{1} is looking at you with absolute adoration!",
      "{1} seems like it wants to be pampered by you!",
      "{1} is so happy it could burst! It really loves you!",
      "{1} is rubbing against you affectionately!",
      "{1} looks at you with an expression of complete trust.",
      "{1} looks like it would do anything for you!",
    ],
  }

  FRIENDSHIP_LOW_REACTIONS = {
    :emote => :ANGRY,
    :move  => nil,
    :messages => [
      "{1} doesn't seem to like you very much...",
      "{1} turned away from you with a huff.",
      "{1} is glaring at you...",
      "{1} seems annoyed that it has to follow you.",
      "{1} reluctantly keeps pace with you.",
    ],
  }

  #=============================================================================
  # STATUS-AWARE REACTIONS
  # When the follower has a status condition, these override normal reactions.
  # Uses status tone system for visual feedback on the follower sprite.
  #=============================================================================
  STATUS_REACTIONS = {
    :POISON => {
      :emote => :POISON,
      :move  => :STEP_BACK,
      :messages => [
        "{1} is shivering with the effects of being poisoned.",
        "{1} looks really sick from the poison...",
        "{1}'s face is pale and it looks unwell.",
        "{1} is trying to bear with the poison, but it looks rough.",
        "{1} is swaying a little... The poison is taking its toll.",
        "{1} stumbled slightly. The poison must be getting worse...",
      ],
    },
    :BURN => {
      :emote => :ANGRY,
      :move  => :STEP_BACK,
      :messages => [
        "{1}'s burn looks painful.",
        "{1} is wincing from its burn...",
        "{1} keeps trying to cool down the burn mark.",
        "{1} seems distressed by the burn.",
        "{1} is moving gingerly because of the burn.",
      ],
    },
    :PARALYSIS => {
      :emote => :DOTS,
      :move  => nil,
      :messages => [
        "{1} is twitching from paralysis...",
        "{1}'s body is sparking with static — it can't move well.",
        "{1} is trying to walk, but its legs keep locking up.",
        "{1} flinched from a jolt of paralysis!",
        "{1} looks frustrated that it can't move properly.",
      ],
    },
    :FROZEN => {
      :emote => :DOTS,
      :move  => nil,
      :messages => [
        "{1} seems very cold. It's frozen solid!",
        "{1} is completely encased in ice!",
        "{1} can barely move... It's frozen stiff!",
        "{1} is shaking, trying to break free from the ice.",
        "Poor {1}... It's completely frozen and can't move.",
      ],
    },
    :SLEEP => {
      :emote => :DOTS,
      :move  => nil,
      :messages => [
        "{1} seems really tired.",
        "{1} is fast asleep... Zzz...",
        "{1} is snoring softly. It must be dreaming.",
        "{1} is completely knocked out. Must be exhausted.",
        "{1} is mumbling in its sleep... Is it dreaming about battling?",
        "{1} is curled up and sleeping soundly.",
      ],
    },
  }

  #=============================================================================
  # ITEM FIND SYSTEM
  # High-affection Pokemon may find items while walking.
  # Chance checked every ITEM_FIND_STEPS steps. Only at HIGH/MAX affection.
  #=============================================================================
  ITEM_FIND_ENABLED      = true
  ITEM_FIND_STEPS        = 500   # Steps between item-find checks
  ITEM_FIND_CHANCE       = {     # % chance per check
    :HIGH => 8,
    :MAX  => 15,
  }

  # Items that can be found, grouped by context
  ITEM_FIND_TABLE = {
    :DEFAULT => [
      :POTION, :SUPERPOTION, :REVIVE, :REPEL, :ESCAPEROPE,
      :PEARL, :TINYMUSHROOM, :HONEY, :NUGGET,
    ],
    :CAVE => [
      :ESCAPEROPE, :REVIVE, :MAXREPEL, :STARDUST, :STARPIECE,
      :NUGGET, :RAREBONE, :HARDSTONE,
    ],
    :BEACH => [
      :PEARL, :BIGPEARL, :HEARTSCALE, :SHOALSHELL, :SHOALSALT,
      :STARPIECE,
    ],
    :FOREST => [
      :TINYMUSHROOM, :BIGMUSHROOM, :HONEY, :BALMMUSHROOM,
      :ABSORBBULB, :MIRACLESEED,
    ],
    :SNOW => [
      :NEVERMELTICE, :ICEHEAL, :FULLRESTORE, :RARECANDY,
    ],
  }

  ITEM_FIND_MESSAGE_APPROACH = [
    "{1} is holding something in its mouth... It's a gift for you!",
    "{1} tugs at your sleeve... It found something!",
    "{1} picked something up off the ground!",
    "{1} dug something up and is wagging with pride!",
    "{1} comes bounding over with something shiny!",
  ]

  #=============================================================================
  # TALK HOOK — affection-aware dialogue when interacting with the follower
  # Provides affection-based bonus dialogue on talk interaction.
  # These are NOT step-triggered — they fire when the player talks to follower.
  #=============================================================================
  TALK_REACTIONS = {
    :NONE => [
      "{1} looks at you cautiously.",
      "{1} doesn't seem to know what to do.",
      "{1} avoids your gaze.",
      "{1} stares blankly ahead.",
      "{1} sniffs the air curiously.",
      "{1} shifts nervously on its feet.",
      "{1} glances around, unsure of its surroundings.",
      "{1} lets out a quiet sound.",
      "{1} seems to be thinking about something.",
      "{1} watches you from a distance.",
    ],
    :LOW => [
      "{1} looks at you with a slight wag of its tail.",
      "{1} tilts its head, watching you.",
      "{1} is slowly getting used to you.",
      "{1} perks up a little when you look at it.",
      "{1} cautiously comes a step closer.",
      "{1} sniffs your hand gently.",
      "{1} seems to enjoy walking with you.",
      "{1} blinks at you with mild curiosity.",
      "{1} yawns and stretches.",
      "{1} quietly follows your lead.",
    ],
    :MEDIUM => [
      "{1} bumps its head against your hand!",
      "{1} seems happy you stopped to say hello!",
      "{1} chirps at you cheerfully.",
      "{1} does a little spin when you look at it!",
      "{1} hops in place with excitement!",
      "{1} rubs against your leg.",
      "{1} looks at you with bright, eager eyes.",
      "{1} lets out a happy cry!",
      "{1} playfully nudges your bag.",
      "{1} seems thrilled to have your attention!",
    ],
    :HIGH => [
      "{1} nuzzles against you affectionately!",
      "{1} jumps up and tries to lick your face!",
      "{1} looks at you with total adoration!",
      "{1} is so excited to see you it can barely contain itself!",
      "{1} trots around you in a happy circle!",
      "{1} presses close to your side.",
      "{1} practically vibrates with joy!",
      "{1} lets out a delighted squeal!",
      "{1} can't stop wagging its tail around you!",
      "{1} looks up at you like you're its whole world.",
    ],
    :MAX => [
      "{1} gazes at you with pure love in its eyes.",
      "{1} presses its forehead against yours gently.",
      "{1} wraps around your leg and refuses to let go!",
      "{1} closes its eyes contentedly as you pet it.",
      "{1} makes a sound of absolute bliss.",
      "{1} looks at you as if you're the center of its world.",
      "{1} nuzzles into your palm with a soft purr.",
      "{1} radiates happiness just being near you.",
      "{1} seems completely at peace by your side.",
      "{1} gently tugs at your sleeve, wanting more attention.",
    ],
  }

  # Emote to play when talking, per affection level
  TALK_EMOTES = {
    :NONE   => :DOTS,
    :LOW    => :DOTS,
    :MEDIUM => :HAPPY,
    :HIGH   => :MUSIC,
    :MAX    => :HEART,
  }

  # Move route to play when talked to, per affection level
  TALK_MOVES = {
    :NONE   => nil,
    :LOW    => nil,
    :MEDIUM => :JUMP,
    :HIGH   => :DOUBLE_JUMP,
    :MAX    => :SPIN_JUMP,
  }

  #=============================================================================
  # AFFECTION MILESTONE REACTIONS
  # One-time dialogue when affection reaches a new level.
  #=============================================================================
  MILESTONE_MESSAGES = {
    :LOW    => "{1} seems to be getting used to traveling with you.",
    :MEDIUM => "{1} looks at you with growing trust.",
    :HIGH   => "{1} clearly adores being your companion!",
    :MAX    => "{1} would follow you to the ends of the earth.",
  }

  #=============================================================================
  # SOUND EFFECTS
  #=============================================================================
  SE_REACTION   = "Pokemon SFX- Emote symbol"  # Reaction bubble sound
  SE_MILESTONE  = "Pokemon SFX- Emote exclamation"

  #=============================================================================
  # AFFECTION BONUS — extra affection per step while following
  #=============================================================================
  FOLLOW_AFFECTION_STEPS  = 50   # Steps per +1 affection while following
  TALK_AFFECTION_GAIN     = 5    # Affection gained per talk interaction

  #=============================================================================
  # MAP ENTER REACTIONS
  # One-shot reactions when the player enters a new map. Triggered once per
  # map transfer. Higher affection shows more expressive entrance reactions.
  #=============================================================================
  MAP_ENTER_ENABLED = true

  MAP_ENTER_REACTIONS = {
    # Map name pattern => { messages per affection, emote, move }
    :GYM => {
      :pattern  => /(gym|league|arena|elite|champion)/i,
      :emote    => :ANGRY,
      :move     => :DOUBLE_JUMP,
      :messages => {
        :LOW    => ["{1} looks around the gym nervously."],
        :MEDIUM => ["{1} tenses up — a tough battle might be ahead!"],
        :HIGH   => ["{1} stamps its feet, ready for the challenge!"],
        :MAX    => ["{1} lets out a battle cry! It's fired up!"],
      },
    },
    :POKECENTER => {
      :pattern  => /(pok[eé].*center|heal)/i,
      :emote    => :HEART,
      :move     => :JUMP,
      :messages => {
        :LOW    => ["{1} looks relieved to be somewhere safe."],
        :MEDIUM => ["{1} perks up at the sight of the healing machine."],
        :HIGH   => ["{1} is already heading for the counter!"],
        :MAX    => ["{1} drags you toward Nurse Joy with excitement!"],
      },
    },
    :HOME => {
      :pattern  => /(home|your house|player.*house)/i,
      :emote    => :HEART,
      :move     => :SPIN_JUMP,
      :messages => {
        :LOW    => ["{1} sniffs around the entrance."],
        :MEDIUM => ["{1} recognizes this place!"],
        :HIGH   => ["{1} runs inside and jumps on the couch!"],
        :MAX    => ["{1} is SO happy to be home! It's zooming around!"],
      },
    },
    :CAVE => {
      :pattern  => /(cave|cavern|tunnel|mine|grotto|underground)/i,
      :emote    => :DOTS,
      :move     => :STEP_BACK,
      :messages => {
        :LOW    => ["{1} hesitates at the cave entrance..."],
        :MEDIUM => ["{1} peers into the darkness cautiously."],
        :HIGH   => ["{1} takes a deep breath and follows you in!"],
        :MAX    => ["{1} strides in confidently — it trusts you completely!"],
      },
    },
    :FOREST => {
      :pattern  => /(forest|woods|grove|jungle|garden)/i,
      :emote    => :HAPPY,
      :move     => :JUMP,
      :messages => {
        :LOW    => ["{1} looks at the trees warily."],
        :MEDIUM => ["{1} sniffs the fresh forest air."],
        :HIGH   => ["{1} is excited to explore the woods!"],
        :MAX    => ["{1} dashes ahead into the trees and looks back with a grin!"],
      },
    },
    :ROUTE => {
      :pattern  => /(route|road|path|trail|highway)/i,
      :emote    => :HAPPY,
      :move     => :JUMP,
      :messages => {
        :MEDIUM => ["{1} stretches its legs — time for a walk!"],
        :HIGH   => ["{1} trots beside you eagerly!"],
        :MAX    => ["{1} takes point, scouting the road ahead!"],
      },
    },
    :CITY => {
      :pattern  => /(city|town|village|hamlet)/i,
      :emote    => :HAPPY,
      :move     => nil,
      :messages => {
        :MEDIUM => ["{1} looks around at all the buildings."],
        :HIGH   => ["{1} is excited to see all the people!"],
        :MAX    => ["{1} is waving at strangers — how friendly!"],
      },
    },
  }

  #=============================================================================
  # TOGGLE REACTIONS
  # Reactions when the follower is toggled on/off (shown/hidden).
  # Detected via CompanionToggleHook state tracking.
  #=============================================================================
  TOGGLE_REACTIONS_ENABLED = true

  TOGGLE_ON_REACTIONS = {
    :emote => :HEART,
    :move  => :SPIN_JUMP,
    :messages => {
      :NONE   => ["{1} appeared!"],
      :LOW    => ["{1} appears and looks around.",
                  "{1} stretches after being in its Poke Ball."],
      :MEDIUM => ["{1} bounces out happily!",
                  "{1} shakes itself off and looks at you."],
      :HIGH   => ["{1} bursts out and nuzzles your leg!",
                  "{1} twirls out of its ball with a happy cry!"],
      :MAX    => ["{1} leaps out and tackles you with affection!",
                  "{1} explodes out of its ball and won't stop spinning!",
                  "{1} appears and immediately looks for your hand to nuzzle."],
    },
  }

  TOGGLE_OFF_REACTIONS = {
    :emote => :DOTS,
    :move  => nil,
    :messages => {
      :NONE   => ["{1} returned to its Poke Ball."],
      :LOW    => ["{1} goes back into its Poke Ball.",
                  "{1} returns without fuss."],
      :MEDIUM => ["{1} looks a little sad to go back...",
                  "{1} gives you one last look before returning."],
      :HIGH   => ["{1} whimpers softly and returns reluctantly.",
                  "{1} nudges your hand before going back."],
      :MAX    => ["{1} refuses at first... then sadly returns.",
                  "{1} gives you the biggest puppy eyes before going back...",
                  "{1} clings to your leg for a moment before returning."],
    },
  }

  #=============================================================================
  # BATTLE END REACTIONS
  # Triggered after wild/trainer battles end. Affection-scaled per outcome.
  #=============================================================================
  BATTLE_REACTIONS_ENABLED = true

  BATTLE_WIN_REACTIONS = {
    :emote => :HAPPY,
    :move  => :SPIN_JUMP,
    :messages => {
      :LOW    => ["{1} looks relieved the battle is over."],
      :MEDIUM => ["{1} puffs out its chest proudly!",
                  "{1} shakes off the battle dust."],
      :HIGH   => ["{1} is celebrating the victory!",
                  "{1} does a little victory dance!",
                  "{1} jumps around in excitement!"],
      :MAX    => ["{1} leaps into your arms after the win!",
                  "{1} roars triumphantly and nuzzles you!",
                  "{1} is beaming with pride — you make a great team!",
                  "{1} high-fives you with its paw!"],
    },
  }

  BATTLE_LOSE_REACTIONS = {
    :emote => :DOTS,
    :move  => nil,
    :messages => {
      :LOW    => ["{1} hangs its head quietly."],
      :MEDIUM => ["{1} looks at you with concern...",
                  "{1} nudges you gently, as if to say 'it's okay.'"],
      :HIGH   => ["{1} tries to comfort you after the loss.",
                  "{1} stays close, pressing against your side."],
      :MAX    => ["{1} refuses to leave your side. It won't give up!",
                  "{1} looks determined — next time you'll win for sure!",
                  "{1} gently licks your hand to cheer you up."],
    },
  }

  # Chance to show a battle reaction (avoid every battle being chatty)
  BATTLE_REACTION_CHANCE = 50  # % chance

  #=============================================================================
  # LEVEL UP REACTIONS
  # Triggered when the following Pokemon levels up.
  #=============================================================================
  LEVEL_UP_REACTIONS = {
    :emote => :HEART,
    :move  => :SPIN_JUMP,
    :messages => {
      :LOW    => ["{1} grew to Lv. {2}!",
                  "{1} seems a little stronger now!"],
      :MEDIUM => ["{1} reached Lv. {2} and is beaming with pride!",
                  "{1} flexes after reaching Lv. {2}!"],
      :HIGH   => ["{1} hit Lv. {2}! It's bouncing off the walls!",
                  "{1} is SO excited about reaching Lv. {2}!"],
      :MAX    => ["{1} reached Lv. {2} and looks at you with pure joy!",
                  "{1} powered up to Lv. {2}! It wants to celebrate with you!",
                  "{1} is Lv. {2} now! It spins in circles from happiness!"],
    },
  }

  #=============================================================================
  # EVOLUTION REACTIONS
  # Triggered when the following Pokemon evolves. Always fires (no chance).
  #=============================================================================
  EVOLUTION_REACTIONS = {
    :emote => :HEART,
    :move  => :DANCE,
    :messages => {
      :LOW    => ["{1} evolved! It looks confused but stronger.",
                  "{1} examines its new body curiously."],
      :MEDIUM => ["{1} evolved and is admiring its new form!",
                  "{1} can't stop looking at its reflection!"],
      :HIGH   => ["{1} evolved and is showing off to you!",
                  "{1} evolved! It roars with newfound power!"],
      :MAX    => ["{1} evolved and immediately runs to you for approval!",
                  "{1} evolved! It's crying happy tears!",
                  "{1} evolved and won't stop nuzzling you — as if to say 'Look what we did!'"],
    },
  }

  #=============================================================================
  # FAINT REACTIONS
  # Triggered when the following Pokemon faints in battle.
  #=============================================================================
  FAINT_REACTIONS = {
    :emote => :DOTS,
    :move  => nil,
    :messages => {
      :LOW    => ["{1} fainted...",
                  "{1} collapsed from exhaustion."],
      :MEDIUM => ["{1} gave it everything, but couldn't hold on...",
                  "Poor {1}... It fought as hard as it could."],
      :HIGH   => ["{1} fainted trying to protect you...",
                  "{1} fell, but its eyes still looked at you with trust."],
      :MAX    => ["{1} fainted with a smile — it has no regrets fighting for you.",
                  "{1} used the last of its strength reaching for your hand...",
                  "{1} whispered your name before losing consciousness..."],
    },
  }

  #=============================================================================
  # POKEMON CAUGHT REACTIONS
  # Triggered when the player catches a wild Pokemon.
  #=============================================================================
  CATCH_REACTIONS_ENABLED = true
  CATCH_REACTION_CHANCE   = 40  # % chance to react

  CATCH_REACTIONS = {
    :emote => :HAPPY,
    :move  => :DOUBLE_JUMP,
    :messages => {
      :LOW    => ["{1} watches the new Pokemon with curiosity."],
      :MEDIUM => ["{1} sniffs at the new Poke Ball curiously.",
                  "{1} seems interested in the new teammate!"],
      :HIGH   => ["{1} jumps for joy — a new friend!",
                  "{1} is eager to welcome the new Pokemon!"],
      :MAX    => ["{1} is SO excited about the new team member!",
                  "{1} does a little welcome dance for the newcomer!",
                  "{1} immediately tries to befriend the new Pokemon!"],
    },
  }

  # Special messages if caught Pokemon shares a type with the follower
  CATCH_SAME_TYPE_MESSAGES = [
    "{1} seems especially excited — it found a kindred spirit!",
    "{1} recognizes a fellow {3}-type and practically glows with joy!",
    "{1} and the new {3}-type share a look of understanding.",
  ]

  #=============================================================================
  # LOW HP REACTIONS
  # Step-triggered when the follower's HP is critically low (< 25%).
  # Checked during the step loop, separate from status reactions.
  #=============================================================================
  LOW_HP_ENABLED   = true
  LOW_HP_THRESHOLD = 0.25  # 25% HP

  LOW_HP_REACTIONS = {
    :emote => :DOTS,
    :move  => :STEP_BACK,
    :messages => {
      :LOW    => ["{1} is looking weak...",
                  "{1} is barely standing."],
      :MEDIUM => ["{1} is breathing heavily...",
                  "{1} stumbles a little as it walks.",
                  "{1} winces with every step."],
      :HIGH   => ["{1} is trying to hide how hurt it is...",
                  "{1} pushes forward despite its injuries.",
                  "{1} looks at you, trying to be brave."],
      :MAX    => ["{1} doesn't want you to worry, but it's clearly in pain.",
                  "{1} leans against you for support as it walks.",
                  "{1} is trembling but refuses to leave your side.",
                  "Please heal {1} soon... It's giving everything it has."],
    },
  }

  #=============================================================================
  # HEAL REACTIONS
  # Triggered after healing at a Pokemon Center.
  #=============================================================================
  HEAL_REACTIONS_ENABLED = true

  HEAL_REACTIONS = {
    :emote => :HEART,
    :move  => :SPIN_JUMP,
    :messages => {
      :LOW    => ["{1} feels better after the rest.",
                  "{1} stretches, fully healed."],
      :MEDIUM => ["{1} is all healed up and ready to go!",
                  "{1} bounces out of the Center feeling great!"],
      :HIGH   => ["{1} is refreshed and nuzzles you gratefully!",
                  "{1} is fully healed and can't wait for more adventures!"],
      :MAX    => ["{1} is bursting with energy after healing!",
                  "{1} tackles you with gratitude — it feels amazing!",
                  "{1} spins in place, completely restored and overjoyed!"],
    },
  }
end
