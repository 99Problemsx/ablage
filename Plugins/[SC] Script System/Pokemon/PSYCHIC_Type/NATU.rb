#=============================================================================
# Natu - PSYCHIC Type
#=============================================================================

GameData::Species.define :"NATU" do |pkmn|
  pkmn.name "Natu"
  pkmn.types :"PSYCHIC", :"FLYING"
  pkmn.base_stats hp: 40, attack: 50, defense: 45,
                  sp_atk: 70, sp_def: 70, speed: 45
  pkmn.abilities :"SYNCHRONIZE", :"EARLYBIRD"
  pkmn.hidden_abilities :"MAGICBOUNCE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"Winged"
  pkmn.base_exp 64
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.2
  pkmn.weight 2.0
  pkmn.category "Tiny Bird"
  pkmn.pokedex_entry "It runs up short trees that grow on the savanna to peck at new shoots. A Natu's eyes look as if they are always observing something."
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
    m.at 28, :"WISH"
    m.at 33, :"PSYCHOSHIFT"
    m.at 36, :"FUTURESIGHT"
    m.at 39, :"STOREDPOWER"
    m.at 44, :"OMINOUSWIND"
    m.at 47, :"POWERSWAP"
    m.at 47, :"GUARDSWAP"
    m.at 50, :"PSYCHIC"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"ALLYSWITCH", :"ATTRACT", :"CALMMIND", :"CAPTIVATE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"ENDURE", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGADRAIN", :"GRASSKNOT", :"HEATWAVE", :"HIDDENPOWER", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGICROOM", :"MIMIC", :"NATURALGIFT", :"OMINOUSWIND", :"PAINSPLIT", :"PLUCK", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SIGNALBEAM", :"SILVERWIND", :"SKILLSWAP", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STEELWING", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"TELEKINESIS", :"THIEF", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"TRICKROOM", :"TWISTER", :"UTURN", :"ZENHEADBUTT"
  pkmn.egg_moves :"DRILLPECK", :"FEATHERDANCE", :"FEINTATTACK", :"HAZE", :"QUICKATTACK", :"REFRESH", :"ROOST", :"SKILLSWAP", :"STEELWING", :"SUCKERPUNCH", :"SYNCHRONOISE", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"NATU" do |m|
  m.back_sprite -5, 0
  m.front_sprite 1, 27
  m.shadow_sprite 0, 0, 1
end