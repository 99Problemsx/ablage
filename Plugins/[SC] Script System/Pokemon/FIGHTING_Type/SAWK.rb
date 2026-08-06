#=============================================================================
# Sawk - FIGHTING Type
#=============================================================================

GameData::Species.define :"SAWK" do |pkmn|
  pkmn.name "Sawk"
  pkmn.types :"FIGHTING"
  pkmn.base_stats hp: 75, attack: 125, defense: 75,
                  sp_atk: 85, sp_def: 30, speed: 75
  pkmn.abilities :"STURDY", :"INNERFOCUS"
  pkmn.hidden_abilities :"MOLDBREAKER"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"AlwaysMale"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 163
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.4
  pkmn.weight 51.0
  pkmn.category "Karate"
  pkmn.pokedex_entry "Tying their belts gets them pumped and makes their punches more destructive. Disturbing their training angers them."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"ROCKSMASH"
    m.at 1, :"LEER"
    m.at 5, :"BIDE"
    m.at 9, :"FOCUSENERGY"
    m.at 13, :"DOUBLEKICK"
    m.at 17, :"LOWSWEEP"
    m.at 21, :"COUNTER"
    m.at 25, :"KARATECHOP"
    m.at 29, :"BRICKBREAK"
    m.at 33, :"BULKUP"
    m.at 37, :"RETALIATE"
    m.at 41, :"ENDURE"
    m.at 45, :"QUICKGUARD"
    m.at 49, :"CLOSECOMBAT"
    m.at 53, :"REVERSAL"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLOCK", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"DIG", :"DOUBLETEAM", :"DUALCHOP", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLING", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HELPINGHAND", :"HIDDENPOWER", :"ICEPUNCH", :"KNOCKOFF", :"LOWKICK", :"LOWSWEEP", :"MIMIC", :"NATURALGIFT", :"PAINSPLIT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"TAUNT", :"THUNDERPUNCH", :"TOXIC", :"WORKUP"
end

GameData::SpeciesMetrics.define :"SAWK" do |m|
  m.back_sprite 2, 0
  m.front_sprite -1, 21
  m.shadow_sprite 0, 0, 3
end