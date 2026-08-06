#=============================================================================
# Mienfoo - FIGHTING Type
#=============================================================================

GameData::Species.define :"MIENFOO" do |pkmn|
  pkmn.name "Mienfoo"
  pkmn.types :"FIGHTING"
  pkmn.base_stats hp: 45, attack: 85, defense: 50,
                  sp_atk: 65, sp_def: 55, speed: 50
  pkmn.abilities :"INNERFOCUS", :"REGENERATOR"
  pkmn.hidden_abilities :"RECKLESS"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Yellow"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 70
  pkmn.catch_rate 180
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 0.9
  pkmn.weight 20.0
  pkmn.category "Martial Arts"
  pkmn.pokedex_entry "They have mastered elegant combos. As they concentrate, their battle moves become swifter and more precise."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Field", :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"POUND"
    m.at 5, :"MEDITATE"
    m.at 9, :"DETECT"
    m.at 13, :"FAKEOUT"
    m.at 17, :"DOUBLESLAP"
    m.at 21, :"SWIFT"
    m.at 25, :"CALMMIND"
    m.at 29, :"FORCEPALM"
    m.at 33, :"DRAINPUNCH"
    m.at 37, :"JUMPKICK"
    m.at 41, :"UTURN"
    m.at 45, :"QUICKGUARD"
    m.at 49, :"BOUNCE"
    m.at 53, :"HIGHJUMPKICK"
    m.at 57, :"REVERSAL"
    m.at 61, :"AURASPHERE"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"ATTRACT", :"BOUNCE", :"BRICKBREAK", :"BULKUP", :"CALMMIND", :"CAPTIVATE", :"DIG", :"DOUBLETEAM", :"DRAINPUNCH", :"DUALCHOP", :"ENDURE", :"FACADE", :"FLING", :"FOCUSBLAST", :"FRUSTRATION", :"GRASSKNOT", :"HELPINGHAND", :"HIDDENPOWER", :"KNOCKOFF", :"LOWKICK", :"LOWSWEEP", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REFLECT", :"REST", :"RETALIATE", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"TAUNT", :"TOXIC", :"UTURN", :"WORKUP"
  pkmn.egg_moves :"BATONPASS", :"ENDURE", :"FEINT", :"KNOCKOFF", :"LOWKICK", :"MEFIRST", :"SMELLINGSALTS", :"VITALTHROW"
end

GameData::SpeciesMetrics.define :"MIENFOO" do |m|
  m.back_sprite -1, 0
  m.front_sprite 0, 25
  m.shadow_sprite 0, 0, 2
end