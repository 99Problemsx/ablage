#=============================================================================
# Rellor - BUG Type
#=============================================================================

GameData::Species.define :"RELLOR" do |pkmn|
  pkmn.name "Rellor"
  pkmn.types :"BUG"
  pkmn.base_stats hp: 41, attack: 50, defense: 60,
                  sp_atk: 30, sp_def: 31, speed: 58
  pkmn.abilities :"COMPOUNDEYES"
  pkmn.hidden_abilities :"SHEDSKIN"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Brown"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 54
  pkmn.catch_rate 190
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.2
  pkmn.weight 1.0
  pkmn.category "Rolling"
  pkmn.pokedex_entry "This Pokémon creates a mud ball by mixing sand and dirt with psychic energy. It treasures its mud ball more than its own life."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"DEFENSECURL"
    m.at 1, :"TACKLE"
    m.at 4, :"SANDATTACK"
    m.at 7, :"STRUGGLEBUG"
    m.at 11, :"ROLLOUT"
    m.at 15, :"MUDSHOT"
    m.at 20, :"BUGBITE"
    m.at 24, :"TAKEDOWN"
    m.at 29, :"DIG"
    m.at 35, :"LUNGE"
  end
  pkmn.tutor_moves :"BUGBITE", :"BUGBUZZ", :"DIG", :"ENDURE", :"FACADE", :"FLING", :"GUNKSHOT", :"IRONDEFENSE", :"LEECHLIFE", :"LUNGE", :"MUDSHOT", :"MUDSLAP", :"POUNCE", :"PROTECT", :"REST", :"ROCKTOMB", :"SKITTERSMACK", :"SLEEPTALK", :"SLUDGEBOMB", :"STRUGGLEBUG", :"SUBSTITUTE", :"TAKEDOWN", :"THIEF", :"WEATHERBALL", :"XSCISSOR"
  pkmn.egg_moves :"COSMICPOWER", :"MEMENTO", :"RECOVER", :"WEATHERBALL"
end

GameData::SpeciesMetrics.define :"RELLOR" do |m|
  m.back_sprite 0, 58
  m.front_sprite -3, 34
  m.shadow_sprite 0, 0, 2
end