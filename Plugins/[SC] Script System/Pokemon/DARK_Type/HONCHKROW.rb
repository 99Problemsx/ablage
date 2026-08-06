#=============================================================================
# Honchkrow - DARK Type
#=============================================================================

GameData::Species.define :"HONCHKROW" do |pkmn|
  pkmn.name "Honchkrow"
  pkmn.types :"DARK", :"FLYING"
  pkmn.base_stats hp: 100, attack: 125, defense: 52,
                  sp_atk: 71, sp_def: 105, speed: 52
  pkmn.abilities :"INSOMNIA", :"SUPERLUCK"
  pkmn.hidden_abilities :"MOXIE"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Black"
  pkmn.shape :"Winged"
  pkmn.base_exp 177
  pkmn.catch_rate 30
  pkmn.happiness 35
  pkmn.hatch_steps 5140
  pkmn.height 0.9
  pkmn.weight 27.3
  pkmn.category "Big Boss"
  pkmn.pokedex_entry "Becoming active at night, it is known to swarm with numerous Murkrow in tow."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"ASTONISH"
    m.at 1, :"PURSUIT"
    m.at 1, :"HAZE"
    m.at 1, :"WINGATTACK"
    m.at 25, :"SWAGGER"
    m.at 35, :"NASTYPLOT"
    m.at 45, :"FOULPLAY"
    m.at 55, :"NIGHTSLASH"
    m.at 65, :"QUASH"
    m.at 75, :"DARKPULSE"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"ATTRACT", :"CALMMIND", :"CAPTIVATE", :"DARKPULSE", :"DEFOG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"EMBARGO", :"ENDURE", :"FACADE", :"FLY", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"ICYWIND", :"INCINERATE", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PAYBACK", :"PLUCK", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"QUASH", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROOST", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SKYATTACK", :"SLEEPTALK", :"SNARL", :"SNATCH", :"SPITE", :"STEELWING", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"SWIFT", :"TAILWIND", :"TAUNT", :"THIEF", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TWISTER", :"UPROAR"
end

GameData::SpeciesMetrics.define :"HONCHKROW" do |m|
  m.back_sprite 2, 0
  m.front_sprite 0, 14
  m.shadow_sprite 0, 0, 2
end