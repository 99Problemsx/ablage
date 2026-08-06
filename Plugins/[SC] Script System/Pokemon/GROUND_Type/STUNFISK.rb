#=============================================================================
# Stunfisk - GROUND Type
#=============================================================================

GameData::Species.define :"STUNFISK" do |pkmn|
  pkmn.name "Stunfisk"
  pkmn.types :"GROUND", :"ELECTRIC"
  pkmn.base_stats hp: 109, attack: 66, defense: 84,
                  sp_atk: 32, sp_def: 81, speed: 99
  pkmn.abilities :"STATIC", :"LIMBER"
  pkmn.hidden_abilities :"SANDVEIL"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Finned"
  pkmn.base_exp 165
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.7
  pkmn.weight 11.0
  pkmn.category "Trap"
  pkmn.pokedex_entry "It conceals itself in the mud of the seashore. Then it waits. When prey touch it, it delivers a jolt of energy."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Water1", :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"MUDSLAP"
    m.at 1, :"MUDSPORT"
    m.at 5, :"BIDE"
    m.at 9, :"THUNDERSHOCK"
    m.at 13, :"MUDSHOT"
    m.at 17, :"CAMOUFLAGE"
    m.at 21, :"MUDBOMB"
    m.at 25, :"DISCHARGE"
    m.at 30, :"ENDURE"
    m.at 35, :"BOUNCE"
    m.at 40, :"MUDDYWATER"
    m.at 45, :"THUNDERBOLT"
    m.at 50, :"REVENGE"
    m.at 55, :"FLAIL"
    m.at 61, :"FISSURE"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"BOUNCE", :"BULLDOZE", :"CAPTIVATE", :"DIG", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ELECTROWEB", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLASH", :"FOULPLAY", :"FRUSTRATION", :"HIDDENPOWER", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"PAINSPLIT", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SNORE", :"SPITE", :"STEALTHROCK", :"STONEEDGE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"UPROAR"
  pkmn.egg_moves :"ASTONISH", :"CURSE", :"EARTHPOWER", :"PAINSPLIT", :"SHOCKWAVE", :"SLEEPTALK", :"SPARK", :"SPITE", :"YAWN"
end

GameData::SpeciesMetrics.define :"STUNFISK" do |m|
  m.back_sprite -3, 0
  m.front_sprite 2, 29
  m.shadow_sprite 0, 0, 2
end

# Form 1 - Unknown Form
GameData::Species.define :"STUNFISK_1" do |pkmn|
  pkmn.species :"STUNFISK"
  pkmn.form 1
  pkmn.name "Stunfisk"
  pkmn.types :"GROUND", :"ELECTRIC"
  pkmn.base_stats hp: 109, attack: 66, defense: 84,
                  sp_atk: 32, sp_def: 81, speed: 99
  pkmn.abilities :"STATIC", :"LIMBER"
  pkmn.hidden_abilities :"SANDVEIL"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Finned"
  pkmn.base_exp 165
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.7
  pkmn.weight 11.0
  pkmn.category "Trap"
  pkmn.pokedex_entry "It conceals itself in the mud of the seashore. Then it waits. When prey touch it, it delivers a jolt of energy."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Water1", :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"MUDSLAP"
    m.at 1, :"MUDSPORT"
    m.at 5, :"BIDE"
    m.at 9, :"THUNDERSHOCK"
    m.at 13, :"MUDSHOT"
    m.at 17, :"CAMOUFLAGE"
    m.at 21, :"MUDBOMB"
    m.at 25, :"DISCHARGE"
    m.at 30, :"ENDURE"
    m.at 35, :"BOUNCE"
    m.at 40, :"MUDDYWATER"
    m.at 45, :"THUNDERBOLT"
    m.at 50, :"REVENGE"
    m.at 55, :"FLAIL"
    m.at 61, :"FISSURE"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"BOUNCE", :"BULLDOZE", :"CAPTIVATE", :"DIG", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ELECTROWEB", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLASH", :"FOULPLAY", :"FRUSTRATION", :"HIDDENPOWER", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"PAINSPLIT", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SNORE", :"SPITE", :"STEALTHROCK", :"STONEEDGE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"UPROAR"
  pkmn.egg_moves :"ASTONISH", :"CURSE", :"EARTHPOWER", :"PAINSPLIT", :"SHOCKWAVE", :"SLEEPTALK", :"SPARK", :"SPITE", :"YAWN"
end

GameData::SpeciesMetrics.define :"STUNFISK_1" do |m|
  m.back_sprite -3, 0
  m.front_sprite 2, 29
  m.shadow_sprite 0, 0, 2
end