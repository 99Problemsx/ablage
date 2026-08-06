#=============================================================================
# Gothorita - PSYCHIC Type
#=============================================================================

GameData::Species.define :"GOTHORITA" do |pkmn|
  pkmn.name "Gothorita"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 60, attack: 45, defense: 70,
                  sp_atk: 55, sp_def: 75, speed: 85
  pkmn.abilities :"FRISK"
  pkmn.hidden_abilities :"SHADOWTAG"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female75Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Purple"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 137
  pkmn.catch_rate 100
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.7
  pkmn.weight 18.0
  pkmn.category "Manipulate"
  pkmn.pokedex_entry "Starlight is the source of their power. At night, they mark star positions by using psychic power to float stones."
  pkmn.evs special_defense: 2
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
    m.at 43, :"TELEKINESIS"
    m.at 50, :"CHARM"
    m.at 53, :"MAGICROOM"
  end
  pkmn.tutor_moves :"ATTRACT", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"COVET", :"DOUBLETEAM", :"DREAMEATER", :"EMBARGO", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FLING", :"FOULPLAY", :"FRUSTRATION", :"GRASSKNOT", :"GRAVITY", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGICROOM", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"TAUNT", :"TELEKINESIS", :"THIEF", :"THUNDERBOLT", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"UPROAR", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"GOTHORITA" do |m|
  m.back_sprite 0, 0
  m.front_sprite 2, 24
  m.shadow_sprite 0, 0, 1
end