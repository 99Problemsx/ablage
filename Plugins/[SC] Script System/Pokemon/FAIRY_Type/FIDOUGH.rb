#=============================================================================
# Fidough - FAIRY Type
#=============================================================================

GameData::Species.define :"FIDOUGH" do |pkmn|
  pkmn.name "Fidough"
  pkmn.types :"FAIRY"
  pkmn.base_stats hp: 37, attack: 55, defense: 70,
                  sp_atk: 65, sp_def: 30, speed: 55
  pkmn.abilities :"OWNTEMPO"
  pkmn.hidden_abilities :"KLUTZ"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Yellow"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 62
  pkmn.catch_rate 190
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.3
  pkmn.weight 10.9
  pkmn.category "Puppy"
  pkmn.pokedex_entry "This Pokémon is smooth and moist to the touch. Yeast in Fidough’s breath induces fermentation in the Pokémon’s vicinity."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Field", :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"GROWL"
    m.at 1, :"TACKLE"
    m.at 3, :"LICK"
    m.at 6, :"TAILWHIP"
    m.at 8, :"COVET"
    m.at 11, :"BITE"
    m.at 15, :"BABYDOLLEYES"
    m.at 18, :"PLAYROUGH"
    m.at 22, :"WORKUP"
    m.at 26, :"BATONPASS"
    m.at 30, :"ROAR"
    m.at 33, :"DOUBLEEDGE"
    m.at 36, :"CHARM"
    m.at 40, :"CRUNCH"
    m.at 45, :"LASTRESORT"
  end
  pkmn.tutor_moves :"AGILITY", :"ALLURINGVOICE", :"BATONPASS", :"BODYSLAM", :"CHARM", :"CRUNCH", :"DAZZLINGGLEAM", :"DIG", :"DOUBLEEDGE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREFANG", :"HELPINGHAND", :"ICEFANG", :"MISTYTERRAIN", :"MUDSHOT", :"MUDSLAP", :"PLAYROUGH", :"PROTECT", :"PSYCHICFANGS", :"PSYCHUP", :"RAINDANCE", :"REST", :"ROAR", :"SLEEPTALK", :"SNARL", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUNNYDAY", :"TAKEDOWN", :"THUNDERFANG", :"TRAILBLAZE"
  pkmn.egg_moves :"COPYCAT", :"HOWL", :"SWEETSCENT", :"WISH", :"YAWN"
end

GameData::SpeciesMetrics.define :"FIDOUGH" do |m|
  m.back_sprite 0, 55
  m.front_sprite -2, 32
  m.shadow_sprite 0, 0, 1
end