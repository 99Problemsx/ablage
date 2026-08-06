#=============================================================================
# Skwovet - NORMAL Type
#=============================================================================

GameData::Species.define :"SKWOVET" do |pkmn|
  pkmn.name "Skwovet"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 70, attack: 55, defense: 55,
                  sp_atk: 25, sp_def: 35, speed: 35
  pkmn.abilities :"CHEEKPOUCH"
  pkmn.hidden_abilities :"GLUTTONY"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 55
  pkmn.catch_rate 255
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.3
  pkmn.weight 2.5
  pkmn.category "Cheeky"
  pkmn.pokedex_entry "It eats berries nonstop—a habit that has made it more resilient than it looks. It'll show up on farms, searching for yet more berries."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"TAILWHIP"
    m.at 5, :"BITE"
    m.at 10, :"STUFFCHEEKS"
    m.at 15, :"STOCKPILE"
    m.at 15, :"SWALLOW"
    m.at 15, :"SPITUP"
    m.at 20, :"BODYSLAM"
    m.at 25, :"REST"
    m.at 30, :"COUNTER"
    m.at 35, :"BULLETSEED"
    m.at 40, :"SUPERFANG"
    m.at 45, :"BELCH"
  end
  pkmn.tutor_moves :"AMNESIA", :"ASSURANCE", :"ATTRACT", :"BODYSLAM", :"BRUTALSWING", :"BULLETSEED", :"CAPTIVATE", :"CONFIDE", :"CRUNCH", :"DIG", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FLING", :"FRUSTRATION", :"GYROBALL", :"HIDDENPOWER", :"HYPERVOICE", :"IRONTAIL", :"MIMIC", :"MUDSHOT", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"TAILSLAP", :"THIEF", :"TOXIC", :"UPROAR", :"TERABLAST"
  pkmn.egg_moves :"BELLYDRUM", :"DEFENSECURL", :"LASTRESORT", :"ROLLOUT"
end

GameData::SpeciesMetrics.define :"SKWOVET" do |m|
  m.back_sprite 5, 47
  m.front_sprite 5, 25
end