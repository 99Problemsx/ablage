#=============================================================================
# Mew - PSYCHIC Type
#=============================================================================

GameData::Species.define :"MEW" do |pkmn|
  pkmn.name "Mew"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 100, attack: 100, defense: 100,
                  sp_atk: 100, sp_def: 100, speed: 100
  pkmn.abilities :"SYNCHRONIZE"
  pkmn.flags :"Mythical"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Pink"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 270
  pkmn.catch_rate 45
  pkmn.happiness 100
  pkmn.hatch_steps 30840
  pkmn.height 0.4
  pkmn.weight 4.0
  pkmn.category "New Species"
  pkmn.pokedex_entry "A Mew is said to possess the genes of all Pokémon. It is capable of making itself invisible at will, so it entirely avoids notice even if it approaches people."
  pkmn.evs hp: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"POUND"
    m.at 1, :"REFLECTTYPE"
    m.at 1, :"TRANSFORM"
    m.at 10, :"MEGAPUNCH"
    m.at 20, :"METRONOME"
    m.at 30, :"PSYCHIC"
    m.at 40, :"BARRIER"
    m.at 50, :"ANCIENTPOWER"
    m.at 60, :"AMNESIA"
    m.at 70, :"MEFIRST"
    m.at 80, :"BATONPASS"
    m.at 90, :"NASTYPLOT"
    m.at 100, :"AURASPHERE"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AFTERYOU", :"AIRCUTTER", :"ALLYSWITCH", :"ANCIENTPOWER", :"AQUATAIL", :"ATTRACT", :"AVALANCHE", :"BIND", :"BLIZZARD", :"BLOCK", :"BODYSLAM", :"BOUNCE", :"BRICKBREAK", :"BRINE", :"BUGBITE", :"BULKUP", :"BULLDOZE", :"BULLETSEED", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"COUNTER", :"COVET", :"CUT", :"DARKPULSE", :"DEFENSECURL", :"DEFOG", :"DIG", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAGONCLAW", :"DRAGONPULSE", :"DRAGONTAIL", :"DRAINPUNCH", :"DREAMEATER", :"DRILLRUN", :"DUALCHOP", :"DYNAMICPUNCH", :"EARTHPOWER", :"EARTHQUAKE", :"ECHOEDVOICE", :"ELECTROWEB", :"EMBARGO", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"EXPLOSION", :"FACADE", :"FALSESWIPE", :"FIREBLAST", :"FIREPUNCH", :"FLAMECHARGE", :"FLAMETHROWER", :"FLASH", :"FLASHCANNON", :"FLING", :"FLY", :"FOCUSBLAST", :"FOCUSPUNCH", :"FOULPLAY", :"FROSTBREATH", :"FRUSTRATION", :"FURYCUTTER", :"GASTROACID", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRAVITY", :"GUNKSHOT", :"GYROBALL", :"HAIL", :"HEADBUTT", :"HEALBELL", :"HEATWAVE", :"HELPINGHAND", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"INCINERATE", :"IRONDEFENSE", :"IRONHEAD", :"IRONTAIL", :"KNOCKOFF", :"LASTRESORT", :"LIGHTSCREEN", :"LOWKICK", :"LOWSWEEP", :"MAGICCOAT", :"MAGICROOM", :"MAGNETRISE", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"OUTRAGE", :"OVERHEAT", :"PAINSPLIT", :"PAYBACK", :"PLUCK", :"POISONJAB", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"QUASH", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROLLOUT", :"ROOST", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SCALD", :"SECRETPOWER", :"SEEDBOMB", :"SEISMICTOSS", :"SHADOWBALL", :"SHADOWCLAW", :"SHOCKWAVE", :"SIGNALBEAM", :"SILVERWIND", :"SKILLSWAP", :"SKYATTACK", :"SKYDROP", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SMACKDOWN", :"SNARL", :"SNATCH", :"SNORE", :"SOFTBOILED", :"SOLARBEAM", :"SPITE", :"STEALTHROCK", :"STEELWING", :"STONEEDGE", :"STRENGTH", :"STRINGSHOT", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SUPERFANG", :"SUPERPOWER", :"SURF", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"SYNTHESIS", :"TAILWIND", :"TAUNT", :"TELEKINESIS", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TRICK", :"TRICKROOM", :"TWISTER", :"UPROAR", :"UTURN", :"VACUUMWAVE", :"VENOSHOCK", :"VOLTSWITCH", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL", :"WILDCHARGE", :"WILLOWISP", :"WONDERROOM", :"WORKUP", :"WORRYSEED", :"XSCISSOR", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"MEW" do |m|
  m.back_sprite -8, 0
  m.front_sprite -9, -3
  m.shadow_sprite 0, 0, 1
end