#=============================================================================
# Axew - DRAGON Type
#=============================================================================

GameData::Species.define :"AXEW" do |pkmn|
  pkmn.name "Axew"
  pkmn.types :"DRAGON"
  pkmn.base_stats hp: 46, attack: 87, defense: 60,
                  sp_atk: 57, sp_def: 30, speed: 40
  pkmn.abilities :"RIVALRY", :"MOLDBREAKER"
  pkmn.hidden_abilities :"UNNERVE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Green"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 64
  pkmn.catch_rate 75
  pkmn.happiness 35
  pkmn.hatch_steps 10280
  pkmn.height 0.6
  pkmn.weight 18.0
  pkmn.category "Tusk"
  pkmn.pokedex_entry "They mark their territory by leaving gashes in trees with their tusks. If a tusk breaks, a new one grows in quickly."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Monster", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
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
    m.at 41, :"DRAGONPULSE"
    m.at 46, :"SWORDSDANCE"
    m.at 51, :"GUILLOTINE"
    m.at 56, :"OUTRAGE"
    m.at 61, :"GIGAIMPACT"
  end
  pkmn.tutor_moves :"AERIALACE", :"AQUATAIL", :"ATTRACT", :"CAPTIVATE", :"CUT", :"DIG", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONCLAW", :"DRAGONPULSE", :"DUALCHOP", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLING", :"FRUSTRATION", :"GIGAIMPACT", :"HIDDENPOWER", :"HONECLAWS", :"INCINERATE", :"IRONTAIL", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PAYBACK", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"SWORDSDANCE", :"TAUNT", :"TOXIC", :"XSCISSOR"
  pkmn.egg_moves :"COUNTER", :"DRAGONPULSE", :"ENDEAVOR", :"ENDURE", :"FOCUSENERGY", :"HARDEN", :"IRONTAIL", :"NIGHTSLASH", :"RAZORWIND", :"REVERSAL"
end

GameData::SpeciesMetrics.define :"AXEW" do |m|
  m.back_sprite 1, 0
  m.front_sprite -1, 30
  m.shadow_sprite 0, 0, 2
end