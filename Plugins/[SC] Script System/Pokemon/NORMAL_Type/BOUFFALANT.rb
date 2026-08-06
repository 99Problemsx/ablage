#=============================================================================
# Bouffalant - NORMAL Type
#=============================================================================

GameData::Species.define :"BOUFFALANT" do |pkmn|
  pkmn.name "Bouffalant"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 95, attack: 110, defense: 95,
                  sp_atk: 55, sp_def: 40, speed: 95
  pkmn.abilities :"RECKLESS", :"SAPSIPPER"
  pkmn.hidden_abilities :"SOUNDPROOF"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 172
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.6
  pkmn.weight 94.5
  pkmn.category "Bash Buffalo"
  pkmn.pokedex_entry "They charge wildly and headbutt everything. They headbutts have enough destructive force to derail a train."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"PURSUIT"
    m.at 1, :"LEER"
    m.at 6, :"RAGE"
    m.at 11, :"FURYATTACK"
    m.at 16, :"HORNATTACK"
    m.at 21, :"SCARYFACE"
    m.at 26, :"REVENGE"
    m.at 31, :"HEADCHARGE"
    m.at 36, :"FOCUSENERGY"
    m.at 41, :"MEGAHORN"
    m.at 46, :"REVERSAL"
    m.at 51, :"THRASH"
    m.at 56, :"SWORDSDANCE"
    m.at 61, :"GIGAIMPACT"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BULLDOZE", :"CAPTIVATE", :"CUT", :"DOUBLETEAM", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GIGAIMPACT", :"HIDDENPOWER", :"IRONHEAD", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PAYBACK", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SURF", :"SWAGGER", :"SWORDSDANCE", :"TAUNT", :"TOXIC", :"UPROAR", :"WILDCHARGE", :"WORKUP", :"ZENHEADBUTT"
  pkmn.egg_moves :"AMNESIA", :"HEADBUTT", :"IRONHEAD", :"MUDSHOT", :"MUDSLAP", :"ROCKCLIMB", :"SKULLBASH", :"STOMP"
end

GameData::SpeciesMetrics.define :"BOUFFALANT" do |m|
  m.back_sprite -1, 0
  m.front_sprite -10, 23
  m.shadow_sprite 0, 0, 3
end