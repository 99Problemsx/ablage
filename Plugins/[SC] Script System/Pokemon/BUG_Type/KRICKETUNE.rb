#=============================================================================
# Kricketune - BUG Type
#=============================================================================

GameData::Species.define :"KRICKETUNE" do |pkmn|
  pkmn.name "Kricketune"
  pkmn.types :"BUG"
  pkmn.base_stats hp: 77, attack: 85, defense: 51,
                  sp_atk: 65, sp_def: 55, speed: 51
  pkmn.abilities :"SWARM"
  pkmn.hidden_abilities :"TECHNICIAN"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Red"
  pkmn.shape :"MultiWinged"
  pkmn.base_exp 134
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 1.0
  pkmn.weight 25.5
  pkmn.category "Cricket"
  pkmn.pokedex_entry "It crosses its knifelike arms in front of its chest when it cries. It can compose melodies ad lib."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"GROWL"
    m.at 1, :"BIDE"
    m.at 10, :"FURYCUTTER"
    m.at 14, :"LEECHLIFE"
    m.at 18, :"SING"
    m.at 22, :"FOCUSENERGY"
    m.at 26, :"SLASH"
    m.at 30, :"XSCISSOR"
    m.at 34, :"SCREECH"
    m.at 38, :"TAUNT"
    m.at 42, :"NIGHTSLASH"
    m.at 46, :"BUGBUZZ"
    m.at 50, :"PERISHSONG"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BRICKBREAK", :"BUGBITE", :"CAPTIVATE", :"CUT", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLASH", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"HEALBELL", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"HYPERVOICE", :"KNOCKOFF", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSMASH", :"ROUND", :"SECRETPOWER", :"SILVERWIND", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"STRINGSHOT", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"TAUNT", :"TOXIC", :"UPROAR", :"XSCISSOR"
end

GameData::SpeciesMetrics.define :"KRICKETUNE" do |m|
  m.back_sprite 0, 0
  m.front_sprite 0, 12
  m.shadow_sprite 0, 0, 2
end