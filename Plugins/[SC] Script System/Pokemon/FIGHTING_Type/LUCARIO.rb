#=============================================================================
# Lucario - FIGHTING Type
#=============================================================================

GameData::Species.define :"LUCARIO" do |pkmn|
  pkmn.name "Lucario"
  pkmn.types :"FIGHTING", :"STEEL"
  pkmn.base_stats hp: 70, attack: 110, defense: 70,
                  sp_atk: 90, sp_def: 115, speed: 70
  pkmn.abilities :"STEADFAST", :"INNERFOCUS"
  pkmn.hidden_abilities :"JUSTIFIED"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 184
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 1.2
  pkmn.weight 54.0
  pkmn.category "Aura"
  pkmn.pokedex_entry "It has the ability to sense the auras of all things. It understands human speech."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Field", :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"DARKPULSE"
    m.at 1, :"FORESIGHT"
    m.at 1, :"QUICKATTACK"
    m.at 1, :"DETECT"
    m.at 1, :"METALCLAW"
    m.at 6, :"COUNTER"
    m.at 11, :"FEINT"
    m.at 15, :"FORCEPALM"
    m.at 19, :"MEFIRST"
    m.at 24, :"METALSOUND"
    m.at 29, :"BONERUSH"
    m.at 33, :"QUICKGUARD"
    m.at 37, :"SWORDSDANCE"
    m.at 42, :"HEALPULSE"
    m.at 47, :"CALMMIND"
    m.at 51, :"AURASPHERE"
    m.at 55, :"CLOSECOMBAT"
    m.at 60, :"DRAGONPULSE"
    m.at 65, :"EXTREMESPEED"
  end
  pkmn.tutor_moves :"ATTRACT", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CALMMIND", :"CAPTIVATE", :"DARKPULSE", :"DIG", :"DOUBLETEAM", :"DRAGONPULSE", :"DRAINPUNCH", :"DUALCHOP", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FLASHCANNON", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"ICEPUNCH", :"IRONDEFENSE", :"IRONTAIL", :"LOWKICK", :"LOWSWEEP", :"MAGNETRISE", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"PSYCHIC", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"THUNDERPUNCH", :"TOXIC", :"VACUUMWAVE", :"WATERPULSE", :"WORKUP", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"LUCARIO" do |m|
  m.back_sprite 8, 0
  m.front_sprite 1, 10
  m.shadow_sprite 0, 0, 2
end

# Form 2 - Mega Lucario Z
GameData::Species.define :"LUCARIO_2" do |pkmn|
  pkmn.species :"LUCARIO"
  pkmn.form 2
  pkmn.name "Lucario"
  pkmn.form_name "Mega Lucario Z"
  pkmn.types :"FIGHTING", :"STEEL"
  pkmn.base_stats hp: 70, attack: 100, defense: 70,
                  sp_atk: 151, sp_def: 164, speed: 70
  pkmn.abilities :"STEADFAST", :"INNERFOCUS"
  pkmn.hidden_abilities :"JUSTIFIED"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 184
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 1.3
  pkmn.weight 49.4
  pkmn.category "Aura"
  pkmn.pokedex_entry "By completely cloaking itself in its aura, Mega Lucario Z can parry all manner of attacks, battling as if it were gracefully dancing."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Field", :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"DARKPULSE"
    m.at 1, :"FORESIGHT"
    m.at 1, :"QUICKATTACK"
    m.at 1, :"DETECT"
    m.at 1, :"METALCLAW"
    m.at 6, :"COUNTER"
    m.at 11, :"FEINT"
    m.at 15, :"FORCEPALM"
    m.at 19, :"MEFIRST"
    m.at 24, :"METALSOUND"
    m.at 29, :"BONERUSH"
    m.at 33, :"QUICKGUARD"
    m.at 37, :"SWORDSDANCE"
    m.at 42, :"HEALPULSE"
    m.at 47, :"CALMMIND"
    m.at 51, :"AURASPHERE"
    m.at 55, :"CLOSECOMBAT"
    m.at 60, :"DRAGONPULSE"
    m.at 65, :"EXTREMESPEED"
  end
  pkmn.tutor_moves :"ATTRACT", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CALMMIND", :"CAPTIVATE", :"DARKPULSE", :"DIG", :"DOUBLETEAM", :"DRAGONPULSE", :"DRAINPUNCH", :"DUALCHOP", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FLASHCANNON", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"ICEPUNCH", :"IRONDEFENSE", :"IRONTAIL", :"LOWKICK", :"LOWSWEEP", :"MAGNETRISE", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"PSYCHIC", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"THUNDERPUNCH", :"TOXIC", :"VACUUMWAVE", :"WATERPULSE", :"WORKUP", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"LUCARIO_2" do |m|
  m.back_sprite 8, 0
  m.front_sprite 1, 10
  m.shadow_sprite 0, 0, 2
end