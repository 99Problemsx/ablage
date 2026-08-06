#=============================================================================
# Palossand - GHOST Type
#=============================================================================

GameData::Species.define :"PALOSSAND" do |pkmn|
  pkmn.name "Palossand"
  pkmn.types :"GHOST", :"GROUND"
  pkmn.base_stats hp: 85, attack: 75, defense: 110,
                  sp_atk: 35, sp_def: 100, speed: 75
  pkmn.abilities :"WATERCOMPACTION"
  pkmn.hidden_abilities :"SANDVEIL"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 168
  pkmn.catch_rate 60
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 1.3
  pkmn.weight 250.0
  pkmn.category "Sand Castle"
  pkmn.pokedex_entry "Buried beneath the castle are masses of dried-up bones from those whose vitality it has drained."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"ABSORB"
    m.at 1, :"HARDEN"
    m.at 1, :"ASTONISH"
    m.at 1, :"SANDTOMB"
    m.at 15, :"MEGADRAIN"
    m.at 20, :"SANDATTACK"
    m.at 25, :"BULLDOZE"
    m.at 30, :"HYPNOSIS"
    m.at 35, :"GIGADRAIN"
    m.at 40, :"IRONDEFENSE"
    m.at 47, :"SHADOWBALL"
    m.at 54, :"EARTHPOWER"
    m.at 61, :"SHOREUP"
    m.at 68, :"SANDSTORM"
  end
  pkmn.tutor_moves :"AFTERYOU", :"AMNESIA", :"ATTRACT", :"BLOCK", :"BRINE", :"BULLDOZE", :"CAPTIVATE", :"CONFIDE", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"EMBARGO", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLING", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GRAVITY", :"HIDDENPOWER", :"INFESTATION", :"IRONDEFENSE", :"MIMIC", :"MUDSHOT", :"NATURALGIFT", :"PAINSPLIT", :"POLTERGEIST", :"PROTECT", :"PSYCHIC", :"QUASH", :"RECYCLE", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SANDSTORM", :"SANDTOMB", :"SCORCHINGSANDS", :"SECRETPOWER", :"SHADOWBALL", :"SKILLSWAP", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SPITE", :"STEALTHROCK", :"STONEEDGE", :"SUBSTITUTE", :"SWAGGER", :"TERRAINPULSE", :"TOXIC", :"TRICK", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"PALOSSAND" do |m|
  m.back_sprite 0, 47
  m.front_sprite 3, 27
end