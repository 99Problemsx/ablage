#=============================================================================
# Maractus - GRASS Type
#=============================================================================

GameData::Species.define :"MARACTUS" do |pkmn|
  pkmn.name "Maractus"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 75, attack: 86, defense: 67,
                  sp_atk: 60, sp_def: 106, speed: 67
  pkmn.abilities :"WATERABSORB", :"CHLOROPHYLL"
  pkmn.hidden_abilities :"STORMDRAIN"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 161
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.0
  pkmn.weight 28.0
  pkmn.category "Cactus"
  pkmn.pokedex_entry "Arid regions are their habitat. They move rhythmically, making a sound similar to maracas."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Grass"

  pkmn.moves do |m|
    m.at 1, :"PECK"
    m.at 1, :"ABSORB"
    m.at 3, :"SWEETSCENT"
    m.at 6, :"GROWTH"
    m.at 10, :"PINMISSILE"
    m.at 13, :"MEGADRAIN"
    m.at 15, :"SYNTHESIS"
    m.at 18, :"COTTONSPORE"
    m.at 22, :"NEEDLEARM"
    m.at 26, :"GIGADRAIN"
    m.at 29, :"ACUPRESSURE"
    m.at 33, :"INGRAIN"
    m.at 38, :"PETALDANCE"
    m.at 42, :"SUCKERPUNCH"
    m.at 45, :"SUNNYDAY"
    m.at 50, :"SOLARBEAM"
    m.at 55, :"COTTONGUARD"
    m.at 57, :"AFTERYOU"
  end
  pkmn.tutor_moves :"AERIALACE", :"AFTERYOU", :"ATTRACT", :"BOUNCE", :"CAPTIVATE", :"DOUBLETEAM", :"DRAINPUNCH", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FRUSTRATION", :"GIGADRAIN", :"GRASSKNOT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERVOICE", :"KNOCKOFF", :"MIMIC", :"NATURALGIFT", :"POISONJAB", :"PROTECT", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SYNTHESIS", :"TOXIC", :"UPROAR", :"WORRYSEED"
  pkmn.egg_moves :"BOUNCE", :"BULLETSEED", :"GRASSWHISTLE", :"LEECHSEED", :"SEEDBOMB", :"SPIKES", :"WOODHAMMER", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"MARACTUS" do |m|
  m.back_sprite 2, 0
  m.front_sprite 0, 14
  m.shadow_sprite 0, 0, 2
end