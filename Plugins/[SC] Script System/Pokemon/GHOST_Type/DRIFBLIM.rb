#=============================================================================
# Drifblim - GHOST Type
#=============================================================================

GameData::Species.define :"DRIFBLIM" do |pkmn|
  pkmn.name "Drifblim"
  pkmn.types :"GHOST", :"FLYING"
  pkmn.base_stats hp: 150, attack: 80, defense: 44,
                  sp_atk: 80, sp_def: 90, speed: 54
  pkmn.abilities :"AFTERMATH", :"UNBURDEN"
  pkmn.hidden_abilities :"FLAREBOOST"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fluctuating"
  pkmn.color :"Purple"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 174
  pkmn.catch_rate 60
  pkmn.happiness 70
  pkmn.hatch_steps 7710
  pkmn.height 1.2
  pkmn.weight 15.0
  pkmn.category "Blimp"
  pkmn.pokedex_entry "It's drowzy in daytime, but flies off in the evening in big groups. No one knows where they go."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"CONSTRICT"
    m.at 1, :"MINIMIZE"
    m.at 1, :"ASTONISH"
    m.at 1, :"GUST"
    m.at 4, :"ASTONISH"
    m.at 8, :"GUST"
    m.at 13, :"FOCUSENERGY"
    m.at 16, :"PAYBACK"
    m.at 20, :"OMINOUSWIND"
    m.at 25, :"STOCKPILE"
    m.at 27, :"HEX"
    m.at 34, :"SWALLOW"
    m.at 34, :"SPITUP"
    m.at 40, :"SHADOWBALL"
    m.at 46, :"AMNESIA"
    m.at 52, :"BATONPASS"
    m.at 60, :"EXPLOSION"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AIRCUTTER", :"ATTRACT", :"BIND", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"CUT", :"DEFOG", :"DOUBLETEAM", :"DREAMEATER", :"EMBARGO", :"ENDURE", :"EXPLOSION", :"FACADE", :"FLASH", :"FLY", :"FRUSTRATION", :"GIGAIMPACT", :"GYROBALL", :"HIDDENPOWER", :"HYPERBEAM", :"ICYWIND", :"KNOCKOFF", :"MAGICCOAT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PAINSPLIT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"RECYCLE", :"REST", :"RETURN", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SILVERWIND", :"SKILLSWAP", :"SLEEPTALK", :"SNORE", :"SPITE", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"TELEKINESIS", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"WILLOWISP"
end

GameData::SpeciesMetrics.define :"DRIFBLIM" do |m|
  m.back_sprite -1, 0
  m.front_sprite 3, -6
  m.shadow_sprite 0, 0, 2
end