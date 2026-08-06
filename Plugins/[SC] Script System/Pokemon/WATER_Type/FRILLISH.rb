#=============================================================================
# Frillish - WATER Type
#=============================================================================

GameData::Species.define :"FRILLISH" do |pkmn|
  pkmn.name "Frillish"
  pkmn.types :"WATER", :"GHOST"
  pkmn.base_stats hp: 55, attack: 40, defense: 50,
                  sp_atk: 40, sp_def: 65, speed: 85
  pkmn.abilities :"WATERABSORB", :"CURSEDBODY"
  pkmn.hidden_abilities :"DAMP"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"White"
  pkmn.shape :"Multiped"
  pkmn.base_exp 67
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.2
  pkmn.weight 33.0
  pkmn.category "Floating"
  pkmn.pokedex_entry "They paralyze prey with poison, then drag them down to their lairs, five miles below the surface."
  pkmn.evs special_defense: 1
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"BUBBLE"
    m.at 1, :"WATERSPORT"
    m.at 5, :"ABSORB"
    m.at 9, :"NIGHTSHADE"
    m.at 13, :"BUBBLEBEAM"
    m.at 17, :"RECOVER"
    m.at 22, :"WATERPULSE"
    m.at 27, :"OMINOUSWIND"
    m.at 32, :"BRINE"
    m.at 37, :"RAINDANCE"
    m.at 43, :"HEX"
    m.at 49, :"HYDROPUMP"
    m.at 55, :"WRINGOUT"
    m.at 61, :"WATERSPOUT"
  end
  pkmn.tutor_moves :"ATTRACT", :"BIND", :"BLIZZARD", :"CAPTIVATE", :"DARKPULSE", :"DIVE", :"DOUBLETEAM", :"DREAMEATER", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGADRAIN", :"HAIL", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"MAGICCOAT", :"MIMIC", :"NATURALGIFT", :"PAINSPLIT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SCALD", :"SECRETPOWER", :"SHADOWBALL", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SNORE", :"SPITE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"TAUNT", :"TOXIC", :"TRICK", :"TRICKROOM", :"WATERFALL", :"WILLOWISP"
  pkmn.egg_moves :"ACIDARMOR", :"CONFUSERAY", :"CONSTRICT", :"MIST", :"PAINSPLIT", :"RECOVER"
end

GameData::SpeciesMetrics.define :"FRILLISH" do |m|
  m.back_sprite -1, 0
  m.front_sprite 0, 5
  m.shadow_sprite 0, 0, 3
end