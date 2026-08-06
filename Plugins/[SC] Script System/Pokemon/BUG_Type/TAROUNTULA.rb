#=============================================================================
# Tarountula - BUG Type
#=============================================================================

GameData::Species.define :"TAROUNTULA" do |pkmn|
  pkmn.name "Tarountula"
  pkmn.types :"BUG"
  pkmn.base_stats hp: 35, attack: 41, defense: 45,
                  sp_atk: 20, sp_def: 29, speed: 40
  pkmn.abilities :"INSOMNIA"
  pkmn.hidden_abilities :"STAKEOUT"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Erratic"
  pkmn.color :"White"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 42
  pkmn.catch_rate 255
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 0.3
  pkmn.weight 4.0
  pkmn.category "String Ball"
  pkmn.pokedex_entry "The ball of threads wrapped around its body is elastic enough to deflect the scythes of Scyther, this Pokémon’s natural enemy."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"STRINGSHOT"
    m.at 1, :"TACKLE"
    m.at 5, :"STRUGGLEBUG"
    m.at 8, :"ASSURANCE"
    m.at 11, :"FEINT"
    m.at 14, :"BUGBITE"
    m.at 18, :"BLOCK"
    m.at 22, :"COUNTER"
    m.at 25, :"HEADBUTT"
    m.at 29, :"STICKYWEB"
    m.at 33, :"GASTROACID"
    m.at 36, :"CIRCLETHROW"
    m.at 40, :"THROATCHOP"
    m.at 44, :"SKITTERSMACK"
  end
  pkmn.tutor_moves :"BODYSLAM", :"BUGBITE", :"BUGBUZZ", :"BULLETSEED", :"ENDURE", :"FACADE", :"FALSESWIPE", :"GIGADRAIN", :"GRASSKNOT", :"KNOCKOFF", :"LEECHLIFE", :"LUNGE", :"POISONJAB", :"POUNCE", :"PROTECT", :"RAINDANCE", :"REST", :"SHADOWCLAW", :"SKITTERSMACK", :"SLEEPTALK", :"SPIKES", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"TAKEDOWN", :"THIEF", :"THROATCHOP", :"TOXICSPIKES", :"TRAILBLAZE", :"XSCISSOR"
  pkmn.egg_moves :"FIRSTIMPRESSION", :"LUNGE", :"MEMENTO", :"SUCKERPUNCH"
end

GameData::SpeciesMetrics.define :"TAROUNTULA" do |m|
  m.back_sprite 0, 46
  m.front_sprite -1, 26
  m.shadow_sprite 0, 0, 1
end