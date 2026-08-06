#=============================================================================
# Archeops - ROCK Type
#=============================================================================

GameData::Species.define :"ARCHEOPS" do |pkmn|
  pkmn.name "Archeops"
  pkmn.types :"ROCK", :"FLYING"
  pkmn.base_stats hp: 75, attack: 140, defense: 65,
                  sp_atk: 110, sp_def: 112, speed: 65
  pkmn.abilities :"DEFEATIST"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"Winged"
  pkmn.base_exp 177
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 7710
  pkmn.height 1.4
  pkmn.weight 32.0
  pkmn.category "First Bird"
  pkmn.pokedex_entry "It runs better than it flies. It catches prey by running at speeds comparable to those of an automobile."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Flying", :"Water3"

  pkmn.moves do |m|
    m.at 1, :"QUICKATTACK"
    m.at 1, :"LEER"
    m.at 1, :"WINGATTACK"
    m.at 1, :"ROCKTHROW"
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
    m.at 40, :"ENDEAVOR"
    m.at 45, :"UTURN"
    m.at 51, :"ROCKSLIDE"
    m.at 56, :"DRAGONCLAW"
    m.at 61, :"THRASH"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AQUATAIL", :"ATTRACT", :"BOUNCE", :"BULLDOZE", :"CAPTIVATE", :"CUT", :"DIG", :"DOUBLETEAM", :"DRAGONCLAW", :"DRAGONPULSE", :"DRAGONTAIL", :"EARTHPOWER", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLY", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"HEATWAVE", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"IRONDEFENSE", :"IRONTAIL", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PLUCK", :"PROTECT", :"REST", :"RETURN", :"ROAR", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROOST", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SHADOWCLAW", :"SKYATTACK", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"SUBSTITUTE", :"SWAGGER", :"TAILWIND", :"TAUNT", :"TORMENT", :"TOXIC", :"UPROAR", :"UTURN"
end

GameData::SpeciesMetrics.define :"ARCHEOPS" do |m|
  m.back_sprite 4, 0
  m.front_sprite 0, 6
  m.shadow_sprite 0, 0, 1
end