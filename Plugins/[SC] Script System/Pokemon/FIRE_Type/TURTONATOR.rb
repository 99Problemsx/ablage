#=============================================================================
# Turtonator - FIRE Type
#=============================================================================

GameData::Species.define :"TURTONATOR" do |pkmn|
  pkmn.name "Turtonator"
  pkmn.types :"FIRE", :"DRAGON"
  pkmn.base_stats hp: 60, attack: 78, defense: 135,
                  sp_atk: 36, sp_def: 91, speed: 85
  pkmn.abilities :"SHELLARMOR"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 170
  pkmn.catch_rate 70
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 2.0
  pkmn.weight 212.0
  pkmn.category "Blast Turtle"
  pkmn.pokedex_entry "It lives in volcanoes and eats sulfur and other minerals. Materials from the food it eats form the basis of its explosive shell."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Monster", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"SMOG"
    m.at 1, :"TACKLE"
    m.at 4, :"EMBER"
    m.at 8, :"PROTECT"
    m.at 12, :"ENDURE"
    m.at 16, :"FLAIL"
    m.at 20, :"INCINERATE"
    m.at 24, :"IRONDEFENSE"
    m.at 28, :"DRAGONPULSE"
    m.at 32, :"BODYSLAM"
    m.at 36, :"FLAMETHROWER"
    m.at 40, :"SHELLTRAP"
    m.at 44, :"SHELLSMASH"
    m.at 48, :"OVERHEAT"
    m.at 52, :"EXPLOSION"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLOCK", :"BODYPRESS", :"BODYSLAM", :"BRUTALSWING", :"BULKUP", :"BULLDOZE", :"BURNINGJEALOUSY", :"CAPTIVATE", :"CHARGEBEAM", :"CONFIDE", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONCLAW", :"DRAGONPULSE", :"DRAGONTAIL", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"EXPLOSION", :"FACADE", :"FIREBLAST", :"FIRESPIN", :"FLAMECHARGE", :"FLAMETHROWER", :"FLASHCANNON", :"FLING", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"HEATCRASH", :"HEATWAVE", :"HEAVYSLAM", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"IRONDEFENSE", :"IRONHEAD", :"IRONTAIL", :"LASHOUT", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"OVERHEAT", :"PAYBACK", :"PROTECT", :"REST", :"RETURN", :"REVENGE", :"ROAR", :"ROCKTOMB", :"ROUND", :"SCALESHOT", :"SCORCHINGSANDS", :"SECRETPOWER", :"SHOCKWAVE", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"SOLARBEAM", :"STOMPINGTANTRUM", :"STONEEDGE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"TOXIC", :"UPROAR", :"VENOSHOCK", :"WILLOWISP", :"WORKUP", :"TERABLAST"
  pkmn.egg_moves :"CURSE", :"HEADSMASH", :"RAPIDSPIN", :"WIDEGUARD"
end

GameData::SpeciesMetrics.define :"TURTONATOR" do |m|
  m.back_sprite 2, 36
  m.front_sprite 4, 14
end