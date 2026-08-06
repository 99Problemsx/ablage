#=============================================================================
# Swirlix - FAIRY Type
#=============================================================================

GameData::Species.define :"SWIRLIX" do |pkmn|
  pkmn.name "Swirlix"
  pkmn.types :"FAIRY"
  pkmn.base_stats hp: 62, attack: 48, defense: 66,
                  sp_atk: 49, sp_def: 59, speed: 57
  pkmn.abilities :"SWEETVEIL"
  pkmn.hidden_abilities :"UNBURDEN"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"White"
  pkmn.shape :"HeadLegs"
  pkmn.base_exp 68
  pkmn.catch_rate 200
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.4
  pkmn.weight 3.5
  pkmn.category "Cotton Candy"
  pkmn.pokedex_entry "To entangle its opponents in battle, it extrudes white threads as sweet and sticky as cotton candy."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Fairy"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"SWEETSCENT"
    m.at 3, :"PLAYNICE"
    m.at 6, :"FAIRYWIND"
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
  end
  pkmn.tutor_moves :"AFTERYOU", :"AMNESIA", :"ATTRACT", :"CALMMIND", :"CAPTIVATE", :"CHARM", :"CONFIDE", :"COVET", :"DAZZLINGGLEAM", :"DOUBLETEAM", :"DRAININGKISS", :"DREAMEATER", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FAKETEARS", :"FLAMETHROWER", :"FLASH", :"FRUSTRATION", :"GASTROACID", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"LIGHTSCREEN", :"MAGICCOAT", :"MIMIC", :"MISTYEXPLOSION", :"NATURALGIFT", :"PLAYROUGH", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SURF", :"SWAGGER", :"THIEF", :"THUNDERBOLT", :"TOXIC", :"TERABLAST"
  pkmn.egg_moves :"AFTERYOU", :"COPYCAT", :"STICKYWEB", :"YAWN"
end

GameData::SpeciesMetrics.define :"SWIRLIX" do |m|
  m.back_sprite 3, 4
  m.front_sprite 0, 2
end