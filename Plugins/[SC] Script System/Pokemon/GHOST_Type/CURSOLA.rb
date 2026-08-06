#=============================================================================
# Cursola - GHOST Type
#=============================================================================

GameData::Species.define :"CURSOLA" do |pkmn|
  pkmn.name "Cursola"
  pkmn.types :"GHOST"
  pkmn.base_stats hp: 60, attack: 95, defense: 50,
                  sp_atk: 30, sp_def: 145, speed: 130
  pkmn.abilities :"WEAKARMOR"
  pkmn.hidden_abilities :"PERISHBODY"
  pkmn.flags :"DefaultForm_1", :"InheritFormWithEverStone"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female75Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"White"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 179
  pkmn.catch_rate 30
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.0
  pkmn.weight 0.4
  pkmn.category "Coral"
  pkmn.pokedex_entry "Its shell is overflowing with its heightened otherworldly energy. The ectoplasm serves as protection for this Pokémon's core spirit."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Water1", :"Water3"

  pkmn.moves do |m|
    m.at 1, :"PERISHSONG"
    m.at 1, :"TACKLE"
    m.at 1, :"HARDEN"
    m.at 1, :"ASTONISH"
    m.at 1, :"DISABLE"
    m.at 15, :"SPITE"
    m.at 20, :"ANCIENTPOWER"
    m.at 25, :"HEX"
    m.at 30, :"CURSE"
    m.at 35, :"STRENGTHSAP"
    m.at 40, :"POWERGEM"
    m.at 45, :"NIGHTSHADE"
    m.at 50, :"GRUDGE"
    m.at 55, :"MIRRORCOAT"
  end
  pkmn.tutor_moves :"AMNESIA", :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BRINE", :"BULLDOZE", :"BURNINGJEALOUSY", :"CALMMIND", :"CAPTIVATE", :"CONFIDE", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"HAIL", :"HEX", :"HIDDENPOWER", :"HYDROPUMP", :"HYPERBEAM", :"ICEBEAM", :"ICICLESPEAR", :"ICYWIND", :"IRONDEFENSE", :"LEECHLIFE", :"LIGHTSCREEN", :"LIQUIDATION", :"METEORBEAM", :"MIMIC", :"NATURALGIFT", :"PINMISSILE", :"POLTERGEIST", :"POWERGEM", :"PROTECT", :"PSYCHIC", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"REVENGE", :"ROCKBLAST", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SCALD", :"SCREECH", :"SECRETPOWER", :"SELFDESTRUCT", :"SHADOWBALL", :"SLEEPTALK", :"SNORE", :"STEALTHROCK", :"STOMPINGTANTRUM", :"STONEEDGE", :"SUBSTITUTE", :"SUNNYDAY", :"SURF", :"SWAGGER", :"THROATCHOP", :"WHIRLPOOL", :"WILLOWISP", :"TERABLAST"
  pkmn.egg_moves :"CONFUSERAY", :"DESTINYBOND", :"HAZE", :"HEADSMASH", :"NATUREPOWER", :"WATERPULSE"
end

GameData::SpeciesMetrics.define :"CURSOLA" do |m|
  m.back_sprite 0, 34
  m.front_sprite 2, 17
end