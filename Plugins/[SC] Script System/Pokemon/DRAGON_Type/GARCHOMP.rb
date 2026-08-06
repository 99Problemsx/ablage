#=============================================================================
# Garchomp - DRAGON Type
#=============================================================================

GameData::Species.define :"GARCHOMP" do |pkmn|
  pkmn.name "Garchomp"
  pkmn.types :"DRAGON", :"GROUND"
  pkmn.base_stats hp: 108, attack: 130, defense: 95,
                  sp_atk: 102, sp_def: 80, speed: 85
  pkmn.abilities :"SANDVEIL"
  pkmn.hidden_abilities :"ROUGHSKIN"
  pkmn.flags :"HasGenderedSprites"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 270
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 10280
  pkmn.height 1.9
  pkmn.weight 95.0
  pkmn.category "Mach"
  pkmn.pokedex_entry "When it folds up its body and extends its wings, it looks like a jet plane. It flies at sonic speed."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Monster", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"FIREFANG"
    m.at 1, :"TACKLE"
    m.at 1, :"SANDATTACK"
    m.at 1, :"DRAGONRAGE"
    m.at 1, :"SANDSTORM"
    m.at 3, :"SANDATTACK"
    m.at 7, :"DRAGONRAGE"
    m.at 13, :"SANDSTORM"
    m.at 15, :"TAKEDOWN"
    m.at 19, :"SANDTOMB"
    m.at 24, :"DUALCHOP"
    m.at 28, :"SLASH"
    m.at 33, :"DRAGONCLAW"
    m.at 40, :"DIG"
    m.at 48, :"CRUNCH"
    m.at 55, :"DRAGONRUSH"
  end
  pkmn.tutor_moves :"AERIALACE", :"AQUATAIL", :"ATTRACT", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"CUT", :"DIG", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONCLAW", :"DRAGONPULSE", :"DRAGONTAIL", :"DUALCHOP", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FIREBLAST", :"FLAMETHROWER", :"FLING", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"INCINERATE", :"IRONHEAD", :"IRONTAIL", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OUTRAGE", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SURF", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TOXIC", :"TWISTER", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"GARCHOMP" do |m|
  m.back_sprite 0, 0
  m.front_sprite -3, 6
  m.shadow_sprite 0, 0, 3
end

# Form 2 - Mega Garchomp Z
GameData::Species.define :"GARCHOMP_2" do |pkmn|
  pkmn.species :"GARCHOMP"
  pkmn.form 2
  pkmn.name "Garchomp"
  pkmn.form_name "Mega Garchomp Z"
  pkmn.types :"DRAGON"
  pkmn.base_stats hp: 108, attack: 130, defense: 85,
                  sp_atk: 151, sp_def: 141, speed: 85
  pkmn.abilities :"SANDVEIL"
  pkmn.hidden_abilities :"ROUGHSKIN"
  pkmn.flags :"HasGenderedSprites"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 270
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 10280
  pkmn.height 1.9
  pkmn.weight 99.0
  pkmn.category "Mach"
  pkmn.pokedex_entry "Garchomp has gained a new Mega-Evolved form. It flies around foes at Mach speed and cuts them to shreds with its sinister wing claws."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Monster", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"FIREFANG"
    m.at 1, :"TACKLE"
    m.at 1, :"SANDATTACK"
    m.at 1, :"DRAGONRAGE"
    m.at 1, :"SANDSTORM"
    m.at 3, :"SANDATTACK"
    m.at 7, :"DRAGONRAGE"
    m.at 13, :"SANDSTORM"
    m.at 15, :"TAKEDOWN"
    m.at 19, :"SANDTOMB"
    m.at 24, :"DUALCHOP"
    m.at 28, :"SLASH"
    m.at 33, :"DRAGONCLAW"
    m.at 40, :"DIG"
    m.at 48, :"CRUNCH"
    m.at 55, :"DRAGONRUSH"
  end
  pkmn.tutor_moves :"AERIALACE", :"AQUATAIL", :"ATTRACT", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"CUT", :"DIG", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONCLAW", :"DRAGONPULSE", :"DRAGONTAIL", :"DUALCHOP", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FIREBLAST", :"FLAMETHROWER", :"FLING", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"INCINERATE", :"IRONHEAD", :"IRONTAIL", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OUTRAGE", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SURF", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TOXIC", :"TWISTER", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"GARCHOMP_2" do |m|
  m.back_sprite 0, 0
  m.front_sprite -3, 6
  m.shadow_sprite 0, 0, 3
end