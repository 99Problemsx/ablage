#=============================================================================
# Tyrantrum - ROCK Type
#=============================================================================

GameData::Species.define :"TYRANTRUM" do |pkmn|
  pkmn.name "Tyrantrum"
  pkmn.types :"ROCK", :"DRAGON"
  pkmn.base_stats hp: 82, attack: 121, defense: 119,
                  sp_atk: 71, sp_def: 69, speed: 59
  pkmn.abilities :"STRONGJAW"
  pkmn.hidden_abilities :"ROCKHEAD"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 182
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 7680
  pkmn.height 2.5
  pkmn.weight 270.0
  pkmn.category "Despot"
  pkmn.pokedex_entry "Thanks to its gargantuan jaws, which could shred thick metal plates as if they were paper, it was invincible in the ancient world it once inhabited."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Monster", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"TAILWHIP"
    m.at 1, :"ROAR"
    m.at 1, :"ANCIENTPOWER"
    m.at 12, :"CHARM"
    m.at 16, :"BITE"
    m.at 20, :"DRAGONTAIL"
    m.at 24, :"STOMP"
    m.at 28, :"ROCKSLIDE"
    m.at 32, :"CRUNCH"
    m.at 36, :"DRAGONCLAW"
    m.at 42, :"THRASH"
    m.at 48, :"EARTHQUAKE"
    m.at 54, :"HORNDRILL"
    m.at 60, :"GIGAIMPACT"
    m.at 66, :"HEADSMASH"
  end
  pkmn.tutor_moves :"AERIALACE", :"ASSURANCE", :"ATTRACT", :"BLOCK", :"BODYSLAM", :"BREAKINGSWIPE", :"BRICKBREAK", :"BRUTALSWING", :"BULLDOZE", :"CAPTIVATE", :"CHARM", :"CLOSECOMBAT", :"CONFIDE", :"CRUNCH", :"DARKPULSE", :"DIG", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONCLAW", :"DRAGONDANCE", :"DRAGONPULSE", :"DRAGONTAIL", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREFANG", :"FRUSTRATION", :"GIGAIMPACT", :"HIDDENPOWER", :"HIGHHORSEPOWER", :"HONECLAWS", :"HYPERBEAM", :"HYPERVOICE", :"ICEFANG", :"IRONDEFENSE", :"IRONHEAD", :"IRONTAIL", :"LASHOUT", :"METEORBEAM", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PLAYROUGH", :"PROTECT", :"PSYCHICFANGS", :"REST", :"RETURN", :"ROAR", :"ROCKBLAST", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SCALESHOT", :"SCARYFACE", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STEALTHROCK", :"STOMPINGTANTRUM", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"THUNDERFANG", :"TOXIC", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"TYRANTRUM" do |m|
  m.back_sprite -8, 55
  m.front_sprite 2, 16
end