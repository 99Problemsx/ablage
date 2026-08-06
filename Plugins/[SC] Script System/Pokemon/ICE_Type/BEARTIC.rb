#=============================================================================
# Beartic - ICE Type
#=============================================================================

GameData::Species.define :"BEARTIC" do |pkmn|
  pkmn.name "Beartic"
  pkmn.types :"ICE"
  pkmn.base_stats hp: 95, attack: 110, defense: 80,
                  sp_atk: 50, sp_def: 70, speed: 80
  pkmn.abilities :"SNOWCLOAK"
  pkmn.hidden_abilities :"SWIFTSWIM"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"White"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 170
  pkmn.catch_rate 60
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 2.6
  pkmn.weight 260.0
  pkmn.category "Freezing"
  pkmn.pokedex_entry "It freezes its breath to create fangs and claws of ice to fight with. Cold northern areas are its habitat."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SUPERPOWER"
    m.at 1, :"AQUAJET"
    m.at 1, :"POWDERSNOW"
    m.at 1, :"GROWL"
    m.at 1, :"BIDE"
    m.at 1, :"ICYWIND"
    m.at 5, :"GROWL"
    m.at 9, :"BIDE"
    m.at 13, :"ICYWIND"
    m.at 17, :"FURYSWIPES"
    m.at 21, :"BRINE"
    m.at 25, :"ENDURE"
    m.at 29, :"SWAGGER"
    m.at 33, :"SLASH"
    m.at 36, :"FLAIL"
    m.at 37, :"ICICLECRASH"
    m.at 41, :"REST"
    m.at 45, :"BLIZZARD"
    m.at 53, :"HAIL"
    m.at 59, :"THRASH"
    m.at 66, :"SHEERCOLD"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BLIZZARD", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"COVET", :"CUT", :"DIG", :"DIVE", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLING", :"FOCUSBLAST", :"FROSTBREATH", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HAIL", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"LOWKICK", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUPERPOWER", :"SURF", :"SWAGGER", :"SWORDSDANCE", :"TAUNT", :"TOXIC"
end

GameData::SpeciesMetrics.define :"BEARTIC" do |m|
  m.back_sprite -2, 0
  m.front_sprite 0, 15
  m.shadow_sprite 0, 0, 3
end