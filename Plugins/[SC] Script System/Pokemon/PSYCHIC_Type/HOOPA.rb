#=============================================================================
# Hoopa - PSYCHIC Type
#=============================================================================

GameData::Species.define :"HOOPA" do |pkmn|
  pkmn.name "Hoopa"
  pkmn.form_name "Hoopa Confined"
  pkmn.types :"PSYCHIC", :"GHOST"
  pkmn.base_stats hp: 80, attack: 110, defense: 60,
                  sp_atk: 70, sp_def: 150, speed: 130
  pkmn.abilities :"MAGICIAN"
  pkmn.flags :"Mythical"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Purple"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 300
  pkmn.catch_rate 3
  pkmn.happiness 50
  pkmn.hatch_steps 30720
  pkmn.height 0.5
  pkmn.weight 9.0
  pkmn.category "Mischief"
  pkmn.pokedex_entry "This troublemaker sends anything and everything to faraway places using its loop, which can warp space."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"HYPERSPACEHOLE"
    m.at 1, :"TRICK"
    m.at 1, :"DESTINYBOND"
    m.at 1, :"ALLYSWITCH"
    m.at 1, :"CONFUSION"
    m.at 6, :"ASTONISH"
    m.at 10, :"MAGICCOAT"
    m.at 15, :"LIGHTSCREEN"
    m.at 19, :"PSYBEAM"
    m.at 25, :"SKILLSWAP"
    m.at 29, :"POWERSPLIT"
    m.at 29, :"GUARDSPLIT"
    m.at 35, :"PHANTOMFORCE"
    m.at 46, :"ZENHEADBUTT"
    m.at 50, :"WONDERROOM"
    m.at 50, :"TRICKROOM"
    m.at 55, :"SHADOWBALL"
    m.at 68, :"NASTYPLOT"
    m.at 75, :"PSYCHIC"
    m.at 85, :"HYPERSPACEHOLE"
  end
  pkmn.tutor_moves :"ALLYSWITCH", :"BLOCK", :"BRICKBREAK", :"CALMMIND", :"CHARGEBEAM", :"CONFIDE", :"COVET", :"DARKPULSE", :"DOUBLETEAM", :"DRAINPUNCH", :"DREAMEATER", :"DUALCHOP", :"EMBARGO", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FIREPUNCH", :"FLASH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GRAVITY", :"GUNKSHOT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEPUNCH", :"KNOCKOFF", :"LASERFOCUS", :"LASTRESORT", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGICROOM", :"MIMIC", :"NATURALGIFT", :"POWERUPPUNCH", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"QUASH", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"TELEKINESIS", :"THIEF", :"THROATCHOP", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"UPROAR", :"WONDERROOM", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"HOOPA" do |m|
  m.back_sprite 1, 28
  m.front_sprite -4, 8
  m.shadow_sprite 0, 0, -1
end

# Form 1 - Hoopa Confined
GameData::Species.define :"HOOPA_1" do |pkmn|
  pkmn.species :"HOOPA"
  pkmn.form 1
  pkmn.name "Hoopa"
  pkmn.form_name "Hoopa Confined"
  pkmn.types :"PSYCHIC", :"GHOST"
  pkmn.base_stats hp: 80, attack: 110, defense: 60,
                  sp_atk: 70, sp_def: 150, speed: 130
  pkmn.abilities :"MAGICIAN"
  pkmn.flags :"Mythical"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Purple"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 300
  pkmn.catch_rate 3
  pkmn.happiness 50
  pkmn.hatch_steps 30720
  pkmn.height 0.5
  pkmn.weight 9.0
  pkmn.category "Mischief"
  pkmn.pokedex_entry "This troublemaker sends anything and everything to faraway places using its loop, which can warp space."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"HYPERSPACEHOLE"
    m.at 1, :"TRICK"
    m.at 1, :"DESTINYBOND"
    m.at 1, :"ALLYSWITCH"
    m.at 1, :"CONFUSION"
    m.at 6, :"ASTONISH"
    m.at 10, :"MAGICCOAT"
    m.at 15, :"LIGHTSCREEN"
    m.at 19, :"PSYBEAM"
    m.at 25, :"SKILLSWAP"
    m.at 29, :"POWERSPLIT"
    m.at 29, :"GUARDSPLIT"
    m.at 35, :"PHANTOMFORCE"
    m.at 46, :"ZENHEADBUTT"
    m.at 50, :"WONDERROOM"
    m.at 50, :"TRICKROOM"
    m.at 55, :"SHADOWBALL"
    m.at 68, :"NASTYPLOT"
    m.at 75, :"PSYCHIC"
    m.at 85, :"HYPERSPACEHOLE"
  end
  pkmn.tutor_moves :"ALLYSWITCH", :"BLOCK", :"BRICKBREAK", :"CALMMIND", :"CHARGEBEAM", :"CONFIDE", :"COVET", :"DARKPULSE", :"DOUBLETEAM", :"DRAINPUNCH", :"DREAMEATER", :"DUALCHOP", :"EMBARGO", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FIREPUNCH", :"FLASH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GRAVITY", :"GUNKSHOT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEPUNCH", :"KNOCKOFF", :"LASERFOCUS", :"LASTRESORT", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGICROOM", :"MIMIC", :"NATURALGIFT", :"POWERUPPUNCH", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"QUASH", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"TELEKINESIS", :"THIEF", :"THROATCHOP", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"UPROAR", :"WONDERROOM", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"HOOPA_1" do |m|
  m.back_sprite 1, 28
  m.front_sprite -4, 8
  m.shadow_sprite 0, 0, -1
end