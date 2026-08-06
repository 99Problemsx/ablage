#=============================================================================
# Wooloo - NORMAL Type
#=============================================================================

GameData::Species.define :"WOOLOO" do |pkmn|
  pkmn.name "Wooloo"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 42, attack: 40, defense: 55,
                  sp_atk: 48, sp_def: 40, speed: 45
  pkmn.abilities :"FLUFFY", :"RUNAWAY"
  pkmn.hidden_abilities :"BULLETPROOF"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"White"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 122
  pkmn.catch_rate 255
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 0.6
  pkmn.weight 6.0
  pkmn.category "Sheep"
  pkmn.pokedex_entry "Its curly fleece is such an effective cushion that this Pokémon could fall off a cliff and stand right back up at the bottom, unharmed."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"GROWL"
    m.at 4, :"DEFENSECURL"
    m.at 8, :"COPYCAT"
    m.at 12, :"GUARDSPLIT"
    m.at 16, :"DOUBLEKICK"
    m.at 21, :"HEADBUTT"
    m.at 25, :"TAKEDOWN"
    m.at 28, :"GUARDSWAP"
    m.at 32, :"REVERSAL"
    m.at 36, :"COTTONGUARD"
    m.at 40, :"DOUBLEEDGE"
  end
  pkmn.tutor_moves :"AGILITY", :"ATTRACT", :"CAPTIVATE", :"CONFIDE", :"DOUBLETEAM", :"ELECTROBALL", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GRASSYGLIDE", :"GUARDSWAP", :"HIDDENPOWER", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"REST", :"RETURN", :"REVERSAL", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"THUNDERWAVE", :"TOXIC", :"WILDCHARGE", :"TERABLAST"
  pkmn.egg_moves :"COUNTER", :"STOMP", :"SWAGGER"
end

GameData::SpeciesMetrics.define :"WOOLOO" do |m|
  m.back_sprite 2, 16
  m.front_sprite 1, 6
end