#=============================================================================
# Xatu - PSYCHIC Type
#=============================================================================

GameData::Species.define :"XATU" do |pkmn|
  pkmn.name "Xatu"
  pkmn.types :"PSYCHIC", :"FLYING"
  pkmn.base_stats hp: 65, attack: 75, defense: 70,
                  sp_atk: 95, sp_def: 95, speed: 70
  pkmn.abilities :"SYNCHRONIZE", :"EARLYBIRD"
  pkmn.hidden_abilities :"MAGICBOUNCE"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"Winged"
  pkmn.base_exp 165
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.5
  pkmn.weight 15.0
  pkmn.category "Mystic"
  pkmn.pokedex_entry "It has the enigmatic power of foreseeing the future. Some people in different lands have long believed that Xatu are emissaries from another world."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"PECK"
    m.at 1, :"LEER"
    m.at 6, :"NIGHTSHADE"
    m.at 9, :"TELEPORT"
    m.at 12, :"LUCKYCHANT"
    m.at 17, :"MIRACLEEYE"
    m.at 20, :"MEFIRST"
    m.at 23, :"CONFUSERAY"
    m.at 27, :"TAILWIND"
    m.at 30, :"WISH"
    m.at 37, :"PSYCHOSHIFT"
    m.at 42, :"FUTURESIGHT"
    m.at 47, :"STOREDPOWER"
    m.at 54, :"OMINOUSWIND"
    m.at 54, :"POWERSWAP"
    m.at 59, :"GUARDSWAP"
    m.at 66, :"PSYCHIC"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"ALLYSWITCH", :"ATTRACT", :"CALMMIND", :"CAPTIVATE", :"DEFOG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"ENDURE", :"FACADE", :"FLASH", :"FLY", :"FOULPLAY", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGICROOM", :"MIMIC", :"NATURALGIFT", :"OMINOUSWIND", :"PAINSPLIT", :"PLUCK", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SIGNALBEAM", :"SILVERWIND", :"SKILLSWAP", :"SKYATTACK", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STEELWING", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"TELEKINESIS", :"THIEF", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"TRICKROOM", :"TWISTER", :"UTURN", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"XATU" do |m|
  m.back_sprite -3, 0
  m.front_sprite 3, 14
  m.shadow_sprite 0, 0, 2
end