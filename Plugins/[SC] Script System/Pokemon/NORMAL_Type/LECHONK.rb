#=============================================================================
# Lechonk - NORMAL Type
#=============================================================================

GameData::Species.define :"LECHONK" do |pkmn|
  pkmn.name "Lechonk"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 54, attack: 45, defense: 40,
                  sp_atk: 35, sp_def: 35, speed: 45
  pkmn.abilities :"AROMAVEIL", :"GLUTTONY"
  pkmn.hidden_abilities :"THICKFAT"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 51
  pkmn.catch_rate 255
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 0.5
  pkmn.weight 10.2
  pkmn.category "Hog"
  pkmn.pokedex_entry "It searches for food all day. It possesses a keen sense of smell but doesn’t use it for anything other than foraging."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"TAILWHIP"
    m.at 1, :"TACKLE"
    m.at 5, :"DISARMINGVOICE"
    m.at 8, :"ECHOEDVOICE"
    m.at 12, :"MUDSHOT"
    m.at 15, :"COVET"
    m.at 17, :"DIG"
    m.at 21, :"HEADBUTT"
    m.at 24, :"YAWN"
    m.at 27, :"TAKEDOWN"
    m.at 30, :"WORKUP"
    m.at 32, :"UPROAR"
    m.at 35, :"DOUBLEEDGE"
  end
  pkmn.tutor_moves :"BODYSLAM", :"BULLDOZE", :"BULLETSEED", :"CHILLINGWATER", :"CURSE", :"DIG", :"DISARMINGVOICE", :"DOUBLEEDGE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"HELPINGHAND", :"HYPERVOICE", :"IRONHEAD", :"MUDSHOT", :"MUDSLAP", :"PLAYROUGH", :"PROTECT", :"RAINDANCE", :"REST", :"SEEDBOMB", :"SLEEPTALK", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERFANG", :"TAKEDOWN", :"THIEF", :"TRAILBLAZE", :"UPROAR", :"ZENHEADBUTT"
  pkmn.egg_moves :"ENDEAVOR", :"SPITUP", :"STOCKPILE", :"STUFFCHEEKS", :"SWALLOW"
end

GameData::SpeciesMetrics.define :"LECHONK" do |m|
  m.back_sprite 0, 55
  m.front_sprite -1, 33
  m.shadow_sprite 0, 0, 1
end