#=============================================================================
# Spidops - BUG Type
#=============================================================================

GameData::Species.define :"SPIDOPS" do |pkmn|
  pkmn.name "Spidops"
  pkmn.types :"BUG"
  pkmn.base_stats hp: 60, attack: 79, defense: 92,
                  sp_atk: 35, sp_def: 52, speed: 86
  pkmn.abilities :"INSOMNIA"
  pkmn.hidden_abilities :"STAKEOUT"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Erratic"
  pkmn.color :"Green"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 141
  pkmn.catch_rate 120
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 1.0
  pkmn.weight 16.5
  pkmn.category "Trap"
  pkmn.pokedex_entry "It clings to branches and ceilings using its threads and moves without a sound. It takes out its prey before the prey even notices it."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 0, :"SILKTRAP"
    m.at 1, :"STRINGSHOT"
    m.at 1, :"TACKLE"
    m.at 5, :"STRUGGLEBUG"
    m.at 8, :"ASSURANCE"
    m.at 11, :"FEINT"
    m.at 14, :"BUGBITE"
    m.at 19, :"BLOCK"
    m.at 24, :"COUNTER"
    m.at 28, :"HEADBUTT"
    m.at 33, :"STICKYWEB"
    m.at 37, :"GASTROACID"
    m.at 41, :"CIRCLETHROW"
    m.at 45, :"THROATCHOP"
    m.at 49, :"SKITTERSMACK"
  end
  pkmn.tutor_moves :"AERIALACE", :"BODYSLAM", :"BRICKBREAK", :"BUGBITE", :"BUGBUZZ", :"BULLETSEED", :"ELECTROWEB", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLING", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"KNOCKOFF", :"LEECHLIFE", :"LOWKICK", :"LUNGE", :"PAINSPLIT", :"POISONJAB", :"POUNCE", :"PROTECT", :"RAINDANCE", :"REST", :"REVERSAL", :"ROCKTOMB", :"SCARYFACE", :"SHADOWCLAW", :"SKITTERSMACK", :"SLEEPTALK", :"SPIKES", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"TAKEDOWN", :"TAUNT", :"THIEF", :"THROATCHOP", :"TOXICSPIKES", :"TRAILBLAZE", :"UPPERHAND", :"UTURN", :"XSCISSOR"
end

GameData::SpeciesMetrics.define :"SPIDOPS" do |m|
  m.back_sprite 9, 55
  m.front_sprite 0, 25
  m.shadow_sprite 0, 0, 2
end