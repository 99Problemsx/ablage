#=============================================================================
# Gothita - PSYCHIC Type
#=============================================================================

GameData::Species.define :"GOTHITA" do |pkmn|
  pkmn.name "Gothita"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 45, attack: 30, defense: 50,
                  sp_atk: 45, sp_def: 55, speed: 65
  pkmn.abilities :"FRISK"
  pkmn.hidden_abilities :"SHADOWTAG"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female75Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Purple"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 58
  pkmn.catch_rate 200
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.4
  pkmn.weight 5.8
  pkmn.category "Fixation"
  pkmn.pokedex_entry "They intently observe both Trainers and Pokémon. Apparently, they are looking at something that only Gothita can see."
  pkmn.evs special_defense: 1
  pkmn.egg_groups :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"POUND"
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
    m.at 33, :"HEALBLOCK"
    m.at 37, :"PSYCHIC"
    m.at 40, :"TELEKINESIS"
    m.at 46, :"CHARM"
    m.at 48, :"MAGICROOM"
  end
  pkmn.tutor_moves :"ATTRACT", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"COVET", :"DOUBLETEAM", :"DREAMEATER", :"EMBARGO", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FLING", :"FOULPLAY", :"FRUSTRATION", :"GRASSKNOT", :"GRAVITY", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGICROOM", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"TAUNT", :"TELEKINESIS", :"THIEF", :"THUNDERBOLT", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"UPROAR", :"ZENHEADBUTT"
  pkmn.egg_moves :"CAPTIVATE", :"DARKPULSE", :"MEANLOOK", :"MIRACLEEYE", :"MIRRORCOAT", :"UPROAR"
end

GameData::SpeciesMetrics.define :"GOTHITA" do |m|
  m.back_sprite 0, 0
  m.front_sprite 0, 30
  m.shadow_sprite 0, 0, 1
end