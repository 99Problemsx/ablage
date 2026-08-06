#=============================================================================
# Dachsbun - FAIRY Type
#=============================================================================

GameData::Species.define :"DACHSBUN" do |pkmn|
  pkmn.name "Dachsbun"
  pkmn.types :"FAIRY"
  pkmn.base_stats hp: 57, attack: 80, defense: 115,
                  sp_atk: 95, sp_def: 50, speed: 80
  pkmn.abilities :"WELLBAKEDBODY"
  pkmn.hidden_abilities :"AROMAVEIL"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 167
  pkmn.catch_rate 90
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.5
  pkmn.weight 14.9
  pkmn.category "Dog"
  pkmn.pokedex_entry "The pleasant aroma that emanates from this Pokémon’s body helps wheat grow, so Dachsbun has been treasured by farming villages."
  pkmn.evs speed: 2
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
    m.at 29, :"BATONPASS"
    m.at 33, :"ROAR"
    m.at 38, :"DOUBLEEDGE"
    m.at 42, :"CHARM"
    m.at 47, :"CRUNCH"
    m.at 53, :"LASTRESORT"
  end
  pkmn.tutor_moves :"AGILITY", :"ALLURINGVOICE", :"BATONPASS", :"BODYPRESS", :"BODYSLAM", :"CHARM", :"CRUNCH", :"DAZZLINGGLEAM", :"DIG", :"DOUBLEEDGE", :"DRAININGKISS", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREFANG", :"GIGAIMPACT", :"HELPINGHAND", :"HYPERBEAM", :"ICEFANG", :"MISTYTERRAIN", :"MUDSHOT", :"MUDSLAP", :"PLAYROUGH", :"PROTECT", :"PSYCHICFANGS", :"PSYCHUP", :"RAINDANCE", :"REST", :"ROAR", :"SCARYFACE", :"SLEEPTALK", :"SNARL", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUNNYDAY", :"TAKEDOWN", :"THUNDERFANG", :"TRAILBLAZE"
end

GameData::SpeciesMetrics.define :"DACHSBUN" do |m|
  m.back_sprite 0, 47
  m.front_sprite -3, 25
  m.shadow_sprite 0, 0, 2
end