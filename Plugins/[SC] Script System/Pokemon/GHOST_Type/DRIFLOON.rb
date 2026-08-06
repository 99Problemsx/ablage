#=============================================================================
# Drifloon - GHOST Type
#=============================================================================

GameData::Species.define :"DRIFLOON" do |pkmn|
  pkmn.name "Drifloon"
  pkmn.types :"GHOST", :"FLYING"
  pkmn.base_stats hp: 90, attack: 50, defense: 34,
                  sp_atk: 70, sp_def: 60, speed: 44
  pkmn.abilities :"AFTERMATH", :"UNBURDEN"
  pkmn.hidden_abilities :"FLAREBOOST"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fluctuating"
  pkmn.color :"Purple"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 70
  pkmn.catch_rate 125
  pkmn.happiness 70
  pkmn.hatch_steps 7710
  pkmn.height 0.4
  pkmn.weight 1.2
  pkmn.category "Balloon"
  pkmn.pokedex_entry "A Pokémon formed by the spirits of people and Pokémon. It loves damp, humid seasons."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"CONSTRICT"
    m.at 1, :"MINIMIZE"
    m.at 4, :"ASTONISH"
    m.at 8, :"GUST"
    m.at 13, :"FOCUSENERGY"
    m.at 16, :"PAYBACK"
    m.at 20, :"OMINOUSWIND"
    m.at 25, :"STOCKPILE"
    m.at 27, :"HEX"
    m.at 32, :"SWALLOW"
    m.at 32, :"SPITUP"
    m.at 36, :"SHADOWBALL"
    m.at 40, :"AMNESIA"
    m.at 44, :"BATONPASS"
    m.at 50, :"EXPLOSION"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AIRCUTTER", :"ATTRACT", :"BIND", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"CUT", :"DEFOG", :"DOUBLETEAM", :"DREAMEATER", :"EMBARGO", :"ENDURE", :"EXPLOSION", :"FACADE", :"FLASH", :"FRUSTRATION", :"GYROBALL", :"HIDDENPOWER", :"ICYWIND", :"KNOCKOFF", :"MAGICCOAT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PAINSPLIT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"RECYCLE", :"REST", :"RETURN", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SILVERWIND", :"SKILLSWAP", :"SLEEPTALK", :"SNORE", :"SPITE", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"TELEKINESIS", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"WILLOWISP"
  pkmn.egg_moves :"BODYSLAM", :"CLEARSMOG", :"DEFOG", :"DESTINYBOND", :"DISABLE", :"HAZE", :"HYPNOSIS", :"MEMENTO", :"WEATHERBALL"
end

GameData::SpeciesMetrics.define :"DRIFLOON" do |m|
  m.back_sprite 2, 0
  m.front_sprite 4, -5
  m.shadow_sprite 0, 0, 1
end