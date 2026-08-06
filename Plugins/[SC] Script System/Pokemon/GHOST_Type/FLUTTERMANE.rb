#=============================================================================
# Flutter Mane - GHOST Type
#=============================================================================

GameData::Species.define :"FLUTTERMANE" do |pkmn|
  pkmn.name "Flutter Mane"
  pkmn.types :"GHOST", :"FAIRY"
  pkmn.base_stats hp: 55, attack: 55, defense: 55,
                  sp_atk: 135, sp_def: 135, speed: 135
  pkmn.abilities :"PROTOSYNTHESIS"
  pkmn.flags :"Paradox"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Gray"
  pkmn.shape :"Head"
  pkmn.base_exp 285
  pkmn.catch_rate 30
  pkmn.happiness 0
  pkmn.hatch_steps 12800
  pkmn.height 1.4
  pkmn.weight 4.0
  pkmn.category "Paradox"
  pkmn.pokedex_entry "This Pokémon has characteristics similar to those of Flutter Mane, a creature mentioned in a certain book."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at -1, :"SUNNYDAY"
    m.at 1, :"CONFUSERAY"
    m.at 1, :"SPITE"
    m.at 1, :"ASTONISH"
    m.at 7, :"PSYBEAM"
    m.at 14, :"MEANLOOK"
    m.at 21, :"MEMENTO"
    m.at 28, :"WISH"
    m.at 35, :"DAZZLINGGLEAM"
    m.at 42, :"SHADOWBALL"
    m.at 49, :"MYSTICALFIRE"
    m.at 56, :"POWERGEM"
    m.at 63, :"PSYSHOCK"
    m.at 70, :"PHANTOMFORCE"
    m.at 77, :"PAINSPLIT"
    m.at 84, :"MOONBLAST"
    m.at 91, :"PERISHSONG"
  end
  pkmn.tutor_moves :"CALMMIND", :"CHARGEBEAM", :"CHARM", :"CONFUSERAY", :"DARKPULSE", :"DAZZLINGGLEAM", :"DISARMINGVOICE", :"DRAININGKISS", :"ENDURE", :"ENERGYBALL", :"FAKETEARS", :"GIGAIMPACT", :"HELPINGHAND", :"HEX", :"HYPERBEAM", :"HYPERVOICE", :"ICYWIND", :"IMPRISON", :"MAGICALLEAF", :"MISTYTERRAIN", :"NIGHTSHADE", :"PAINSPLIT", :"PHANTOMFORCE", :"POLTERGEIST", :"POWERGEM", :"PROTECT", :"PSYBEAM", :"PSYSHOCK", :"REST", :"SHADOWBALL", :"SLEEPTALK", :"SPITE", :"STOREDPOWER", :"SUBSTITUTE", :"SUNNYDAY", :"SWIFT", :"TAUNT", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TRICKROOM"
end

GameData::SpeciesMetrics.define :"FLUTTERMANE" do |m|
  m.back_sprite 0, 31
  m.front_sprite 0, 0
  m.shadow_sprite 0, 0, 1
end