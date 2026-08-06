#=============================================================================
# Azurill - NORMAL Type
#=============================================================================

GameData::Species.define :"AZURILL" do |pkmn|
  pkmn.name "Azurill"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 50, attack: 20, defense: 40,
                  sp_atk: 20, sp_def: 20, speed: 40
  pkmn.abilities :"THICKFAT", :"HUGEPOWER"
  pkmn.hidden_abilities :"SAPSIPPER"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Female75Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Blue"
  pkmn.shape :"HeadLegs"
  pkmn.base_exp 38
  pkmn.catch_rate 150
  pkmn.happiness 70
  pkmn.hatch_steps 2570
  pkmn.height 0.2
  pkmn.weight 2.0
  pkmn.category "Polka Dot"
  pkmn.pokedex_entry "Its tail, which is packed with nutrition, is very bouncy like a rubber ball. On sunny days they gather at the edge of water and splash about for fun."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"SPLASH"
    m.at 1, :"BUBBLE"
    m.at 2, :"TAILWHIP"
    m.at 5, :"WATERSPORT"
    m.at 7, :"WATERGUN"
    m.at 10, :"CHARM"
    m.at 13, :"BUBBLEBEAM"
    m.at 16, :"HELPINGHAND"
    m.at 20, :"SLAM"
    m.at 23, :"BOUNCE"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BOUNCE", :"CAPTIVATE", :"COVET", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FRUSTRATION", :"HAIL", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERVOICE", :"ICEBEAM", :"ICYWIND", :"IRONTAIL", :"KNOCKOFF", :"LIGHTSCREEN", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROLLOUT", :"ROUND", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"SWIFT", :"TOXIC", :"UPROAR", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL", :"WORKUP"
  pkmn.egg_moves :"BODYSLAM", :"ENCORE", :"FAKETEARS", :"MUDDYWATER", :"REFRESH", :"SING", :"SLAM", :"SOAK", :"TICKLE", :"WATERSPORT"
end

GameData::SpeciesMetrics.define :"AZURILL" do |m|
  m.back_sprite -12, 0
  m.front_sprite 14, 20
  m.shadow_sprite 0, 0, 1
end