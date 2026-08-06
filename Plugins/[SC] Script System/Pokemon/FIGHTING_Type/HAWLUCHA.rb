#=============================================================================
# Hawlucha - FIGHTING Type
#=============================================================================

GameData::Species.define :"HAWLUCHA" do |pkmn|
  pkmn.name "Hawlucha"
  pkmn.types :"FIGHTING", :"FLYING"
  pkmn.base_stats hp: 78, attack: 92, defense: 75,
                  sp_atk: 118, sp_def: 74, speed: 63
  pkmn.abilities :"LIMBER", :"UNBURDEN"
  pkmn.hidden_abilities :"MOLDBREAKER"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 175
  pkmn.catch_rate 100
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.8
  pkmn.weight 21.5
  pkmn.category "Wrestling"
  pkmn.pokedex_entry "With its wings, it controls its position in the air. It likes to attack from above, a maneuver that is difficult to defend against."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Flying", :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"HONECLAWS"
    m.at 4, :"WINGATTACK"
    m.at 8, :"DETECT"
    m.at 12, :"AERIALACE"
    m.at 16, :"ENCORE"
    m.at 20, :"FEATHERDANCE"
    m.at 24, :"SUBMISSION"
    m.at 28, :"BOUNCE"
    m.at 32, :"TAUNT"
    m.at 36, :"ROOST"
    m.at 40, :"SWORDSDANCE"
    m.at 44, :"FLYINGPRESS"
    m.at 48, :"HIGHJUMPKICK"
    m.at 52, :"ENDEAVOR"
    m.at 56, :"SKYATTACK"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AGILITY", :"ALLYSWITCH", :"ASSURANCE", :"ATTRACT", :"BATONPASS", :"BODYPRESS", :"BOUNCE", :"BRAVEBIRD", :"BRICKBREAK", :"BULKUP", :"CAPTIVATE", :"CLOSECOMBAT", :"COACHING", :"CONFIDE", :"CUT", :"DEFOG", :"DIG", :"DOUBLETEAM", :"DRAINPUNCH", :"DUALCHOP", :"DUALWINGBEAT", :"ENCORE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FIREPUNCH", :"FLING", :"FLY", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HELPINGHAND", :"HIDDENPOWER", :"HONECLAWS", :"IRONHEAD", :"LASERFOCUS", :"LASTRESORT", :"LOWKICK", :"LOWSWEEP", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"POWERUPPUNCH", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"REVENGE", :"REVERSAL", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROOST", :"ROUND", :"SECRETPOWER", :"SKYATTACK", :"SKYDROP", :"SLEEPTALK", :"SNORE", :"STEELWING", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TAILWIND", :"TAUNT", :"THROATCHOP", :"THUNDERPUNCH", :"TORMENT", :"TOXIC", :"UTURN", :"WORKUP", :"XSCISSOR", :"ZENHEADBUTT", :"TERABLAST"
  pkmn.egg_moves :"CROSSCHOP", :"DEFOG", :"ENTRAINMENT", :"FEINT", :"MEANLOOK", :"QUICKGUARD"
end

GameData::SpeciesMetrics.define :"HAWLUCHA" do |m|
  m.back_sprite 5, 42
  m.front_sprite -2, 9
end

# Form 1 - Mega Hawlucha
GameData::Species.define :"HAWLUCHA_1" do |pkmn|
  pkmn.species :"HAWLUCHA"
  pkmn.form 1
  pkmn.name "Hawlucha"
  pkmn.form_name "Mega Hawlucha"
  pkmn.types :"FIGHTING", :"FLYING"
  pkmn.base_stats hp: 78, attack: 137, defense: 100,
                  sp_atk: 74, sp_def: 93, speed: 118
  pkmn.abilities :"LIMBER", :"UNBURDEN"
  pkmn.hidden_abilities :"MOLDBREAKER"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 175
  pkmn.catch_rate 100
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.0
  pkmn.weight 25.0
  pkmn.category "Wrestling"
  pkmn.pokedex_entry "Mega Evolution has pumped up all its muscles. Hawlucha flexes to show off its strength."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Flying", :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"HONECLAWS"
    m.at 4, :"WINGATTACK"
    m.at 8, :"DETECT"
    m.at 12, :"AERIALACE"
    m.at 16, :"ENCORE"
    m.at 20, :"FEATHERDANCE"
    m.at 24, :"SUBMISSION"
    m.at 28, :"BOUNCE"
    m.at 32, :"TAUNT"
    m.at 36, :"ROOST"
    m.at 40, :"SWORDSDANCE"
    m.at 44, :"FLYINGPRESS"
    m.at 48, :"HIGHJUMPKICK"
    m.at 52, :"ENDEAVOR"
    m.at 56, :"SKYATTACK"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AGILITY", :"ALLYSWITCH", :"ASSURANCE", :"ATTRACT", :"BATONPASS", :"BODYPRESS", :"BOUNCE", :"BRAVEBIRD", :"BRICKBREAK", :"BULKUP", :"CAPTIVATE", :"CLOSECOMBAT", :"COACHING", :"CONFIDE", :"CUT", :"DEFOG", :"DIG", :"DOUBLETEAM", :"DRAINPUNCH", :"DUALCHOP", :"DUALWINGBEAT", :"ENCORE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FIREPUNCH", :"FLING", :"FLY", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HELPINGHAND", :"HIDDENPOWER", :"HONECLAWS", :"IRONHEAD", :"LASERFOCUS", :"LASTRESORT", :"LOWKICK", :"LOWSWEEP", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"POWERUPPUNCH", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"REVENGE", :"REVERSAL", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROOST", :"ROUND", :"SECRETPOWER", :"SKYATTACK", :"SKYDROP", :"SLEEPTALK", :"SNORE", :"STEELWING", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TAILWIND", :"TAUNT", :"THROATCHOP", :"THUNDERPUNCH", :"TORMENT", :"TOXIC", :"UTURN", :"WORKUP", :"XSCISSOR", :"ZENHEADBUTT", :"TERABLAST"
  pkmn.egg_moves :"CROSSCHOP", :"DEFOG", :"ENTRAINMENT", :"FEINT", :"MEANLOOK", :"QUICKGUARD"
end

GameData::SpeciesMetrics.define :"HAWLUCHA_1" do |m|
  m.back_sprite 5, 42
  m.front_sprite -2, 9
end