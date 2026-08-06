#=============================================================================
# Maushold - NORMAL Type
#=============================================================================

GameData::Species.define :"MAUSHOLD" do |pkmn|
  pkmn.name "Maushold"
  pkmn.form_name "Family of Four"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 74, attack: 75, defense: 70,
                  sp_atk: 111, sp_def: 65, speed: 75
  pkmn.abilities :"FRIENDGUARD", :"CHEEKPOUCH"
  pkmn.hidden_abilities :"TECHNICIAN"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Fast"
  pkmn.color :"White"
  pkmn.shape :"MultiBody"
  pkmn.base_exp 165
  pkmn.catch_rate 75
  pkmn.happiness 50
  pkmn.hatch_steps 2560
  pkmn.height 0.3
  pkmn.weight 2.8
  pkmn.category "Family"
  pkmn.pokedex_entry "They build huge nests with many rooms that are used for different purposes, such as eating and sleeping."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Field", :"Fairy"

  pkmn.moves do |m|
    m.at 1, :"TIDYUP"
    m.at 1, :"POUND"
    m.at 1, :"FOLLOWME"
    m.at 1, :"BABYDOLLEYES"
    m.at 5, :"ECHOEDVOICE"
    m.at 8, :"HELPINGHAND"
    m.at 11, :"SUPERFANG"
    m.at 14, :"DOUBLEHIT"
    m.at 18, :"BULLETSEED"
    m.at 22, :"ENCORE"
    m.at 29, :"PLAYROUGH"
    m.at 33, :"HYPERVOICE"
    m.at 37, :"CHARM"
    m.at 41, :"BEATUP"
    m.at 46, :"COPYCAT"
    m.at 53, :"POPULATIONBOMB"
  end
  pkmn.tutor_moves :"AERIALACE", :"AGILITY", :"BATONPASS", :"BULLETSEED", :"CHARM", :"CHILLINGWATER", :"CRUNCH", :"DIG", :"DOUBLEEDGE", :"ENCORE", :"ENDURE", :"FACADE", :"FAKETEARS", :"GIGAIMPACT", :"GRASSKNOT", :"HELPINGHAND", :"HYPERBEAM", :"HYPERVOICE", :"LOWKICK", :"LOWSWEEP", :"MUDSHOT", :"MUDSLAP", :"PLAYROUGH", :"PROTECT", :"RAINDANCE", :"REST", :"SEEDBOMB", :"SHADOWCLAW", :"SLEEPTALK", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERFANG", :"SWIFT", :"TAKEDOWN", :"TAUNT", :"THIEF", :"THUNDERWAVE", :"TRAILBLAZE", :"UTURN", :"WATERPULSE"
end

GameData::SpeciesMetrics.define :"MAUSHOLD" do |m|
  m.back_sprite 0, 49
  m.front_sprite -2, 29
  m.shadow_sprite 0, 0, 2
end

# Form 1 - Family of Three
GameData::Species.define :"MAUSHOLD_1" do |pkmn|
  pkmn.species :"MAUSHOLD"
  pkmn.form 1
  pkmn.name "Maushold"
  pkmn.form_name "Family of Three"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 74, attack: 75, defense: 70,
                  sp_atk: 111, sp_def: 65, speed: 75
  pkmn.abilities :"FRIENDGUARD", :"CHEEKPOUCH"
  pkmn.hidden_abilities :"TECHNICIAN"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Fast"
  pkmn.color :"White"
  pkmn.shape :"MultiBody"
  pkmn.base_exp 165
  pkmn.catch_rate 75
  pkmn.happiness 50
  pkmn.hatch_steps 2560
  pkmn.height 0.3
  pkmn.weight 2.3
  pkmn.category "Family"
  pkmn.pokedex_entry "They build huge nests with many rooms that are used for different purposes, such as eating and sleeping."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Field", :"Fairy"

  pkmn.moves do |m|
    m.at 1, :"TIDYUP"
    m.at 1, :"POUND"
    m.at 1, :"FOLLOWME"
    m.at 1, :"BABYDOLLEYES"
    m.at 5, :"ECHOEDVOICE"
    m.at 8, :"HELPINGHAND"
    m.at 11, :"SUPERFANG"
    m.at 14, :"DOUBLEHIT"
    m.at 18, :"BULLETSEED"
    m.at 22, :"ENCORE"
    m.at 29, :"PLAYROUGH"
    m.at 33, :"HYPERVOICE"
    m.at 37, :"CHARM"
    m.at 41, :"BEATUP"
    m.at 46, :"COPYCAT"
    m.at 53, :"POPULATIONBOMB"
  end
  pkmn.tutor_moves :"AERIALACE", :"AGILITY", :"BATONPASS", :"BULLETSEED", :"CHARM", :"CHILLINGWATER", :"CRUNCH", :"DIG", :"DOUBLEEDGE", :"ENCORE", :"ENDURE", :"FACADE", :"FAKETEARS", :"GIGAIMPACT", :"GRASSKNOT", :"HELPINGHAND", :"HYPERBEAM", :"HYPERVOICE", :"LOWKICK", :"LOWSWEEP", :"MUDSHOT", :"MUDSLAP", :"PLAYROUGH", :"PROTECT", :"RAINDANCE", :"REST", :"SEEDBOMB", :"SHADOWCLAW", :"SLEEPTALK", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERFANG", :"SWIFT", :"TAKEDOWN", :"TAUNT", :"THIEF", :"THUNDERWAVE", :"TRAILBLAZE", :"UTURN", :"WATERPULSE"
end

GameData::SpeciesMetrics.define :"MAUSHOLD_1" do |m|
  m.back_sprite 0, 49
  m.front_sprite 0, 29
  m.shadow_sprite 0, 0, 2
end