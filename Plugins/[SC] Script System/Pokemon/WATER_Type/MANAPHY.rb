#=============================================================================
# Manaphy - WATER Type
#=============================================================================

GameData::Species.define :"MANAPHY" do |pkmn|
  pkmn.name "Manaphy"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 100, attack: 100, defense: 100,
                  sp_atk: 100, sp_def: 100, speed: 100
  pkmn.abilities :"HYDRATION"
  pkmn.flags :"Mythical"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 270
  pkmn.catch_rate 3
  pkmn.happiness 70
  pkmn.hatch_steps 2570
  pkmn.height 0.3
  pkmn.weight 1.4
  pkmn.category "Seafaring"
  pkmn.pokedex_entry "Born on a cold seafloor, it will swim great distances to return to its birthplace."
  pkmn.evs hp: 3
  pkmn.egg_groups :"Water1", :"Fairy"

  pkmn.moves do |m|
    m.at 1, :"TAILGLOW"
    m.at 1, :"BUBBLE"
    m.at 1, :"WATERSPORT"
    m.at 9, :"CHARM"
    m.at 16, :"SUPERSONIC"
    m.at 24, :"BUBBLEBEAM"
    m.at 31, :"ACIDARMOR"
    m.at 39, :"WHIRLPOOL"
    m.at 46, :"WATERPULSE"
    m.at 54, :"AQUARING"
    m.at 61, :"DIVE"
    m.at 69, :"RAINDANCE"
    m.at 76, :"HEARTSWAP"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"BLIZZARD", :"BOUNCE", :"BRINE", :"CALMMIND", :"COVET", :"DIVE", :"DOUBLETEAM", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FLING", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HAIL", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"KNOCKOFF", :"LASTRESORT", :"LIGHTSCREEN", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SCALD", :"SECRETPOWER", :"SHADOWBALL", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"SWIFT", :"TOXIC", :"UPROAR", :"UTURN", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"MANAPHY" do |m|
  m.back_sprite -9, 0
  m.front_sprite 7, 3
  m.shadow_sprite 0, 0, 1
end