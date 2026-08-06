#=============================================================================
# Abomasnow - GRASS Type
#=============================================================================

GameData::Species.define :"ABOMASNOW" do |pkmn|
  pkmn.name "Abomasnow"
  pkmn.types :"GRASS", :"ICE"
  pkmn.base_stats hp: 90, attack: 92, defense: 75,
                  sp_atk: 60, sp_def: 92, speed: 85
  pkmn.abilities :"SNOWWARNING"
  pkmn.hidden_abilities :"SOUNDPROOF"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"White"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 173
  pkmn.catch_rate 60
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 2.2
  pkmn.weight 135.5
  pkmn.category "Frost Tree"
  pkmn.pokedex_entry "It whips up blizzards in mountains that are always buried in snow. It is the abominable snowman."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Monster", :"Grass"

  pkmn.moves do |m|
    m.at 1, :"ICEPUNCH"
    m.at 1, :"POWDERSNOW"
    m.at 1, :"LEER"
    m.at 1, :"RAZORLEAF"
    m.at 1, :"ICYWIND"
    m.at 5, :"RAZORLEAF"
    m.at 9, :"ICYWIND"
    m.at 13, :"GRASSWHISTLE"
    m.at 17, :"SWAGGER"
    m.at 21, :"MIST"
    m.at 26, :"ICESHARD"
    m.at 31, :"INGRAIN"
    m.at 36, :"WOODHAMMER"
    m.at 47, :"BLIZZARD"
    m.at 58, :"SHEERCOLD"
  end
  pkmn.tutor_moves :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BLOCK", :"BRICKBREAK", :"BULLDOZE", :"BULLETSEED", :"CAPTIVATE", :"DOUBLETEAM", :"EARTHQUAKE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FROSTBREATH", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"IRONTAIL", :"LIGHTSCREEN", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OUTRAGE", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWBALL", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"SUBSTITUTE", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"TOXIC", :"WATERPULSE", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"ABOMASNOW" do |m|
  m.back_sprite 0, 0
  m.front_sprite 0, 9
  m.shadow_sprite 0, 0, 3
end