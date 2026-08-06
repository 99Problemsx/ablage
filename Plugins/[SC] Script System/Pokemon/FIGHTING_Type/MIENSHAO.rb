#=============================================================================
# Mienshao - FIGHTING Type
#=============================================================================

GameData::Species.define :"MIENSHAO" do |pkmn|
  pkmn.name "Mienshao"
  pkmn.types :"FIGHTING"
  pkmn.base_stats hp: 65, attack: 125, defense: 60,
                  sp_atk: 105, sp_def: 95, speed: 60
  pkmn.abilities :"INNERFOCUS", :"REGENERATOR"
  pkmn.hidden_abilities :"RECKLESS"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Purple"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 179
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 1.4
  pkmn.weight 35.5
  pkmn.category "Martial Arts"
  pkmn.pokedex_entry "They use the long fur on their arms as a whip to strike their opponents."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Field", :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"POUND"
    m.at 1, :"MEDITATE"
    m.at 1, :"DETECT"
    m.at 1, :"FAKEOUT"
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
    m.at 45, :"WIDEGUARD"
    m.at 49, :"BOUNCE"
    m.at 56, :"HIGHJUMPKICK"
    m.at 63, :"REVERSAL"
    m.at 70, :"AURASPHERE"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"ATTRACT", :"BOUNCE", :"BRICKBREAK", :"BULKUP", :"CALMMIND", :"CAPTIVATE", :"DIG", :"DOUBLETEAM", :"DRAINPUNCH", :"DUALCHOP", :"ENDURE", :"FACADE", :"FLING", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"KNOCKOFF", :"LOWKICK", :"LOWSWEEP", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REFLECT", :"REST", :"RETALIATE", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"TAUNT", :"TOXIC", :"UTURN", :"WORKUP"
end

GameData::SpeciesMetrics.define :"MIENSHAO" do |m|
  m.back_sprite -3, 0
  m.front_sprite 1, 18
  m.shadow_sprite 0, 0, 2
end