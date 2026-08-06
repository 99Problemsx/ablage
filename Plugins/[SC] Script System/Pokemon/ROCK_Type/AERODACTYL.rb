#=============================================================================
# Aerodactyl - ROCK Type
#=============================================================================

GameData::Species.define :"AERODACTYL" do |pkmn|
  pkmn.name "Aerodactyl"
  pkmn.types :"ROCK", :"FLYING"
  pkmn.base_stats hp: 80, attack: 105, defense: 65,
                  sp_atk: 130, sp_def: 60, speed: 75
  pkmn.abilities :"ROCKHEAD", :"PRESSURE"
  pkmn.hidden_abilities :"UNNERVE"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Purple"
  pkmn.shape :"Winged"
  pkmn.base_exp 180
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 8995
  pkmn.height 1.8
  pkmn.weight 59.0
  pkmn.category "Fossil"
  pkmn.pokedex_entry "Aerodactyl is a Pokémon from the age of dinosaurs. It was regenerated from DNA extracted from amber. It is imagined to have been the king of the skies."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"ICEFANG"
    m.at 1, :"FIREFANG"
    m.at 1, :"THUNDERFANG"
    m.at 1, :"WINGATTACK"
    m.at 1, :"SUPERSONIC"
    m.at 1, :"BITE"
    m.at 1, :"SCARYFACE"
    m.at 9, :"ROAR"
    m.at 17, :"AGILITY"
    m.at 25, :"ANCIENTPOWER"
    m.at 33, :"CRUNCH"
    m.at 41, :"TAKEDOWN"
    m.at 49, :"SKYDROP"
    m.at 57, :"IRONHEAD"
    m.at 65, :"HYPERBEAM"
    m.at 73, :"ROCKSLIDE"
    m.at 81, :"GIGAIMPACT"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"ANCIENTPOWER", :"AQUATAIL", :"ATTRACT", :"BULLDOZE", :"CAPTIVATE", :"DEFOG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAGONCLAW", :"DRAGONPULSE", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FLY", :"FRUSTRATION", :"GIGAIMPACT", :"HEADBUTT", :"HEATWAVE", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"INCINERATE", :"IRONHEAD", :"IRONTAIL", :"MIMIC", :"NATURALGIFT", :"OMINOUSWIND", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROOST", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SKYATTACK", :"SKYDROP", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STEALTHROCK", :"STEELWING", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"TAUNT", :"THIEF", :"TORMENT", :"TOXIC", :"TWISTER"
  pkmn.egg_moves :"ASSURANCE", :"CURSE", :"DRAGONBREATH", :"FORESIGHT", :"PURSUIT", :"ROOST", :"STEELWING", :"TAILWIND", :"WHIRLWIND"
end

GameData::SpeciesMetrics.define :"AERODACTYL" do |m|
  m.back_sprite -4, 0
  m.front_sprite 2, -2
  m.shadow_sprite 0, 0, 2
end