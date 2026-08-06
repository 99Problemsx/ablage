#=============================================================================
# Cubchoo - ICE Type
#=============================================================================

GameData::Species.define :"CUBCHOO" do |pkmn|
  pkmn.name "Cubchoo"
  pkmn.types :"ICE"
  pkmn.base_stats hp: 55, attack: 70, defense: 40,
                  sp_atk: 40, sp_def: 60, speed: 40
  pkmn.abilities :"SNOWCLOAK"
  pkmn.hidden_abilities :"RATTLED"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"White"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 61
  pkmn.catch_rate 120
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.5
  pkmn.weight 8.5
  pkmn.category "Chill"
  pkmn.pokedex_entry "Its nose is always running. It sniffs the snot back up because the mucus provides the raw material for its moves."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"POWDERSNOW"
    m.at 5, :"GROWL"
    m.at 9, :"BIDE"
    m.at 13, :"ICYWIND"
    m.at 17, :"FURYSWIPES"
    m.at 21, :"BRINE"
    m.at 25, :"ENDURE"
    m.at 29, :"CHARM"
    m.at 33, :"SLASH"
    m.at 36, :"FLAIL"
    m.at 41, :"REST"
    m.at 45, :"BLIZZARD"
    m.at 49, :"HAIL"
    m.at 53, :"THRASH"
    m.at 57, :"SHEERCOLD"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BLIZZARD", :"CAPTIVATE", :"COVET", :"CUT", :"DIG", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLING", :"FROSTBREATH", :"FRUSTRATION", :"GRASSKNOT", :"HAIL", :"HIDDENPOWER", :"HONECLAWS", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"LOWKICK", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUPERPOWER", :"SURF", :"SWAGGER", :"TOXIC"
  pkmn.egg_moves :"ASSURANCE", :"AVALANCHE", :"ENCORE", :"FOCUSPUNCH", :"ICEPUNCH", :"NIGHTSLASH", :"SLEEPTALK", :"YAWN"
end

GameData::SpeciesMetrics.define :"CUBCHOO" do |m|
  m.back_sprite -2, 0
  m.front_sprite 1, 32
  m.shadow_sprite 0, 0, 1
end