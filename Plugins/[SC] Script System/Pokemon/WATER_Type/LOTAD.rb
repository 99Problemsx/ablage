#=============================================================================
# Lotad - WATER Type
#=============================================================================

GameData::Species.define :"LOTAD" do |pkmn|
  pkmn.name "Lotad"
  pkmn.types :"WATER", :"GRASS"
  pkmn.base_stats hp: 40, attack: 30, defense: 30,
                  sp_atk: 30, sp_def: 40, speed: 50
  pkmn.abilities :"SWIFTSWIM", :"RAINDISH"
  pkmn.hidden_abilities :"OWNTEMPO"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 44
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.5
  pkmn.weight 2.6
  pkmn.category "Water Weed"
  pkmn.pokedex_entry "This Pokémon lives in ponds with clean water. It is known to ferry small Pokémon across ponds by carrying them on the broad leaf on its head."
  pkmn.evs special_defense: 1
  pkmn.egg_groups :"Water1", :"Grass"

  pkmn.moves do |m|
    m.at 1, :"ASTONISH"
    m.at 3, :"GROWL"
    m.at 5, :"ABSORB"
    m.at 7, :"NATUREPOWER"
    m.at 11, :"MIST"
    m.at 15, :"NATURALGIFT"
    m.at 19, :"MEGADRAIN"
    m.at 25, :"BUBBLEBEAM"
    m.at 31, :"ZENHEADBUTT"
    m.at 37, :"RAINDANCE"
    m.at 45, :"ENERGYBALL"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BULLETSEED", :"CAPTIVATE", :"DOUBLEEDGE", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGADRAIN", :"GRASSKNOT", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SCALD", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SURF", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"THIEF", :"TOXIC", :"UPROAR", :"WATERPULSE", :"WHIRLPOOL", :"ZENHEADBUTT"
  pkmn.egg_moves :"COUNTER", :"FLAIL", :"GIGADRAIN", :"LEECHSEED", :"RAZORLEAF", :"SWEETSCENT", :"SYNTHESIS", :"TEETERDANCE", :"TICKLE", :"WATERGUN"
end

GameData::SpeciesMetrics.define :"LOTAD" do |m|
  m.back_sprite 0, 0
  m.front_sprite 1, 27
  m.shadow_sprite 0, 0, 2
end