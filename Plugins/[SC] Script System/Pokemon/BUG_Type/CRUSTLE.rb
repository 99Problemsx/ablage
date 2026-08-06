#=============================================================================
# Crustle - BUG Type
#=============================================================================

GameData::Species.define :"CRUSTLE" do |pkmn|
  pkmn.name "Crustle"
  pkmn.types :"BUG", :"ROCK"
  pkmn.base_stats hp: 70, attack: 95, defense: 125,
                  sp_atk: 45, sp_def: 65, speed: 75
  pkmn.abilities :"STURDY", :"SHELLARMOR"
  pkmn.hidden_abilities :"WEAKARMOR"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 166
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.4
  pkmn.weight 200.0
  pkmn.category "Stone Home"
  pkmn.pokedex_entry "It possesses legs of enormous strength, enabling it to carry heavy slabs for many days, even when crossing arid land."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Bug", :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"SHELLSMASH"
    m.at 1, :"ROCKBLAST"
    m.at 1, :"WITHDRAW"
    m.at 1, :"SANDATTACK"
    m.at 5, :"ROCKBLAST"
    m.at 7, :"WITHDRAW"
    m.at 11, :"SANDATTACK"
    m.at 13, :"FEINTATTACK"
    m.at 17, :"SMACKDOWN"
    m.at 19, :"ROCKPOLISH"
    m.at 23, :"BUGBITE"
    m.at 24, :"STEALTHROCK"
    m.at 29, :"ROCKSLIDE"
    m.at 31, :"SLASH"
    m.at 38, :"XSCISSOR"
    m.at 43, :"SHELLSMASH"
    m.at 50, :"FLAIL"
    m.at 55, :"ROCKWRECKER"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BLOCK", :"BUGBITE", :"BULLDOZE", :"CAPTIVATE", :"CUT", :"DIG", :"DOUBLETEAM", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GIGAIMPACT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"IRONDEFENSE", :"KNOCKOFF", :"MIMIC", :"NATURALGIFT", :"POISONJAB", :"PROTECT", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"STRUGGLEBUG", :"SUBSTITUTE", :"SWAGGER", :"SWORDSDANCE", :"TOXIC", :"XSCISSOR"
end

GameData::SpeciesMetrics.define :"CRUSTLE" do |m|
  m.back_sprite -1, 0
  m.front_sprite 1, 22
  m.shadow_sprite 0, 0, 3
end