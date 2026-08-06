#=============================================================================
# Pyukumuku - WATER Type
#=============================================================================

GameData::Species.define :"PYUKUMUKU" do |pkmn|
  pkmn.name "Pyukumuku"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 55, attack: 60, defense: 130,
                  sp_atk: 5, sp_def: 30, speed: 130
  pkmn.abilities :"INNARDSOUT"
  pkmn.hidden_abilities :"UNAWARE"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Black"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 144
  pkmn.catch_rate 60
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 0.3
  pkmn.weight 1.2
  pkmn.category "Sea Cucumber"
  pkmn.pokedex_entry "It lives in shallow seas, such as areas near a beach. It can eject its internal organs, which it uses to engulf its prey or battle enemies."
  pkmn.evs special_defense: 2
  pkmn.egg_groups :"Water1"

  pkmn.moves do |m|
    m.at 1, :"BATONPASS"
    m.at 1, :"HARDEN"
    m.at 5, :"HELPINGHAND"
    m.at 10, :"TAUNT"
    m.at 15, :"SAFEGUARD"
    m.at 20, :"COUNTER"
    m.at 25, :"PURIFY"
    m.at 30, :"CURSE"
    m.at 35, :"GASTROACID"
    m.at 40, :"PAINSPLIT"
    m.at 45, :"RECOVER"
    m.at 50, :"SOAK"
    m.at 55, :"TOXIC"
    m.at 60, :"MEMENTO"
  end
  pkmn.tutor_moves :"ATTRACT", :"BATONPASS", :"BLOCK", :"CAPTIVATE", :"CONFIDE", :"DOUBLETEAM", :"ENDURE", :"GASTROACID", :"HAIL", :"HELPINGHAND", :"LIGHTSCREEN", :"MIMIC", :"NATURALGIFT", :"PAINSPLIT", :"PROTECT", :"PSYCHUP", :"QUASH", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"SAFEGUARD", :"SCREECH", :"SECRETPOWER", :"SLEEPTALK", :"SPITE", :"SUBSTITUTE", :"SWAGGER", :"TAUNT", :"TOXIC", :"VENOMDRENCH", :"TERABLAST"
  pkmn.egg_moves :"MIRRORCOAT", :"SPITE", :"SWAGGER", :"TICKLE"
end

GameData::SpeciesMetrics.define :"PYUKUMUKU" do |m|
  m.back_sprite 9, 24
  m.front_sprite -4, 19
end