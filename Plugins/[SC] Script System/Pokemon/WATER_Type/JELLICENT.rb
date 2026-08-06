#=============================================================================
# Jellicent - WATER Type
#=============================================================================

GameData::Species.define :"JELLICENT" do |pkmn|
  pkmn.name "Jellicent"
  pkmn.types :"WATER", :"GHOST"
  pkmn.base_stats hp: 100, attack: 60, defense: 70,
                  sp_atk: 60, sp_def: 85, speed: 105
  pkmn.abilities :"WATERABSORB", :"CURSEDBODY"
  pkmn.hidden_abilities :"DAMP"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"White"
  pkmn.shape :"Multiped"
  pkmn.base_exp 168
  pkmn.catch_rate 60
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 2.2
  pkmn.weight 135.0
  pkmn.category "Floating"
  pkmn.pokedex_entry "They propel themselves by expelling absorbed seawater from their bodies. Their favorite food is life energy."
  pkmn.evs special_defense: 2
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"BUBBLE"
    m.at 1, :"WATERSPORT"
    m.at 1, :"ABSORB"
    m.at 1, :"NIGHTSHADE"
    m.at 5, :"ABSORB"
    m.at 9, :"NIGHTSHADE"
    m.at 13, :"BUBBLEBEAM"
    m.at 17, :"RECOVER"
    m.at 22, :"WATERPULSE"
    m.at 27, :"OMINOUSWIND"
    m.at 32, :"BRINE"
    m.at 37, :"RAINDANCE"
    m.at 45, :"HEX"
    m.at 53, :"HYDROPUMP"
    m.at 61, :"WRINGOUT"
    m.at 69, :"WATERSPOUT"
  end
  pkmn.tutor_moves :"ATTRACT", :"BIND", :"BLIZZARD", :"CAPTIVATE", :"DARKPULSE", :"DIVE", :"DOUBLETEAM", :"DREAMEATER", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"HAIL", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"MAGICCOAT", :"MIMIC", :"NATURALGIFT", :"PAINSPLIT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SCALD", :"SECRETPOWER", :"SHADOWBALL", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SNORE", :"SPITE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"TAUNT", :"TOXIC", :"TRICK", :"TRICKROOM", :"WATERFALL", :"WILLOWISP"
end

GameData::SpeciesMetrics.define :"JELLICENT" do |m|
  m.back_sprite 1, 0
  m.front_sprite 0, 4
  m.shadow_sprite 0, 0, 3
end