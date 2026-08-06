#=============================================================================
# Snover - GRASS Type
#=============================================================================

GameData::Species.define :"SNOVER" do |pkmn|
  pkmn.name "Snover"
  pkmn.types :"GRASS", :"ICE"
  pkmn.base_stats hp: 60, attack: 62, defense: 50,
                  sp_atk: 40, sp_def: 62, speed: 60
  pkmn.abilities :"SNOWWARNING"
  pkmn.hidden_abilities :"SOUNDPROOF"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"White"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 67
  pkmn.catch_rate 120
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.0
  pkmn.weight 50.5
  pkmn.category "Frost Tree"
  pkmn.pokedex_entry "It lives on snowy mountains. Having had little contact with humans, it is boldly inquisitive."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Monster", :"Grass"

  pkmn.moves do |m|
    m.at 1, :"POWDERSNOW"
    m.at 1, :"LEER"
    m.at 5, :"RAZORLEAF"
    m.at 9, :"ICYWIND"
    m.at 13, :"GRASSWHISTLE"
    m.at 17, :"SWAGGER"
    m.at 21, :"MIST"
    m.at 26, :"ICESHARD"
    m.at 31, :"INGRAIN"
    m.at 36, :"WOODHAMMER"
    m.at 41, :"BLIZZARD"
    m.at 46, :"SHEERCOLD"
  end
  pkmn.tutor_moves :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BULLETSEED", :"CAPTIVATE", :"DOUBLETEAM", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FROSTBREATH", :"FRUSTRATION", :"GIGADRAIN", :"GRASSKNOT", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"IRONTAIL", :"LIGHTSCREEN", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWBALL", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"TOXIC", :"WATERPULSE", :"WORRYSEED"
  pkmn.egg_moves :"AVALANCHE", :"BULLETSEED", :"DOUBLEEDGE", :"GROWTH", :"LEECHSEED", :"MAGICALLEAF", :"MIST", :"NATURALGIFT", :"SEEDBOMB", :"SKULLBASH", :"STOMP"
end

GameData::SpeciesMetrics.define :"SNOVER" do |m|
  m.back_sprite 1, 0
  m.front_sprite 0, 15
  m.shadow_sprite 0, 0, 2
end