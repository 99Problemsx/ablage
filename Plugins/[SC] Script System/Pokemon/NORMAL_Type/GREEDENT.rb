#=============================================================================
# Greedent - NORMAL Type
#=============================================================================

GameData::Species.define :"GREEDENT" do |pkmn|
  pkmn.name "Greedent"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 120, attack: 95, defense: 95,
                  sp_atk: 20, sp_def: 55, speed: 75
  pkmn.abilities :"CHEEKPOUCH"
  pkmn.hidden_abilities :"GLUTTONY"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 161
  pkmn.catch_rate 90
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.6
  pkmn.weight 6.0
  pkmn.category "Greedy"
  pkmn.pokedex_entry "It stashes berries in its tail - so many berries that they fall out constantly. But this Pokémon is a bit slow-witted, so it doesn't notice the loss."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 0, :"COVET"
    m.at 1, :"TACKLE"
    m.at 1, :"TAILWHIP"
    m.at 1, :"BITE"
    m.at 1, :"STUFFCHEEKS"
    m.at 15, :"STOCKPILE"
    m.at 15, :"SWALLOW"
    m.at 15, :"SPITUP"
    m.at 20, :"BODYSLAM"
    m.at 27, :"REST"
    m.at 34, :"COUNTER"
    m.at 41, :"BULLETSEED"
    m.at 48, :"SUPERFANG"
    m.at 55, :"BELCH"
  end
  pkmn.tutor_moves :"AMNESIA", :"ASSURANCE", :"ATTRACT", :"BODYPRESS", :"BODYSLAM", :"BRUTALSWING", :"BULLETSEED", :"CAPTIVATE", :"CONFIDE", :"CRUNCH", :"DIG", :"DOUBLETEAM", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREFANG", :"FLING", :"FRUSTRATION", :"GIGAIMPACT", :"GYROBALL", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"ICEFANG", :"IRONTAIL", :"MIMIC", :"MUDSHOT", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"PSYCHICFANGS", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SNORE", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUPERPOWER", :"SWAGGER", :"SWORDSDANCE", :"TAILSLAP", :"THIEF", :"THUNDERFANG", :"TOXIC", :"UPROAR", :"WILDCHARGE", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"GREEDENT" do |m|
  m.back_sprite 2, 49
  m.front_sprite 11, 16
end