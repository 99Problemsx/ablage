#=============================================================================
# Kyogre - WATER Type
#=============================================================================

GameData::Species.define :"KYOGRE" do |pkmn|
  pkmn.name "Kyogre"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 100, attack: 100, defense: 90,
                  sp_atk: 90, sp_def: 150, speed: 140
  pkmn.abilities :"DRIZZLE"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Finned"
  pkmn.base_exp 302
  pkmn.catch_rate 5
  pkmn.happiness 0
  pkmn.hatch_steps 30840
  pkmn.height 4.5
  pkmn.weight 352.0
  pkmn.category "Sea Basin"
  pkmn.pokedex_entry "Kyogre has appeared in mythology as the creator of the sea. After long years of feuding with Groudon, it took to sleep at the bottom of the sea."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"WATERPULSE"
    m.at 5, :"SCARYFACE"
    m.at 15, :"BODYSLAM"
    m.at 20, :"MUDDYWATER"
    m.at 30, :"AQUARING"
    m.at 35, :"ICEBEAM"
    m.at 45, :"ANCIENTPOWER"
    m.at 50, :"WATERSPOUT"
    m.at 60, :"CALMMIND"
    m.at 65, :"AQUATAIL"
    m.at 75, :"SHEERCOLD"
    m.at 80, :"DOUBLEEDGE"
    m.at 90, :"HYDROPUMP"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"AQUATAIL", :"AVALANCHE", :"BLIZZARD", :"BLOCK", :"BODYSLAM", :"BRICKBREAK", :"BRINE", :"BULLDOZE", :"CALMMIND", :"DEFENSECURL", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"IRONHEAD", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SAFEGUARD", :"SCALD", :"SECRETPOWER", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"SWIFT", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"UPROAR", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"KYOGRE" do |m|
  m.back_sprite 0, 0
  m.front_sprite 4, -4
  m.shadow_sprite 0, 0, 3
end