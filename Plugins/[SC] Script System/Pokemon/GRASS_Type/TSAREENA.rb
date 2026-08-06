#=============================================================================
# Tsareena - GRASS Type
#=============================================================================

GameData::Species.define :"TSAREENA" do |pkmn|
  pkmn.name "Tsareena"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 72, attack: 120, defense: 98,
                  sp_atk: 72, sp_def: 50, speed: 98
  pkmn.abilities :"LEAFGUARD", :"QUEENLYMAJESTY"
  pkmn.hidden_abilities :"SWEETVEIL"
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Purple"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 255
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.2
  pkmn.weight 21.4
  pkmn.category "Fruit"
  pkmn.pokedex_entry "A Pokémon with an aggressive personality and a mastery of kicking, it cackles every time it kicks an opponent."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Grass"

  pkmn.moves do |m|
    m.at 0, :"TROPKICK"
    m.at 1, :"POWERWHIP"
    m.at 1, :"FLAIL"
    m.at 1, :"PLAYNICE"
    m.at 1, :"SPLASH"
    m.at 1, :"SWAGGER"
    m.at 1, :"RAPIDSPIN"
    m.at 1, :"RAZORLEAF"
    m.at 16, :"SWEETSCENT"
    m.at 22, :"MAGICALLEAF"
    m.at 28, :"STOMP"
    m.at 34, :"TEETERDANCE"
    m.at 40, :"AROMATICMIST"
    m.at 46, :"AROMATHERAPY"
    m.at 52, :"LEAFSTORM"
    m.at 58, :"HIGHJUMPKICK"
  end
  pkmn.tutor_moves :"ACROBATICS", :"ATTRACT", :"BOUNCE", :"CAPTIVATE", :"CHARM", :"CONFIDE", :"COVET", :"DAZZLINGGLEAM", :"DOUBLETEAM", :"DRAININGKISS", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLING", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSYGLIDE", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"KNOCKOFF", :"LASERFOCUS", :"LEAFSTORM", :"LIGHTSCREEN", :"LOWKICK", :"LOWSWEEP", :"MAGICALLEAF", :"MEGAKICK", :"MIMIC", :"NATURALGIFT", :"NATUREPOWER", :"PAYBACK", :"PLAYROUGH", :"POWERWHIP", :"PROTECT", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SOLARBLADE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SYNTHESIS", :"TAUNT", :"TOXIC", :"TRIPLEAXEL", :"UTURN", :"WORRYSEED", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"TSAREENA" do |m|
  m.back_sprite 8, 61
  m.front_sprite 2, 10
end