#=============================================================================
# Phione - WATER Type
#=============================================================================

GameData::Species.define :"PHIONE" do |pkmn|
  pkmn.name "Phione"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 80, attack: 80, defense: 80,
                  sp_atk: 80, sp_def: 80, speed: 80
  pkmn.abilities :"HYDRATION"
  pkmn.flags :"Mythical"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 216
  pkmn.catch_rate 30
  pkmn.happiness 70
  pkmn.hatch_steps 10280
  pkmn.height 0.4
  pkmn.weight 3.1
  pkmn.category "Sea Drifter"
  pkmn.pokedex_entry "A Pokémon that lives in warm seas. It inflates the flotation sac on its head to drift and search for food."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Water1", :"Fairy"

  pkmn.moves do |m|
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
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"BLIZZARD", :"BOUNCE", :"BRINE", :"COVET", :"DIVE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FLING", :"FRUSTRATION", :"GRASSKNOT", :"HAIL", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"KNOCKOFF", :"LASTRESORT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SCALD", :"SECRETPOWER", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"SWIFT", :"TOXIC", :"UPROAR", :"UTURN", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"PHIONE" do |m|
  m.back_sprite -9, 0
  m.front_sprite 5, 4
  m.shadow_sprite 0, 0, 1
end