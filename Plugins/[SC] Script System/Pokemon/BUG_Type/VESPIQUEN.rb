#=============================================================================
# Vespiquen - BUG Type
#=============================================================================

GameData::Species.define :"VESPIQUEN" do |pkmn|
  pkmn.name "Vespiquen"
  pkmn.types :"BUG", :"FLYING"
  pkmn.base_stats hp: 70, attack: 80, defense: 102,
                  sp_atk: 40, sp_def: 80, speed: 102
  pkmn.abilities :"PRESSURE"
  pkmn.hidden_abilities :"UNNERVE"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Yellow"
  pkmn.shape :"MultiWinged"
  pkmn.base_exp 166
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 1.2
  pkmn.weight 38.5
  pkmn.category "Beehive"
  pkmn.pokedex_entry "Its abdomen is a honeycomb for grubs. It raises its grubs on honey collected by Combee."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"SWEETSCENT"
    m.at 1, :"GUST"
    m.at 1, :"POISONSTING"
    m.at 1, :"CONFUSERAY"
    m.at 5, :"FURYCUTTER"
    m.at 9, :"PURSUIT"
    m.at 13, :"FURYSWIPES"
    m.at 17, :"DEFENDORDER"
    m.at 21, :"SLASH"
    m.at 25, :"POWERGEM"
    m.at 29, :"HEALORDER"
    m.at 33, :"TOXIC"
    m.at 37, :"AIRSLASH"
    m.at 41, :"CAPTIVATE"
    m.at 45, :"ATTACKORDER"
    m.at 49, :"SWAGGER"
    m.at 53, :"DESTINYBOND"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AIRCUTTER", :"ATTRACT", :"BUGBITE", :"CAPTIVATE", :"CUT", :"DEFOG", :"DOUBLETEAM", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLASH", :"FLING", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PROTECT", :"QUASH", :"RAINDANCE", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SECRETPOWER", :"SIGNALBEAM", :"SILVERWIND", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"STRINGSHOT", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"THIEF", :"TOXIC", :"UTURN", :"VENOSHOCK", :"XSCISSOR"
end

GameData::SpeciesMetrics.define :"VESPIQUEN" do |m|
  m.back_sprite -1, 0
  m.front_sprite 0, -4
  m.shadow_sprite 0, 0, 3
end