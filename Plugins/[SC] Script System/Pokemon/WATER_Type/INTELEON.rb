#=============================================================================
# Inteleon - WATER Type
#=============================================================================

GameData::Species.define :"INTELEON" do |pkmn|
  pkmn.name "Inteleon"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 70, attack: 85, defense: 65,
                  sp_atk: 120, sp_def: 125, speed: 65
  pkmn.abilities :"TORRENT"
  pkmn.hidden_abilities :"SNIPER"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 265
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.9
  pkmn.weight 45.2
  pkmn.category "Secret Agent"
  pkmn.pokedex_entry "It has many hidden capabilities, such as fingertips that can shoot water and a membrane on its back that it can use to glide through the air."
  pkmn.evs speed: 3
  pkmn.egg_groups :"Water1", :"Field"

  pkmn.moves do |m|
    m.at 0, :"SNIPESHOT"
    m.at 1, :"ACROBATICS"
    m.at 1, :"POUND"
    m.at 1, :"GROWL"
    m.at 1, :"WATERGUN"
    m.at 1, :"BIND"
    m.at 12, :"WATERPULSE"
    m.at 19, :"TEARFULLOOK"
    m.at 24, :"SUCKERPUNCH"
    m.at 30, :"UTURN"
    m.at 38, :"LIQUIDATION"
    m.at 46, :"SOAK"
    m.at 54, :"RAINDANCE"
    m.at 62, :"HYDROPUMP"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AGILITY", :"AIRSLASH", :"ATTRACT", :"BATONPASS", :"BLIZZARD", :"BOUNCE", :"BREAKINGSWIPE", :"CAPTIVATE", :"CONFIDE", :"DARKPULSE", :"DIVE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FLING", :"FOCUSENERGY", :"FRUSTRATION", :"GIGAIMPACT", :"HIDDENPOWER", :"HYDROCANNON", :"HYDROPUMP", :"HYPERBEAM", :"ICEBEAM", :"ICICLESPEAR", :"ICYWIND", :"LIGHTSCREEN", :"LIQUIDATION", :"METRONOME", :"MIMIC", :"MUDDYWATER", :"MUDSHOT", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SCALD", :"SCALESHOT", :"SECRETPOWER", :"SHADOWBALL", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TOXIC", :"UTURN", :"WATERFALL", :"WATERPLEDGE", :"WEATHERBALL", :"WHIRLPOOL", :"WORKUP", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"INTELEON" do |m|
  m.back_sprite -10, 34
  m.front_sprite 4, 4
end