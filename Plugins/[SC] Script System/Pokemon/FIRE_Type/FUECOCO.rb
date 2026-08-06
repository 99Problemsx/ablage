#=============================================================================
# Fuecoco - FIRE Type
#=============================================================================

GameData::Species.define :"FUECOCO" do |pkmn|
  pkmn.name "Fuecoco"
  pkmn.types :"FIRE"
  pkmn.base_stats hp: 67, attack: 45, defense: 59,
                  sp_atk: 36, sp_def: 63, speed: 40
  pkmn.abilities :"BLAZE"
  pkmn.hidden_abilities :"UNAWARE"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Red"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 62
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.4
  pkmn.weight 9.8
  pkmn.category "Fire Croc"
  pkmn.pokedex_entry "It lies on warm rocks and uses the heat absorbed by its square-shaped scales to create fire energy."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"LEER"
    m.at 1, :"EMBER"
    m.at 7, :"ROUND"
    m.at 12, :"BITE"
    m.at 15, :"INCINERATE"
    m.at 17, :"YAWN"
    m.at 21, :"SNARL"
    m.at 25, :"ROAR"
    m.at 28, :"FLAMETHROWER"
    m.at 32, :"HYPERVOICE"
    m.at 36, :"FIREBLAST"
  end
  pkmn.tutor_moves :"BODYSLAM", :"CRUNCH", :"CURSE", :"DIG", :"DISARMINGVOICE", :"ENCORE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREFANG", :"FIREPLEDGE", :"FIRESPIN", :"FLAMECHARGE", :"FLAMETHROWER", :"FLAREBLITZ", :"HEATWAVE", :"HELPINGHAND", :"HYPERVOICE", :"MUDSLAP", :"OUTRAGE", :"OVERHEAT", :"PROTECT", :"REST", :"ROAR", :"SEEDBOMB", :"SLEEPTALK", :"SNARL", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUNNYDAY", :"TAKEDOWN", :"TEMPERFLARE", :"THUNDERFANG", :"WILLOWISP", :"ZENHEADBUTT"
  pkmn.egg_moves :"BELCH", :"CURSE", :"ENCORE", :"SLACKOFF"
end

GameData::SpeciesMetrics.define :"FUECOCO" do |m|
  m.back_sprite 0, 45
  m.front_sprite 1, 27
  m.shadow_sprite 0, 0, 1
end