#=============================================================================
# Nymble - BUG Type
#=============================================================================

GameData::Species.define :"NYMBLE" do |pkmn|
  pkmn.name "Nymble"
  pkmn.types :"BUG"
  pkmn.base_stats hp: 33, attack: 46, defense: 40,
                  sp_atk: 45, sp_def: 21, speed: 25
  pkmn.abilities :"SWARM"
  pkmn.hidden_abilities :"TINTEDLENS"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 42
  pkmn.catch_rate 190
  pkmn.happiness 20
  pkmn.hatch_steps 5120
  pkmn.height 0.2
  pkmn.weight 1.0
  pkmn.category "Grasshopper"
  pkmn.pokedex_entry "It has its third set of legs folded up. When it’s in a tough spot, this Pokémon jumps over 30 feet using the strength of its legs."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"LEER"
    m.at 1, :"TACKLE"
    m.at 4, :"STRUGGLEBUG"
    m.at 6, :"ASTONISH"
    m.at 9, :"ASSURANCE"
    m.at 11, :"DOUBLEKICK"
    m.at 14, :"SCREECH"
    m.at 18, :"ENDURE"
    m.at 22, :"BUGBITE"
    m.at 26, :"FEINT"
    m.at 30, :"AGILITY"
    m.at 38, :"SUCKERPUNCH"
    m.at 41, :"FIRSTIMPRESSION"
  end
  pkmn.tutor_moves :"AGILITY", :"BUGBITE", :"BUGBUZZ", :"ENDURE", :"FACADE", :"LEECHLIFE", :"POUNCE", :"PROTECT", :"RAINDANCE", :"REST", :"SKITTERSMACK", :"SLEEPTALK", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"TAKEDOWN", :"THIEF", :"TRAILBLAZE", :"UTURN", :"XSCISSOR"
  pkmn.egg_moves :"COUNTER", :"SKITTERSMACK"
end

GameData::SpeciesMetrics.define :"NYMBLE" do |m|
  m.back_sprite 0, 59
  m.front_sprite 0, 32
  m.shadow_sprite 0, 0, 1
end