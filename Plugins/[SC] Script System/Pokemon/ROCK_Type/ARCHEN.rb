#=============================================================================
# Archen - ROCK Type
#=============================================================================

GameData::Species.define :"ARCHEN" do |pkmn|
  pkmn.name "Archen"
  pkmn.types :"ROCK", :"FLYING"
  pkmn.base_stats hp: 55, attack: 112, defense: 45,
                  sp_atk: 70, sp_def: 74, speed: 45
  pkmn.abilities :"DEFEATIST"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"Winged"
  pkmn.base_exp 71
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 7710
  pkmn.height 0.5
  pkmn.weight 9.5
  pkmn.category "First Bird"
  pkmn.pokedex_entry "Revived from a fossil, this Pokémon is thought to be the ancestor of all bird Pokémon."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Flying", :"Water3"

  pkmn.moves do |m|
    m.at 1, :"QUICKATTACK"
    m.at 1, :"LEER"
    m.at 1, :"WINGATTACK"
    m.at 5, :"ROCKTHROW"
    m.at 8, :"DOUBLETEAM"
    m.at 11, :"SCARYFACE"
    m.at 15, :"PLUCK"
    m.at 18, :"ANCIENTPOWER"
    m.at 21, :"AGILITY"
    m.at 25, :"QUICKGUARD"
    m.at 28, :"ACROBATICS"
    m.at 31, :"DRAGONBREATH"
    m.at 35, :"CRUNCH"
    m.at 38, :"ENDEAVOR"
    m.at 41, :"UTURN"
    m.at 45, :"ROCKSLIDE"
    m.at 48, :"DRAGONCLAW"
    m.at 51, :"THRASH"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AQUATAIL", :"ATTRACT", :"BOUNCE", :"BULLDOZE", :"CAPTIVATE", :"CUT", :"DIG", :"DOUBLETEAM", :"DRAGONCLAW", :"DRAGONPULSE", :"EARTHPOWER", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FRUSTRATION", :"HEATWAVE", :"HIDDENPOWER", :"HONECLAWS", :"IRONDEFENSE", :"IRONTAIL", :"MIMIC", :"NATURALGIFT", :"PLUCK", :"PROTECT", :"REST", :"RETURN", :"ROAR", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROOST", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"SUBSTITUTE", :"SWAGGER", :"TAILWIND", :"TAUNT", :"TORMENT", :"TOXIC", :"UPROAR", :"UTURN"
  pkmn.egg_moves :"BITE", :"DEFOG", :"DRAGONPULSE", :"EARTHPOWER", :"HEADSMASH", :"KNOCKOFF", :"STEELWING"
end

GameData::SpeciesMetrics.define :"ARCHEN" do |m|
  m.back_sprite 0, 0
  m.front_sprite 3, 31
  m.shadow_sprite 0, 0, 1
end