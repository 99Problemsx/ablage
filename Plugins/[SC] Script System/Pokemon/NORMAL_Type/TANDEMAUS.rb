#=============================================================================
# Tandemaus - NORMAL Type
#=============================================================================

GameData::Species.define :"TANDEMAUS" do |pkmn|
  pkmn.name "Tandemaus"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 50, attack: 50, defense: 45,
                  sp_atk: 75, sp_def: 40, speed: 45
  pkmn.abilities :"RUNAWAY", :"PICKUP"
  pkmn.hidden_abilities :"OWNTEMPO"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Fast"
  pkmn.color :"White"
  pkmn.shape :"MultiBody"
  pkmn.base_exp 61
  pkmn.catch_rate 150
  pkmn.happiness 50
  pkmn.hatch_steps 2560
  pkmn.height 0.3
  pkmn.weight 1.8
  pkmn.category "Couple"
  pkmn.pokedex_entry "Exhibiting great teamwork, they use their incisors to cut pieces out of any material that might be useful for a nest, then make off with them."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Field", :"Fairy"

  pkmn.moves do |m|
    m.at 1, :"BABYDOLLEYES"
    m.at 1, :"POUND"
    m.at 5, :"ECHOEDVOICE"
    m.at 8, :"HELPINGHAND"
    m.at 11, :"SUPERFANG"
    m.at 14, :"DOUBLEHIT"
    m.at 18, :"BULLETSEED"
    m.at 22, :"ENCORE"
    m.at 26, :"PLAYROUGH"
    m.at 30, :"HYPERVOICE"
    m.at 33, :"CHARM"
    m.at 37, :"BEATUP"
    m.at 41, :"COPYCAT"
    m.at 46, :"POPULATIONBOMB"
  end
  pkmn.tutor_moves :"AERIALACE", :"AGILITY", :"BATONPASS", :"BULLETSEED", :"CHARM", :"CRUNCH", :"DIG", :"DOUBLEEDGE", :"ENCORE", :"ENDURE", :"FACADE", :"FAKETEARS", :"GRASSKNOT", :"HELPINGHAND", :"HYPERVOICE", :"LOWKICK", :"LOWSWEEP", :"MUDSHOT", :"MUDSLAP", :"PLAYROUGH", :"PROTECT", :"RAINDANCE", :"REST", :"SEEDBOMB", :"SHADOWCLAW", :"SLEEPTALK", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERFANG", :"SWIFT", :"TAKEDOWN", :"TAUNT", :"THIEF", :"THUNDERWAVE", :"UTURN", :"WATERPULSE"
  pkmn.egg_moves :"AFTERYOU", :"BATONPASS", :"BITE", :"FEINT", :"SWITCHEROO", :"TICKLE"
end

GameData::SpeciesMetrics.define :"TANDEMAUS" do |m|
  m.back_sprite 3, 55
  m.front_sprite -3, 28
  m.shadow_sprite 0, 0, 2
end