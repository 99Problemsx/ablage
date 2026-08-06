#=============================================================================
# Gallade - PSYCHIC Type
#=============================================================================

GameData::Species.define :"GALLADE" do |pkmn|
  pkmn.name "Gallade"
  pkmn.types :"PSYCHIC", :"FIGHTING"
  pkmn.base_stats hp: 68, attack: 125, defense: 65,
                  sp_atk: 80, sp_def: 65, speed: 115
  pkmn.abilities :"STEADFAST"
  pkmn.hidden_abilities :"JUSTIFIED"
  pkmn.gender_ratio :"AlwaysMale"
  pkmn.growth_rate :"Slow"
  pkmn.color :"White"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 233
  pkmn.catch_rate 45
  pkmn.happiness 35
  pkmn.hatch_steps 5140
  pkmn.height 1.6
  pkmn.weight 52.0
  pkmn.category "Blade"
  pkmn.pokedex_entry "A master of courtesy and swordsmanship, it fights using extending swords on its elbows."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"LEAFBLADE"
    m.at 1, :"NIGHTSLASH"
    m.at 1, :"LEER"
    m.at 1, :"CONFUSION"
    m.at 1, :"DOUBLETEAM"
    m.at 1, :"TELEPORT"
    m.at 6, :"CONFUSION"
    m.at 10, :"DOUBLETEAM"
    m.at 12, :"TELEPORT"
    m.at 17, :"FURYCUTTER"
    m.at 22, :"SLASH"
    m.at 25, :"HEALPULSE"
    m.at 31, :"SWORDSDANCE"
    m.at 36, :"PSYCHOCUT"
    m.at 39, :"HELPINGHAND"
    m.at 45, :"FEINT"
    m.at 50, :"FALSESWIPE"
    m.at 53, :"PROTECT"
    m.at 59, :"CLOSECOMBAT"
    m.at 64, :"STOREDPOWER"
  end
  pkmn.tutor_moves :"AERIALACE", :"ALLYSWITCH", :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"CUT", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"DREAMEATER", :"DUALCHOP", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FIREPUNCH", :"FLASH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"GRASSKNOT", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"ICEPUNCH", :"KNOCKOFF", :"LIGHTSCREEN", :"LOWKICK", :"LOWSWEEP", :"MAGICCOAT", :"MAGICROOM", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAINSPLIT", :"POISONJAB", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETALIATE", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNATCH", :"SNORE", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TAUNT", :"TELEKINESIS", :"THIEF", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"VACUUMWAVE", :"WILLOWISP", :"WONDERROOM", :"WORKUP", :"XSCISSOR", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"GALLADE" do |m|
  m.back_sprite 1, 0
  m.front_sprite -2, 8
  m.shadow_sprite 0, 0, 3
end