#=============================================================================
# Comfey - FAIRY Type
#=============================================================================

GameData::Species.define :"COMFEY" do |pkmn|
  pkmn.name "Comfey"
  pkmn.types :"FAIRY"
  pkmn.base_stats hp: 51, attack: 52, defense: 90,
                  sp_atk: 100, sp_def: 82, speed: 110
  pkmn.abilities :"FLOWERVEIL", :"TRIAGE"
  pkmn.hidden_abilities :"NATURALCURE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female75Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Green"
  pkmn.shape :"Head"
  pkmn.base_exp 170
  pkmn.catch_rate 60
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.1
  pkmn.weight 0.3
  pkmn.category "Posy Picker"
  pkmn.pokedex_entry "Baths prepared with the flowers from its vine have a relaxing effect, so this Pokémon is a hit with many people."
  pkmn.evs special_defense: 2
  pkmn.egg_groups :"Grass"

  pkmn.moves do |m|
    m.at 1, :"WRAP"
    m.at 1, :"GROWTH"
    m.at 3, :"VINEWHIP"
    m.at 6, :"HELPINGHAND"
    m.at 9, :"DRAININGKISS"
    m.at 12, :"FLOWERSHIELD"
    m.at 15, :"MAGICALLEAF"
    m.at 18, :"SYNTHESIS"
    m.at 21, :"LEECHSEED"
    m.at 24, :"GRASSKNOT"
    m.at 27, :"SWEETKISS"
    m.at 30, :"FLORALHEALING"
    m.at 33, :"PETALBLIZZARD"
    m.at 36, :"AROMATHERAPY"
    m.at 39, :"PLAYROUGH"
    m.at 42, :"SWEETSCENT"
    m.at 45, :"PETALDANCE"
    m.at 48, :"GRASSYTERRAIN"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AFTERYOU", :"ALLYSWITCH", :"AMNESIA", :"ATTRACT", :"BIND", :"BULLETSEED", :"CALMMIND", :"CAPTIVATE", :"CHARM", :"CONFIDE", :"COVET", :"DAZZLINGGLEAM", :"DEFOG", :"DOUBLETEAM", :"DRAININGKISS", :"ECHOEDVOICE", :"ENCORE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLING", :"FRUSTRATION", :"GIGADRAIN", :"GRASSKNOT", :"GRASSYGLIDE", :"GRASSYTERRAIN", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"LIGHTSCREEN", :"MAGICALLEAF", :"MAGICCOAT", :"MIMIC", :"NATURALGIFT", :"NATUREPOWER", :"PAINSPLIT", :"PLAYROUGH", :"POLLENPUFF", :"PROTECT", :"PSYCHUP", :"REST", :"RETURN", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STOREDPOWER", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SYNTHESIS", :"TAILWIND", :"TAUNT", :"TELEKINESIS", :"THIEF", :"TOXIC", :"TRICK", :"TRICKROOM", :"UTURN", :"WORRYSEED", :"TERABLAST"
  pkmn.egg_moves :"AFTERYOU", :"LEAFTORNADO", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"COMFEY" do |m|
  m.back_sprite 7, 16
  m.front_sprite 2, -1
end