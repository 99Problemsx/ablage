#=============================================================================
# Pichu - ELECTRIC Type
#=============================================================================

GameData::Species.define :"PICHU" do |pkmn|
  pkmn.name "Pichu"
  pkmn.types :"ELECTRIC"
  pkmn.base_stats hp: 20, attack: 40, defense: 15,
                  sp_atk: 60, sp_def: 35, speed: 35
  pkmn.abilities :"STATIC"
  pkmn.hidden_abilities :"LIGHTNINGROD"
  pkmn.flags :"SOSForm_0"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 41
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 2570
  pkmn.height 0.3
  pkmn.weight 2.0
  pkmn.category "Tiny Mouse"
  pkmn.pokedex_entry "It is still inept at retaining electricity. When it is startled, it discharges power accidentally. It gets better at holding power as it grows older."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"THUNDERSHOCK"
    m.at 1, :"CHARM"
    m.at 5, :"TAILWHIP"
    m.at 10, :"THUNDERWAVE"
    m.at 13, :"SWEETKISS"
    m.at 18, :"NASTYPLOT"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"CAPTIVATE", :"CHARGEBEAM", :"COUNTER", :"COVET", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLASH", :"FLING", :"FRUSTRATION", :"GRASSKNOT", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"IRONTAIL", :"LIGHTSCREEN", :"MAGNETRISE", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"SWIFT", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"UPROAR", :"VOLTSWITCH", :"WILDCHARGE"
  pkmn.egg_moves :"BESTOW", :"BIDE", :"CHARGE", :"DOUBLESLAP", :"ENCORE", :"ENDURE", :"FAKEOUT", :"FLAIL", :"LUCKYCHANT", :"PRESENT", :"REVERSAL", :"THUNDERPUNCH", :"TICKLE", :"WISH"
end

GameData::SpeciesMetrics.define :"PICHU" do |m|
  m.back_sprite -5, 0
  m.front_sprite 1, 23
  m.shadow_sprite 0, 0, 1
end

# Form 2 - Unknown Form
GameData::Species.define :"PICHU_2" do |pkmn|
  pkmn.species :"PICHU"
  pkmn.form 2
  pkmn.name "Pichu"
  pkmn.types :"ELECTRIC"
  pkmn.base_stats hp: 20, attack: 40, defense: 15,
                  sp_atk: 60, sp_def: 35, speed: 35
  pkmn.abilities :"STATIC"
  pkmn.hidden_abilities :"LIGHTNINGROD"
  pkmn.flags :"SOSForm_0"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 41
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 2570
  pkmn.height 0.3
  pkmn.weight 2.0
  pkmn.category "Tiny Mouse"
  pkmn.pokedex_entry "It is still inept at retaining electricity. When it is startled, it discharges power accidentally. It gets better at holding power as it grows older."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"THUNDERSHOCK"
    m.at 1, :"CHARM"
    m.at 5, :"TAILWHIP"
    m.at 10, :"THUNDERWAVE"
    m.at 13, :"SWEETKISS"
    m.at 18, :"NASTYPLOT"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"CAPTIVATE", :"CHARGEBEAM", :"COUNTER", :"COVET", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLASH", :"FLING", :"FRUSTRATION", :"GRASSKNOT", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"IRONTAIL", :"LIGHTSCREEN", :"MAGNETRISE", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"SWIFT", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"UPROAR", :"VOLTSWITCH", :"WILDCHARGE"
  pkmn.egg_moves :"BESTOW", :"BIDE", :"CHARGE", :"DOUBLESLAP", :"ENCORE", :"ENDURE", :"FAKEOUT", :"FLAIL", :"LUCKYCHANT", :"PRESENT", :"REVERSAL", :"THUNDERPUNCH", :"TICKLE", :"WISH"
end

GameData::SpeciesMetrics.define :"PICHU_2" do |m|
  m.back_sprite -5, 0
  m.front_sprite 3, 23
  m.shadow_sprite 0, 0, 1
end