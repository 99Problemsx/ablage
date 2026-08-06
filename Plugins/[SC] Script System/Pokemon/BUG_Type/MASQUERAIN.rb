#=============================================================================
# Masquerain - BUG Type
#=============================================================================

GameData::Species.define :"MASQUERAIN" do |pkmn|
  pkmn.name "Masquerain"
  pkmn.types :"BUG", :"FLYING"
  pkmn.base_stats hp: 70, attack: 60, defense: 62,
                  sp_atk: 60, sp_def: 80, speed: 82
  pkmn.abilities :"INTIMIDATE"
  pkmn.hidden_abilities :"UNNERVE"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"MultiWinged"
  pkmn.base_exp 145
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.8
  pkmn.weight 3.6
  pkmn.category "Eyeball"
  pkmn.pokedex_entry "It intimidates foes with the large eyelike patterns on its antennae. Because it can't fly if its wings get wet, it shelters from rain under large trees and eaves."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Water1", :"Bug"

  pkmn.moves do |m|
    m.at 1, :"OMINOUSWIND"
    m.at 1, :"BUBBLE"
    m.at 1, :"QUICKATTACK"
    m.at 1, :"SWEETSCENT"
    m.at 1, :"WATERSPORT"
    m.at 7, :"QUICKATTACK"
    m.at 13, :"SWEETSCENT"
    m.at 19, :"WATERSPORT"
    m.at 22, :"GUST"
    m.at 26, :"SCARYFACE"
    m.at 33, :"STUNSPORE"
    m.at 40, :"SILVERWIND"
    m.at 47, :"AIRSLASH"
    m.at 54, :"WHIRLWIND"
    m.at 61, :"BUGBUZZ"
    m.at 68, :"QUIVERDANCE"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"ATTRACT", :"BLIZZARD", :"BUGBITE", :"CAPTIVATE", :"DEFOG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SCALD", :"SECRETPOWER", :"SHADOWBALL", :"SIGNALBEAM", :"SILVERWIND", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STRINGSHOT", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"THIEF", :"TOXIC", :"TWISTER", :"UTURN", :"WATERPULSE"
end

GameData::SpeciesMetrics.define :"MASQUERAIN" do |m|
  m.back_sprite 2, 0
  m.front_sprite -4, -8
  m.shadow_sprite 0, 0, 1
end