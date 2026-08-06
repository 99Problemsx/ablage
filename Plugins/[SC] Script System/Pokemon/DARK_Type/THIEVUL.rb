#=============================================================================
# Thievul - DARK Type
#=============================================================================

GameData::Species.define :"THIEVUL" do |pkmn|
  pkmn.name "Thievul"
  pkmn.types :"DARK"
  pkmn.base_stats hp: 70, attack: 58, defense: 58,
                  sp_atk: 90, sp_def: 87, speed: 92
  pkmn.abilities :"RUNAWAY", :"UNBURDEN"
  pkmn.hidden_abilities :"STAKEOUT"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 159
  pkmn.catch_rate 127
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 1.2
  pkmn.weight 19.9
  pkmn.category "Fox"
  pkmn.pokedex_entry "It secretly marks potential targets with a scent. By following the scent, it stalks its targets and steals from them when they least expect it."
  pkmn.evs special_defense: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 0, :"THIEF"
    m.at 1, :"QUICKATTACK"
    m.at 1, :"TAILWHIP"
    m.at 1, :"BEATUP"
    m.at 1, :"HONECLAWS"
    m.at 12, :"SNARL"
    m.at 16, :"ASSURANCE"
    m.at 22, :"NASTYPLOT"
    m.at 28, :"SUCKERPUNCH"
    m.at 34, :"NIGHTSLASH"
    m.at 40, :"TAILSLAP"
    m.at 46, :"FOULPLAY"
    m.at 52, :"PARTINGSHOT"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AGILITY", :"ASSURANCE", :"ATTRACT", :"BATONPASS", :"BEATUP", :"BURNINGJEALOUSY", :"CAPTIVATE", :"CONFIDE", :"CRUNCH", :"DARKPULSE", :"DIG", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FAKETEARS", :"FIREFANG", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEFANG", :"LASHOUT", :"MIMIC", :"MUDSHOT", :"NASTYPLOT", :"NATURALGIFT", :"PLAYROUGH", :"PROTECT", :"PSYCHIC", :"REST", :"RETURN", :"ROUND", :"SCREECH", :"SECRETPOWER", :"SHADOWBALL", :"SHADOWCLAW", :"SLEEPTALK", :"SNARL", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"SWIFT", :"TAILSLAP", :"TAUNT", :"THIEF", :"THUNDERFANG", :"TOXIC", :"UTURN", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"THIEVUL" do |m|
  m.back_sprite 0, 40
  m.front_sprite 8, 20
end