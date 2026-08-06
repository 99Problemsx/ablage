#=============================================================================
# Rayquaza - DRAGON Type
#=============================================================================

GameData::Species.define :"RAYQUAZA" do |pkmn|
  pkmn.name "Rayquaza"
  pkmn.types :"DRAGON", :"FLYING"
  pkmn.base_stats hp: 105, attack: 150, defense: 90,
                  sp_atk: 95, sp_def: 150, speed: 90
  pkmn.abilities :"AIRLOCK"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Green"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 306
  pkmn.catch_rate 3
  pkmn.happiness 0
  pkmn.hatch_steps 30840
  pkmn.height 7.0
  pkmn.weight 206.5
  pkmn.category "Sky High"
  pkmn.pokedex_entry "A Pokémon that flies endlessly in the ozone layer. It is said it would descend to the ground if Kyogre and Groudon were to fight."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"TWISTER"
    m.at 5, :"SCARYFACE"
    m.at 15, :"CRUNCH"
    m.at 20, :"HYPERVOICE"
    m.at 30, :"REST"
    m.at 35, :"AIRSLASH"
    m.at 45, :"ANCIENTPOWER"
    m.at 50, :"OUTRAGE"
    m.at 60, :"DRAGONDANCE"
    m.at 65, :"FLY"
    m.at 75, :"EXTREMESPEED"
    m.at 80, :"HYPERBEAM"
    m.at 90, :"DRAGONPULSE"
  end
  pkmn.tutor_moves :"AERIALACE", :"ANCIENTPOWER", :"AQUATAIL", :"AVALANCHE", :"BIND", :"BLIZZARD", :"BODYSLAM", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONCLAW", :"DRAGONPULSE", :"DRAGONTAIL", :"EARTHPOWER", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FLING", :"FLY", :"FOCUSBLAST", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"GYROBALL", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"ICYWIND", :"INCINERATE", :"IRONHEAD", :"IRONTAIL", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OUTRAGE", :"OVERHEAT", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SHADOWCLAW", :"SHOCKWAVE", :"SKYDROP", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SURF", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TAILWIND", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"TWISTER", :"UPROAR", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"RAYQUAZA" do |m|
  m.back_sprite 4, 0
  m.front_sprite -3, -3
  m.shadow_sprite 0, 0, 3
end