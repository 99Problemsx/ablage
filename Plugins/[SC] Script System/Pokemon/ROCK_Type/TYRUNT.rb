#=============================================================================
# Tyrunt - ROCK Type
#=============================================================================

GameData::Species.define :"TYRUNT" do |pkmn|
  pkmn.name "Tyrunt"
  pkmn.types :"ROCK", :"DRAGON"
  pkmn.base_stats hp: 58, attack: 89, defense: 77,
                  sp_atk: 48, sp_def: 45, speed: 45
  pkmn.abilities :"STRONGJAW"
  pkmn.hidden_abilities :"STURDY"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 72
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 7680
  pkmn.height 0.8
  pkmn.weight 26.0
  pkmn.category "Royal Heir"
  pkmn.pokedex_entry "Its immense jaws have enough destructive force that it can chew up an automobile. It lived 100 million years ago."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Monster", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"TAILWHIP"
    m.at 4, :"ROAR"
    m.at 8, :"ANCIENTPOWER"
    m.at 12, :"CHARM"
    m.at 16, :"BITE"
    m.at 20, :"DRAGONTAIL"
    m.at 24, :"STOMP"
    m.at 28, :"ROCKSLIDE"
    m.at 32, :"CRUNCH"
    m.at 36, :"DRAGONCLAW"
    m.at 40, :"THRASH"
    m.at 44, :"EARTHQUAKE"
    m.at 48, :"HORNDRILL"
  end
  pkmn.tutor_moves :"AERIALACE", :"ASSURANCE", :"ATTRACT", :"BLOCK", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"CHARM", :"CLOSECOMBAT", :"CONFIDE", :"CRUNCH", :"DARKPULSE", :"DIG", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONCLAW", :"DRAGONDANCE", :"DRAGONPULSE", :"DRAGONTAIL", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREFANG", :"FRUSTRATION", :"HIDDENPOWER", :"HONECLAWS", :"HYPERVOICE", :"ICEFANG", :"IRONDEFENSE", :"IRONHEAD", :"IRONTAIL", :"LASHOUT", :"METEORBEAM", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PLAYROUGH", :"PROTECT", :"PSYCHICFANGS", :"REST", :"RETURN", :"ROAR", :"ROCKBLAST", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SCALESHOT", :"SCARYFACE", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STEALTHROCK", :"STOMPINGTANTRUM", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"THUNDERFANG", :"TOXIC", :"ZENHEADBUTT", :"TERABLAST"
  pkmn.egg_moves :"CURSE", :"POISONFANG", :"ROCKPOLISH", :"ROCKTHROW"
end

GameData::SpeciesMetrics.define :"TYRUNT" do |m|
  m.back_sprite 5, 60
  m.front_sprite -1, 29
end