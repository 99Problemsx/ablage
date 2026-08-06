#=============================================================================
# Victini - PSYCHIC Type
#=============================================================================

GameData::Species.define :"VICTINI" do |pkmn|
  pkmn.name "Victini"
  pkmn.types :"PSYCHIC", :"FIRE"
  pkmn.base_stats hp: 100, attack: 100, defense: 100,
                  sp_atk: 100, sp_def: 100, speed: 100
  pkmn.abilities :"VICTORYSTAR"
  pkmn.flags :"Mythical"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Yellow"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 270
  pkmn.catch_rate 3
  pkmn.happiness 100
  pkmn.hatch_steps 30840
  pkmn.height 0.4
  pkmn.weight 4.0
  pkmn.category "Victory"
  pkmn.pokedex_entry "This Pokémon brings victory. It is said that Trainers with Victini always win, regardless of the type of encounter."
  pkmn.evs hp: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"SEARINGSHOT"
    m.at 1, :"FOCUSENERGY"
    m.at 1, :"CONFUSION"
    m.at 1, :"INCINERATE"
    m.at 1, :"QUICKATTACK"
    m.at 9, :"ENDURE"
    m.at 17, :"HEADBUTT"
    m.at 25, :"FLAMECHARGE"
    m.at 33, :"REVERSAL"
    m.at 41, :"FLAMEBURST"
    m.at 49, :"ZENHEADBUTT"
    m.at 57, :"INFERNO"
    m.at 65, :"DOUBLEEDGE"
    m.at 73, :"FLAREBLITZ"
    m.at 81, :"FINALGAMBIT"
    m.at 89, :"STOREDPOWER"
    m.at 97, :"OVERHEAT"
  end
  pkmn.tutor_moves :"BOUNCE", :"BRICKBREAK", :"CHARGEBEAM", :"DOUBLETEAM", :"EMBARGO", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMECHARGE", :"FLAMETHROWER", :"FLASH", :"FLING", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HEATWAVE", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"INCINERATE", :"LASTRESORT", :"LIGHTSCREEN", :"MAGICCOAT", :"MIMIC", :"NATURALGIFT", :"OVERHEAT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"REST", :"RETURN", :"ROCKSMASH", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"TELEKINESIS", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"TRICKROOM", :"UPROAR", :"UTURN", :"WILDCHARGE", :"WILLOWISP", :"WORKUP", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"VICTINI" do |m|
  m.back_sprite 0, 0
  m.front_sprite -3, 22
  m.shadow_sprite 0, 0, 2
end