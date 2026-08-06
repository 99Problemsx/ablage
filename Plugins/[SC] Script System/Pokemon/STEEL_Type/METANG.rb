#=============================================================================
# Metang - STEEL Type
#=============================================================================

GameData::Species.define :"METANG" do |pkmn|
  pkmn.name "Metang"
  pkmn.types :"STEEL", :"PSYCHIC"
  pkmn.base_stats hp: 60, attack: 75, defense: 100,
                  sp_atk: 50, sp_def: 55, speed: 80
  pkmn.abilities :"CLEARBODY"
  pkmn.hidden_abilities :"LIGHTMETAL"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 147
  pkmn.catch_rate 3
  pkmn.happiness 35
  pkmn.hatch_steps 10280
  pkmn.height 1.2
  pkmn.weight 202.5
  pkmn.category "Iron Claw"
  pkmn.pokedex_entry "The claws tipping its arms pack the destructive power to tear through thick iron sheets as if they were silk. It flies at over 60 miles per hour."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"MAGNETRISE"
    m.at 1, :"TAKEDOWN"
    m.at 1, :"CONFUSION"
    m.at 1, :"METALCLAW"
    m.at 20, :"CONFUSION"
    m.at 20, :"METALCLAW"
    m.at 23, :"PURSUIT"
    m.at 26, :"MIRACLEEYE"
    m.at 29, :"ZENHEADBUTT"
    m.at 32, :"BULLETPUNCH"
    m.at 35, :"SCARYFACE"
    m.at 38, :"AGILITY"
    m.at 41, :"PSYCHIC"
    m.at 44, :"METEORMASH"
    m.at 47, :"IRONDEFENSE"
    m.at 50, :"HYPERBEAM"
  end
  pkmn.tutor_moves :"AERIALACE", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CUT", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"EARTHQUAKE", :"ENDURE", :"EXPLOSION", :"FACADE", :"FLASH", :"FLASHCANNON", :"FRUSTRATION", :"FURYCUTTER", :"GRASSKNOT", :"GRAVITY", :"GYROBALL", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"ICEPUNCH", :"ICYWIND", :"IRONDEFENSE", :"IRONHEAD", :"LIGHTSCREEN", :"MAGNETRISE", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SHADOWBALL", :"SIGNALBEAM", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"STEALTHROCK", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TELEKINESIS", :"THUNDERPUNCH", :"TOXIC", :"TRICK", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"METANG" do |m|
  m.back_sprite 2, 0
  m.front_sprite 3, 11
  m.shadow_sprite 0, 0, 3
end