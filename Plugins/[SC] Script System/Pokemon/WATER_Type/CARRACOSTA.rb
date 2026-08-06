#=============================================================================
# Carracosta - WATER Type
#=============================================================================

GameData::Species.define :"CARRACOSTA" do |pkmn|
  pkmn.name "Carracosta"
  pkmn.types :"WATER", :"ROCK"
  pkmn.base_stats hp: 74, attack: 108, defense: 133,
                  sp_atk: 32, sp_def: 83, speed: 65
  pkmn.abilities :"SOLIDROCK", :"STURDY"
  pkmn.hidden_abilities :"SWIFTSWIM"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 173
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 7710
  pkmn.height 1.2
  pkmn.weight 81.0
  pkmn.category "Prototurtle"
  pkmn.pokedex_entry "Incredible jaw strength enables them to chew up steel beams and rocks along with their prey."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Water1", :"Water3"

  pkmn.moves do |m|
    m.at 1, :"BIDE"
    m.at 1, :"WITHDRAW"
    m.at 1, :"WATERGUN"
    m.at 1, :"ROLLOUT"
    m.at 5, :"ROLLOUT"
    m.at 8, :"BITE"
    m.at 11, :"PROTECT"
    m.at 15, :"AQUAJET"
    m.at 18, :"ANCIENTPOWER"
    m.at 21, :"CRUNCH"
    m.at 25, :"WIDEGUARD"
    m.at 28, :"BRINE"
    m.at 31, :"SMACKDOWN"
    m.at 35, :"CURSE"
    m.at 40, :"SHELLSMASH"
    m.at 45, :"AQUATAIL"
    m.at 51, :"ROCKSLIDE"
    m.at 56, :"RAINDANCE"
    m.at 61, :"HYDROPUMP"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"BLIZZARD", :"BLOCK", :"BULLDOZE", :"CAPTIVATE", :"DIG", :"DIVE", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"IRONDEFENSE", :"IRONHEAD", :"IRONTAIL", :"LOWKICK", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUPERPOWER", :"SURF", :"SWAGGER", :"TOXIC", :"WATERFALL"
end

GameData::SpeciesMetrics.define :"CARRACOSTA" do |m|
  m.back_sprite -1, 0
  m.front_sprite -4, 23
  m.shadow_sprite 0, 0, 3
end