#=============================================================================
# Fraxure - DRAGON Type
#=============================================================================

GameData::Species.define :"FRAXURE" do |pkmn|
  pkmn.name "Fraxure"
  pkmn.types :"DRAGON"
  pkmn.base_stats hp: 66, attack: 117, defense: 70,
                  sp_atk: 67, sp_def: 40, speed: 50
  pkmn.abilities :"RIVALRY", :"MOLDBREAKER"
  pkmn.hidden_abilities :"UNNERVE"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Green"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 144
  pkmn.catch_rate 60
  pkmn.happiness 35
  pkmn.hatch_steps 10280
  pkmn.height 1.0
  pkmn.weight 36.0
  pkmn.category "Axe Jaw"
  pkmn.pokedex_entry "Their tusks can shatter rocks. Territory battles between Fraxure can be intensely violent."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Monster", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"LEER"
    m.at 1, :"ASSURANCE"
    m.at 1, :"DRAGONRAGE"
    m.at 4, :"LEER"
    m.at 7, :"ASSURANCE"
    m.at 10, :"DRAGONRAGE"
    m.at 13, :"DUALCHOP"
    m.at 16, :"SCARYFACE"
    m.at 20, :"SLASH"
    m.at 24, :"FALSESWIPE"
    m.at 28, :"DRAGONCLAW"
    m.at 32, :"DRAGONDANCE"
    m.at 36, :"TAUNT"
    m.at 42, :"DRAGONPULSE"
    m.at 48, :"SWORDSDANCE"
    m.at 54, :"GUILLOTINE"
    m.at 60, :"OUTRAGE"
    m.at 66, :"GIGAIMPACT"
  end
  pkmn.tutor_moves :"AERIALACE", :"AQUATAIL", :"ATTRACT", :"CAPTIVATE", :"CUT", :"DIG", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONCLAW", :"DRAGONPULSE", :"DRAGONTAIL", :"DUALCHOP", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLING", :"FRUSTRATION", :"GIGAIMPACT", :"HIDDENPOWER", :"HONECLAWS", :"INCINERATE", :"IRONTAIL", :"LOWKICK", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PAYBACK", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"SWORDSDANCE", :"TAUNT", :"TOXIC", :"XSCISSOR"
end

GameData::SpeciesMetrics.define :"FRAXURE" do |m|
  m.back_sprite -5, 0
  m.front_sprite 1, 23
  m.shadow_sprite 0, 0, 3
end