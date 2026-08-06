#=============================================================================
# Reshiram - DRAGON Type
#=============================================================================

GameData::Species.define :"RESHIRAM" do |pkmn|
  pkmn.name "Reshiram"
  pkmn.types :"DRAGON", :"FIRE"
  pkmn.base_stats hp: 100, attack: 120, defense: 100,
                  sp_atk: 90, sp_def: 150, speed: 120
  pkmn.abilities :"TURBOBLAZE"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"White"
  pkmn.shape :"Winged"
  pkmn.base_exp 306
  pkmn.catch_rate 45
  pkmn.happiness 0
  pkmn.hatch_steps 30840
  pkmn.height 3.2
  pkmn.weight 330.0
  pkmn.category "Vast White"
  pkmn.pokedex_entry "When Reshiram's tail flares, the heat energy moves the atmosphere and changes the world's weather."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"FIREFANG"
    m.at 1, :"DRAGONRAGE"
    m.at 8, :"IMPRISON"
    m.at 15, :"ANCIENTPOWER"
    m.at 22, :"FLAMETHROWER"
    m.at 29, :"DRAGONBREATH"
    m.at 36, :"SLASH"
    m.at 43, :"EXTRASENSORY"
    m.at 50, :"FUSIONFLARE"
    m.at 54, :"DRAGONPULSE"
    m.at 64, :"IMPRISON"
    m.at 71, :"CRUNCH"
    m.at 78, :"FIREBLAST"
    m.at 85, :"OUTRAGE"
    m.at 92, :"HYPERVOICE"
    m.at 100, :"BLUEFLARE"
  end
  pkmn.tutor_moves :"CUT", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONCLAW", :"DRAGONPULSE", :"DRAGONTAIL", :"EARTHPOWER", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMECHARGE", :"FLAMETHROWER", :"FLING", :"FLY", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"HEATWAVE", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"HYPERVOICE", :"INCINERATE", :"LIGHTSCREEN", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"OVERHEAT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"REFLECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROOST", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAILWIND", :"TOXIC", :"WILLOWISP", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"RESHIRAM" do |m|
  m.back_sprite 2, 0
  m.front_sprite 6, 11
  m.shadow_sprite 0, 0, 3
end