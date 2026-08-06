#=============================================================================
# Skiddo - GRASS Type
#=============================================================================

GameData::Species.define :"SKIDDO" do |pkmn|
  pkmn.name "Skiddo"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 66, attack: 65, defense: 48,
                  sp_atk: 52, sp_def: 62, speed: 57
  pkmn.abilities :"SAPSIPPER"
  pkmn.hidden_abilities :"GRASSPELT"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 70
  pkmn.catch_rate 200
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.9
  pkmn.weight 31.0
  pkmn.category "Mount"
  pkmn.pokedex_entry "If it has sunshine and water, it doesn't need to eat, because it can generate energy from the leaves on its back."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"GROWTH"
    m.at 7, :"VINEWHIP"
    m.at 9, :"TAILWHIP"
    m.at 12, :"LEECHSEED"
    m.at 13, :"RAZORLEAF"
    m.at 16, :"WORRYSEED"
    m.at 20, :"SYNTHESIS"
    m.at 22, :"TAKEDOWN"
    m.at 26, :"BULLDOZE"
    m.at 30, :"SEEDBOMB"
    m.at 34, :"BULKUP"
    m.at 38, :"DOUBLEEDGE"
    m.at 42, :"HORNLEECH"
    m.at 45, :"LEAFBLADE"
    m.at 50, :"MILKDRINK"
  end
  pkmn.tutor_moves :"ATTRACT", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"CONFIDE", :"DIG", :"DOUBLETEAM", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FRUSTRATION", :"GIGADRAIN", :"GRASSKNOT", :"HIDDENPOWER", :"IRONTAIL", :"MIMIC", :"NATURALGIFT", :"NATUREPOWER", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SURF", :"SWAGGER", :"SYNTHESIS", :"TOXIC", :"WILDCHARGE", :"WORKUP", :"WORRYSEED", :"ZENHEADBUTT", :"TERABLAST"
  pkmn.egg_moves :"DEFENSECURL", :"GRASSYTERRAIN", :"MILKDRINK", :"ROLLOUT"
end

GameData::SpeciesMetrics.define :"SKIDDO" do |m|
  m.back_sprite 5, 18
  m.front_sprite 0, 2
end