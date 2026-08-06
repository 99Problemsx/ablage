#=============================================================================
# Arceus - NORMAL Type
#=============================================================================

GameData::Species.define :"ARCEUS" do |pkmn|
  pkmn.name "Arceus"
  pkmn.form_name "Normal Type"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 120, attack: 120, defense: 120,
                  sp_atk: 120, sp_def: 120, speed: 120
  pkmn.abilities :"MULTITYPE"
  pkmn.flags :"Mythical"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"White"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 324
  pkmn.catch_rate 3
  pkmn.happiness 0
  pkmn.hatch_steps 30840
  pkmn.height 3.2
  pkmn.weight 320.0
  pkmn.category "Alpha"
  pkmn.pokedex_entry "It is described in mythology as the Pokémon that shaped the universe with its 1,000 arms."
  pkmn.evs hp: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"SEISMICTOSS"
    m.at 1, :"COSMICPOWER"
    m.at 1, :"NATURALGIFT"
    m.at 1, :"PUNISHMENT"
    m.at 10, :"GRAVITY"
    m.at 20, :"EARTHPOWER"
    m.at 30, :"HYPERVOICE"
    m.at 40, :"EXTREMESPEED"
    m.at 50, :"REFRESH"
    m.at 60, :"FUTURESIGHT"
    m.at 70, :"RECOVER"
    m.at 80, :"HYPERBEAM"
    m.at 90, :"PERISHSONG"
    m.at 100, :"JUDGMENT"
  end
  pkmn.tutor_moves :"AERIALACE", :"ANCIENTPOWER", :"AQUATAIL", :"AVALANCHE", :"BLIZZARD", :"BRICKBREAK", :"BRINE", :"BULLDOZE", :"BULLETSEED", :"CALMMIND", :"CHARGEBEAM", :"CUT", :"DARKPULSE", :"DEFOG", :"DOUBLETEAM", :"DRAGONCLAW", :"DRAGONPULSE", :"DREAMEATER", :"EARTHPOWER", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FLASH", :"FLASHCANNON", :"FLY", :"FOCUSBLAST", :"FRUSTRATION", :"FURYCUTTER", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRAVITY", :"HAIL", :"HEADBUTT", :"HEATWAVE", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"ICYWIND", :"INCINERATE", :"IRONDEFENSE", :"IRONHEAD", :"IRONTAIL", :"LASTRESORT", :"LIGHTSCREEN", :"MAGICCOAT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"OUTRAGE", :"OVERHEAT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"QUASH", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SHADOWBALL", :"SHADOWCLAW", :"SHOCKWAVE", :"SIGNALBEAM", :"SILVERWIND", :"SLEEPTALK", :"SLUDGEBOMB", :"SNARL", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SURF", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TAILWIND", :"TELEKINESIS", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"TRICKROOM", :"TWISTER", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL", :"WILLOWISP", :"WORKUP", :"XSCISSOR", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"ARCEUS" do |m|
  m.back_sprite -4, 0
  m.front_sprite 2, 6
  m.shadow_sprite 0, 0, 3
end