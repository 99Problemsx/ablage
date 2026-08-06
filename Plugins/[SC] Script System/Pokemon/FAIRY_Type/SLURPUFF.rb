#=============================================================================
# Slurpuff - FAIRY Type
#=============================================================================

GameData::Species.define :"SLURPUFF" do |pkmn|
  pkmn.name "Slurpuff"
  pkmn.types :"FAIRY"
  pkmn.base_stats hp: 82, attack: 80, defense: 86,
                  sp_atk: 72, sp_def: 85, speed: 75
  pkmn.abilities :"SWEETVEIL"
  pkmn.hidden_abilities :"UNBURDEN"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"White"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 168
  pkmn.catch_rate 140
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.8
  pkmn.weight 5.0
  pkmn.category "Meringue"
  pkmn.pokedex_entry "It can distinguish the faintest of scents. It puts its sensitive sense of smell to use by helping pastry chefs in their work."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Fairy"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"SWEETSCENT"
    m.at 1, :"PLAYNICE"
    m.at 1, :"FAIRYWIND"
    m.at 9, :"AROMATHERAPY"
    m.at 12, :"DRAININGKISS"
    m.at 15, :"FAKETEARS"
    m.at 18, :"ROUND"
    m.at 21, :"STRINGSHOT"
    m.at 24, :"COTTONSPORE"
    m.at 27, :"ENERGYBALL"
    m.at 30, :"WISH"
    m.at 33, :"PLAYROUGH"
    m.at 36, :"COTTONGUARD"
    m.at 39, :"ENDEAVOR"
    m.at 42, :"STICKYWEB"
  end
  pkmn.tutor_moves :"AFTERYOU", :"AMNESIA", :"ATTRACT", :"CALMMIND", :"CAPTIVATE", :"CHARM", :"CONFIDE", :"COVET", :"DAZZLINGGLEAM", :"DOUBLETEAM", :"DRAININGKISS", :"DRAINPUNCH", :"DREAMEATER", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FAKETEARS", :"FLAMETHROWER", :"FLASH", :"FRUSTRATION", :"GASTROACID", :"GIGAIMPACT", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"LIGHTSCREEN", :"MAGICCOAT", :"METRONOME", :"MIMIC", :"MISTYEXPLOSION", :"NATURALGIFT", :"PLAYROUGH", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SURF", :"SWAGGER", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"TOXIC", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"SLURPUFF" do |m|
  m.back_sprite 3, 16
  m.front_sprite 0, 4
end