#=============================================================================
# Ninjask - BUG Type
#=============================================================================

GameData::Species.define :"NINJASK" do |pkmn|
  pkmn.name "Ninjask"
  pkmn.types :"BUG", :"FLYING"
  pkmn.base_stats hp: 61, attack: 90, defense: 45,
                  sp_atk: 160, sp_def: 50, speed: 50
  pkmn.abilities :"SPEEDBOOST"
  pkmn.hidden_abilities :"INFILTRATOR"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Erratic"
  pkmn.color :"Yellow"
  pkmn.shape :"MultiWinged"
  pkmn.base_exp 160
  pkmn.catch_rate 120
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.8
  pkmn.weight 12.0
  pkmn.category "Ninja"
  pkmn.pokedex_entry "Because it darts about vigorously at high speed, it is very difficult to see. Hearing its distinctive cries for too long induces a headache."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"BUGBITE"
    m.at 1, :"SCRATCH"
    m.at 1, :"HARDEN"
    m.at 1, :"LEECHLIFE"
    m.at 1, :"SANDATTACK"
    m.at 5, :"LEECHLIFE"
    m.at 9, :"SANDATTACK"
    m.at 14, :"FURYSWIPES"
    m.at 19, :"MINDREADER"
    m.at 20, :"DOUBLETEAM"
    m.at 20, :"FURYCUTTER"
    m.at 20, :"SCREECH"
    m.at 25, :"SWORDSDANCE"
    m.at 31, :"SLASH"
    m.at 38, :"AGILITY"
    m.at 45, :"BATONPASS"
    m.at 52, :"XSCISSOR"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"ATTRACT", :"BUGBITE", :"CAPTIVATE", :"CUT", :"DEFOG", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLASH", :"FRUSTRATION", :"FURYCUTTER", :"GIGADRAIN", :"GIGAIMPACT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PROTECT", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SHADOWBALL", :"SILVERWIND", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SPITE", :"STRINGSHOT", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"THIEF", :"TOXIC", :"UPROAR", :"UTURN", :"XSCISSOR"
end

GameData::SpeciesMetrics.define :"NINJASK" do |m|
  m.back_sprite 0, 0
  m.front_sprite 2, 3
  m.shadow_sprite 0, 0, 2
end