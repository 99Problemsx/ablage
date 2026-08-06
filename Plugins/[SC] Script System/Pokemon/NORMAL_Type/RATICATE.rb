#=============================================================================
# Raticate - NORMAL Type
#=============================================================================

GameData::Species.define :"RATICATE" do |pkmn|
  pkmn.name "Raticate"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 55, attack: 81, defense: 60,
                  sp_atk: 97, sp_def: 50, speed: 70
  pkmn.abilities :"RUNAWAY", :"GUTS"
  pkmn.hidden_abilities :"HUSTLE"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 145
  pkmn.catch_rate 127
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.7
  pkmn.weight 18.5
  pkmn.category "Mouse"
  pkmn.pokedex_entry "A Raticate's sturdy fangs grow steadily. To keep them ground down, it gnaws on rocks and logs. It may even chew on the walls of houses."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SWORDSDANCE"
    m.at 1, :"TACKLE"
    m.at 1, :"TAILWHIP"
    m.at 1, :"QUICKATTACK"
    m.at 1, :"FOCUSENERGY"
    m.at 4, :"QUICKATTACK"
    m.at 7, :"FOCUSENERGY"
    m.at 10, :"BITE"
    m.at 13, :"PURSUIT"
    m.at 16, :"HYPERFANG"
    m.at 19, :"SUCKERPUNCH"
    m.at 20, :"SCARYFACE"
    m.at 24, :"CRUNCH"
    m.at 29, :"ASSURANCE"
    m.at 34, :"SUPERFANG"
    m.at 39, :"DOUBLEEDGE"
    m.at 44, :"ENDEAVOR"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"CAPTIVATE", :"CHARGEBEAM", :"COUNTER", :"COVET", :"CUT", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"IRONTAIL", :"LASTRESORT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PLUCK", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SUPERFANG", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TAUNT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"UPROAR", :"UTURN", :"WILDCHARGE", :"WORKUP", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"RATICATE" do |m|
  m.back_sprite -7, 0
  m.front_sprite -1, 14
  m.shadow_sprite 0, 0, 3
end

# Form 1 - Unknown Form
GameData::Species.define :"RATICATE_1" do |pkmn|
  pkmn.species :"RATICATE"
  pkmn.form 1
  pkmn.name "Raticate"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 55, attack: 81, defense: 60,
                  sp_atk: 97, sp_def: 50, speed: 70
  pkmn.abilities :"RUNAWAY", :"GUTS"
  pkmn.hidden_abilities :"HUSTLE"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 145
  pkmn.catch_rate 127
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.7
  pkmn.weight 18.5
  pkmn.category "Mouse"
  pkmn.pokedex_entry "A Raticate's sturdy fangs grow steadily. To keep them ground down, it gnaws on rocks and logs. It may even chew on the walls of houses."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SWORDSDANCE"
    m.at 1, :"TACKLE"
    m.at 1, :"TAILWHIP"
    m.at 1, :"QUICKATTACK"
    m.at 1, :"FOCUSENERGY"
    m.at 4, :"QUICKATTACK"
    m.at 7, :"FOCUSENERGY"
    m.at 10, :"BITE"
    m.at 13, :"PURSUIT"
    m.at 16, :"HYPERFANG"
    m.at 19, :"SUCKERPUNCH"
    m.at 20, :"SCARYFACE"
    m.at 24, :"CRUNCH"
    m.at 29, :"ASSURANCE"
    m.at 34, :"SUPERFANG"
    m.at 39, :"DOUBLEEDGE"
    m.at 44, :"ENDEAVOR"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"CAPTIVATE", :"CHARGEBEAM", :"COUNTER", :"COVET", :"CUT", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"IRONTAIL", :"LASTRESORT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PLUCK", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SUPERFANG", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TAUNT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"UPROAR", :"UTURN", :"WILDCHARGE", :"WORKUP", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"RATICATE_1" do |m|
  m.back_sprite -7, 0
  m.front_sprite -1, 14
  m.shadow_sprite 0, 0, 3
end