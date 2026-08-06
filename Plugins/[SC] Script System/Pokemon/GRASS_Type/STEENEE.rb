#=============================================================================
# Steenee - GRASS Type
#=============================================================================

GameData::Species.define :"STEENEE" do |pkmn|
  pkmn.name "Steenee"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 52, attack: 40, defense: 48,
                  sp_atk: 62, sp_def: 40, speed: 48
  pkmn.abilities :"LEAFGUARD", :"OBLIVIOUS"
  pkmn.hidden_abilities :"SWEETVEIL"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Purple"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 102
  pkmn.catch_rate 120
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.7
  pkmn.weight 8.2
  pkmn.category "Fruit"
  pkmn.pokedex_entry "It's protected by its hard sepals, so it plays with bird Pokémon without worry. They peck it relentlessly, but it doesn't care."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Grass"

  pkmn.moves do |m|
    m.at 1, :"FLAIL"
    m.at 1, :"SPLASH"
    m.at 1, :"PLAYNICE"
    m.at 1, :"RAPIDSPIN"
    m.at 1, :"RAZORLEAF"
    m.at 16, :"SWEETSCENT"
    m.at 22, :"MAGICALLEAF"
    m.at 28, :"STOMP"
    m.at 34, :"TEETERDANCE"
    m.at 40, :"AROMATICMIST"
    m.at 46, :"AROMATHERAPY"
    m.at 52, :"LEAFSTORM"
  end
  pkmn.tutor_moves :"ATTRACT", :"BOUNCE", :"CAPTIVATE", :"CHARM", :"CONFIDE", :"COVET", :"DAZZLINGGLEAM", :"DOUBLETEAM", :"DRAININGKISS", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLING", :"FRUSTRATION", :"GIGADRAIN", :"GRASSKNOT", :"GRASSYGLIDE", :"HELPINGHAND", :"HIDDENPOWER", :"KNOCKOFF", :"LEAFSTORM", :"LIGHTSCREEN", :"LOWSWEEP", :"MAGICALLEAF", :"MIMIC", :"NATURALGIFT", :"NATUREPOWER", :"PAYBACK", :"PLAYROUGH", :"PROTECT", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SYNTHESIS", :"TOXIC", :"TRIPLEAXEL", :"WORRYSEED", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"STEENEE" do |m|
  m.back_sprite 4, 51
  m.front_sprite 3, 21
end