#=============================================================================
# Gogoat - GRASS Type
#=============================================================================

GameData::Species.define :"GOGOAT" do |pkmn|
  pkmn.name "Gogoat"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 123, attack: 100, defense: 62,
                  sp_atk: 68, sp_def: 97, speed: 81
  pkmn.abilities :"SAPSIPPER"
  pkmn.hidden_abilities :"GRASSPELT"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 186
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.7
  pkmn.weight 91.0
  pkmn.category "Mount"
  pkmn.pokedex_entry "It can tell how its trainer is feeling by subtle shifts in the grip on its horns. This empathetic sense lets them run as if one being."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 0, :"AERIALACE"
    m.at 1, :"EARTHQUAKE"
    m.at 1, :"TACKLE"
    m.at 1, :"GROWTH"
    m.at 1, :"VINEWHIP"
    m.at 1, :"TAILWHIP"
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
    m.at 40, :"DOUBLEEDGE"
    m.at 47, :"HORNLEECH"
    m.at 55, :"LEAFBLADE"
    m.at 58, :"MILKDRINK"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BOUNCE", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"CONFIDE", :"DIG", :"DOUBLETEAM", :"EARTHQUAKE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"HIDDENPOWER", :"HYPERBEAM", :"IRONTAIL", :"MIMIC", :"NATURALGIFT", :"NATUREPOWER", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STOMPINGTANTRUM", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SURF", :"SWAGGER", :"SYNTHESIS", :"TOXIC", :"WILDCHARGE", :"WORKUP", :"WORRYSEED", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"GOGOAT" do |m|
  m.back_sprite 0, 24
  m.front_sprite 0, 18
end