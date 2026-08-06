#=============================================================================
# Crocalor - FIRE Type
#=============================================================================

GameData::Species.define :"CROCALOR" do |pkmn|
  pkmn.name "Crocalor"
  pkmn.types :"FIRE"
  pkmn.base_stats hp: 81, attack: 55, defense: 78,
                  sp_atk: 49, sp_def: 90, speed: 58
  pkmn.abilities :"BLAZE"
  pkmn.hidden_abilities :"UNAWARE"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Red"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 144
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.0
  pkmn.weight 30.7
  pkmn.category "Fire Croc"
  pkmn.pokedex_entry "The combination of Crocalor’s fire energy and overflowing vitality has caused an egg-shaped fireball to appear on the Pokémon’s head."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"LEER"
    m.at 1, :"EMBER"
    m.at 7, :"LICK"
    m.at 10, :"ROUND"
    m.at 12, :"BITE"
    m.at 15, :"YAWN"
    m.at 17, :"INCINERATE"
    m.at 24, :"SNARL"
    m.at 28, :"ROAR"
    m.at 32, :"FLAMETHROWER"
    m.at 38, :"HYPERVOICE"
    m.at 42, :"WILLOWISP"
    m.at 47, :"FIREBLAST"
  end
  pkmn.tutor_moves :"BODYSLAM", :"CRUNCH", :"CURSE", :"DIG", :"DISARMINGVOICE", :"ENCORE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREFANG", :"FIREPLEDGE", :"FIRESPIN", :"FLAMECHARGE", :"FLAMETHROWER", :"FLAREBLITZ", :"HEATWAVE", :"HELPINGHAND", :"HYPERVOICE", :"MUDSLAP", :"OUTRAGE", :"OVERHEAT", :"PROTECT", :"REST", :"ROAR", :"SEEDBOMB", :"SLEEPTALK", :"SNARL", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUNNYDAY", :"TAKEDOWN", :"TEMPERFLARE", :"THUNDERFANG", :"WILLOWISP", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"CROCALOR" do |m|
  m.back_sprite 0, 48
  m.front_sprite -4, 21
  m.shadow_sprite 0, 0, 2
end