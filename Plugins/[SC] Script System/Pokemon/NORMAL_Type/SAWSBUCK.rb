#=============================================================================
# Sawsbuck - NORMAL Type
#=============================================================================

GameData::Species.define :"SAWSBUCK" do |pkmn|
  pkmn.name "Sawsbuck"
  pkmn.form_name "Spring Form"
  pkmn.types :"NORMAL", :"GRASS"
  pkmn.base_stats hp: 80, attack: 100, defense: 70,
                  sp_atk: 95, sp_def: 60, speed: 70
  pkmn.abilities :"CHLOROPHYLL", :"SAPSIPPER"
  pkmn.hidden_abilities :"SERENEGRACE"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 166
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.9
  pkmn.weight 92.5
  pkmn.category "Season"
  pkmn.pokedex_entry "The plants growing on its horns change according to the season. The leaders of the herd possess magnificent horns."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"MEGAHORN"
    m.at 1, :"TACKLE"
    m.at 1, :"CAMOUFLAGE"
    m.at 1, :"GROWL"
    m.at 1, :"SANDATTACK"
    m.at 4, :"GROWL"
    m.at 7, :"SANDATTACK"
    m.at 10, :"DOUBLEKICK"
    m.at 13, :"LEECHSEED"
    m.at 16, :"FEINTATTACK"
    m.at 20, :"TAKEDOWN"
    m.at 24, :"JUMPKICK"
    m.at 28, :"AROMATHERAPY"
    m.at 32, :"ENERGYBALL"
    m.at 36, :"CHARM"
    m.at 37, :"HORNLEECH"
    m.at 44, :"NATUREPOWER"
    m.at 52, :"DOUBLEEDGE"
    m.at 60, :"SOLARBEAM"
  end
  pkmn.tutor_moves :"ATTRACT", :"BOUNCE", :"CAPTIVATE", :"CUT", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"HIDDENPOWER", :"HYPERBEAM", :"LASTRESORT", :"LIGHTSCREEN", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKSMASH", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWBALL", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"THUNDERWAVE", :"TOXIC", :"WILDCHARGE", :"WORKUP", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"SAWSBUCK" do |m|
  m.back_sprite 1, 0
  m.front_sprite -3, 13
  m.shadow_sprite 0, 0, 2
end