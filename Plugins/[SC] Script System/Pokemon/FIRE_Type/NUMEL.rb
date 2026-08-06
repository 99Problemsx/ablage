#=============================================================================
# Numel - FIRE Type
#=============================================================================

GameData::Species.define :"NUMEL" do |pkmn|
  pkmn.name "Numel"
  pkmn.types :"FIRE", :"GROUND"
  pkmn.base_stats hp: 60, attack: 60, defense: 40,
                  sp_atk: 35, sp_def: 65, speed: 45
  pkmn.abilities :"OBLIVIOUS", :"SIMPLE"
  pkmn.hidden_abilities :"OWNTEMPO"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 61
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.7
  pkmn.weight 24.0
  pkmn.category "Numb"
  pkmn.pokedex_entry "A Numel stores boiling magma in the hump on its back. It is a hardy Pokémon that can transport a 220-pound load. It has served humans at work since long ago."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"GROWL"
    m.at 1, :"TACKLE"
    m.at 5, :"EMBER"
    m.at 8, :"MAGNITUDE"
    m.at 12, :"FOCUSENERGY"
    m.at 15, :"FLAMEBURST"
    m.at 19, :"AMNESIA"
    m.at 22, :"LAVAPLUME"
    m.at 26, :"EARTHPOWER"
    m.at 29, :"CURSE"
    m.at 31, :"TAKEDOWN"
    m.at 36, :"YAWN"
    m.at 40, :"EARTHQUAKE"
    m.at 43, :"FLAMETHROWER"
    m.at 47, :"DOUBLEEDGE"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ATTRACT", :"BODYSLAM", :"BULLDOZE", :"CAPTIVATE", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMECHARGE", :"FLAMETHROWER", :"FRUSTRATION", :"HEADBUTT", :"HEATWAVE", :"HIDDENPOWER", :"INCINERATE", :"IRONHEAD", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OVERHEAT", :"PROTECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STEALTHROCK", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TOXIC", :"WILLOWISP"
  pkmn.egg_moves :"ANCIENTPOWER", :"BODYSLAM", :"DEFENSECURL", :"ENDURE", :"HEATWAVE", :"HOWL", :"IRONHEAD", :"MUDBOMB", :"ROLLOUT", :"SCARYFACE", :"SPITUP", :"STOCKPILE", :"STOMP", :"SWALLOW", :"YAWN"
end

GameData::SpeciesMetrics.define :"NUMEL" do |m|
  m.back_sprite 2, 0
  m.front_sprite 2, 19
  m.shadow_sprite 0, 0, 2
end