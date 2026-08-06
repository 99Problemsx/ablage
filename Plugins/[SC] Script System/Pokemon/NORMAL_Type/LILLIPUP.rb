#=============================================================================
# Lillipup - NORMAL Type
#=============================================================================

GameData::Species.define :"LILLIPUP" do |pkmn|
  pkmn.name "Lillipup"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 45, attack: 60, defense: 45,
                  sp_atk: 55, sp_def: 25, speed: 45
  pkmn.abilities :"VITALSPIRIT", :"PICKUP"
  pkmn.hidden_abilities :"RUNAWAY"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 55
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.4
  pkmn.weight 4.1
  pkmn.category "Puppy"
  pkmn.pokedex_entry "The long hair around its face provides an amazing radar that lets it sense subtle changes in its surroundings."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"LEER"
    m.at 1, :"TACKLE"
    m.at 5, :"ODORSLEUTH"
    m.at 8, :"BITE"
    m.at 12, :"HELPINGHAND"
    m.at 15, :"TAKEDOWN"
    m.at 19, :"WORKUP"
    m.at 22, :"CRUNCH"
    m.at 26, :"ROAR"
    m.at 29, :"RETALIATE"
    m.at 33, :"REVERSAL"
    m.at 36, :"LASTRESORT"
    m.at 40, :"GIGAIMPACT"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"CAPTIVATE", :"COVET", :"DIG", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GIGAIMPACT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERVOICE", :"LASTRESORT", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SLEEPTALK", :"SNARL", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"UPROAR", :"WILDCHARGE", :"WORKUP"
  pkmn.egg_moves :"CHARM", :"ENDURE", :"FIREFANG", :"HOWL", :"ICEFANG", :"LICK", :"MUDSLAP", :"PURSUIT", :"SANDATTACK", :"THUNDERFANG", :"YAWN"
end

GameData::SpeciesMetrics.define :"LILLIPUP" do |m|
  m.back_sprite 1, 0
  m.front_sprite -2, 27
  m.shadow_sprite 0, 0, 2
end