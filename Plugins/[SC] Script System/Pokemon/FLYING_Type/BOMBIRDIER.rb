#=============================================================================
# Bombirdier - FLYING Type
#=============================================================================

GameData::Species.define :"BOMBIRDIER" do |pkmn|
  pkmn.name "Bombirdier"
  pkmn.types :"FLYING", :"DARK"
  pkmn.base_stats hp: 70, attack: 103, defense: 85,
                  sp_atk: 82, sp_def: 60, speed: 85
  pkmn.abilities :"BIGPECKS", :"KEENEYE"
  pkmn.hidden_abilities :"ROCKYPAYLOAD"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"White"
  pkmn.shape :"Winged"
  pkmn.base_exp 243
  pkmn.catch_rate 25
  pkmn.happiness 50
  pkmn.hatch_steps 8960
  pkmn.height 1.5
  pkmn.weight 42.9
  pkmn.category "Item Drop"
  pkmn.pokedex_entry "It gathers things up in an apron made from shed feathers added to the Pokémon’s chest feathers, then drops those things from high places for fun."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"MEMENTO"
    m.at 1, :"HONECLAWS"
    m.at 1, :"WINGATTACK"
    m.at 1, :"LEER"
    m.at 1, :"PECK"
    m.at 7, :"THIEF"
    m.at 11, :"ROCKTHROW"
    m.at 16, :"WHIRLWIND"
    m.at 20, :"PLUCK"
    m.at 24, :"TORMENT"
    m.at 29, :"ROCKTOMB"
    m.at 36, :"PAYBACK"
    m.at 42, :"DUALWINGBEAT"
    m.at 47, :"ROCKSLIDE"
    m.at 53, :"KNOCKOFF"
    m.at 60, :"PARTINGSHOT"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AIRCUTTER", :"AIRSLASH", :"BRAVEBIRD", :"CURSE", :"DARKPULSE", :"DRILLRUN", :"DUALWINGBEAT", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FEATHERDANCE", :"FLY", :"FOULPLAY", :"GIGAIMPACT", :"HEATWAVE", :"HURRICANE", :"HYPERBEAM", :"HYPERVOICE", :"ICYWIND", :"KNOCKOFF", :"LASHOUT", :"NASTYPLOT", :"POWERGEM", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"ROCKBLAST", :"ROCKSLIDE", :"ROCKTOMB", :"SANDSTORM", :"SCARYFACE", :"SLEEPTALK", :"SNARL", :"STEALTHROCK", :"STONEEDGE", :"SUBSTITUTE", :"SUNNYDAY", :"TAILWIND", :"TAKEDOWN", :"TAUNT", :"THIEF", :"UTURN"
  pkmn.egg_moves :"FEATHERDANCE", :"POWERTRIP", :"ROOST", :"SKYATTACK", :"SUCKERPUNCH"
end

GameData::SpeciesMetrics.define :"BOMBIRDIER" do |m|
  m.back_sprite 0, 15
  m.front_sprite -4, -12
  m.shadow_sprite 0, 0, 2
end