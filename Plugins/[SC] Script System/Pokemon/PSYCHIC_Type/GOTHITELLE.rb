#=============================================================================
# Gothitelle - PSYCHIC Type
#=============================================================================

GameData::Species.define :"GOTHITELLE" do |pkmn|
  pkmn.name "Gothitelle"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 70, attack: 55, defense: 95,
                  sp_atk: 65, sp_def: 95, speed: 110
  pkmn.abilities :"FRISK"
  pkmn.hidden_abilities :"SHADOWTAG"
  pkmn.gender_ratio :"Female75Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Purple"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 221
  pkmn.catch_rate 50
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.5
  pkmn.weight 44.0
  pkmn.category "Astral Body"
  pkmn.pokedex_entry "They can predict the future from the placement and movement of the stars. They can see Trainers' life spans."
  pkmn.evs special_defense: 3
  pkmn.egg_groups :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"POUND"
    m.at 1, :"CONFUSION"
    m.at 1, :"TICKLE"
    m.at 1, :"FAKETEARS"
    m.at 3, :"CONFUSION"
    m.at 7, :"TICKLE"
    m.at 10, :"FAKETEARS"
    m.at 14, :"DOUBLESLAP"
    m.at 16, :"PSYBEAM"
    m.at 19, :"EMBARGO"
    m.at 24, :"FEINTATTACK"
    m.at 25, :"PSYSHOCK"
    m.at 28, :"FLATTER"
    m.at 31, :"FUTURESIGHT"
    m.at 34, :"HEALBLOCK"
    m.at 39, :"PSYCHIC"
    m.at 45, :"TELEKINESIS"
    m.at 54, :"CHARM"
    m.at 59, :"MAGICROOM"
  end
  pkmn.tutor_moves :"ATTRACT", :"BRICKBREAK", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"COVET", :"DOUBLETEAM", :"DREAMEATER", :"EMBARGO", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FLING", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GRAVITY", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"LIGHTSCREEN", :"LOWSWEEP", :"MAGICCOAT", :"MAGICROOM", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"TAUNT", :"TELEKINESIS", :"THIEF", :"THUNDERBOLT", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"UPROAR", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"GOTHITELLE" do |m|
  m.back_sprite 1, 0
  m.front_sprite 0, 13
  m.shadow_sprite 0, 0, 2
end