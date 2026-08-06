#=============================================================================
# Deerling - NORMAL Type
#=============================================================================

GameData::Species.define :"DEERLING" do |pkmn|
  pkmn.name "Deerling"
  pkmn.form_name "Spring Form"
  pkmn.types :"NORMAL", :"GRASS"
  pkmn.base_stats hp: 60, attack: 60, defense: 50,
                  sp_atk: 75, sp_def: 40, speed: 50
  pkmn.abilities :"CHLOROPHYLL", :"SAPSIPPER"
  pkmn.hidden_abilities :"SERENEGRACE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Pink"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 67
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.6
  pkmn.weight 19.5
  pkmn.category "Season"
  pkmn.pokedex_entry "The turning of the seasons changes the color and scent of this Pokémon's fur. People use it to mark the seasons."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"CAMOUFLAGE"
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
    m.at 41, :"NATUREPOWER"
    m.at 46, :"DOUBLEEDGE"
    m.at 51, :"SOLARBEAM"
  end
  pkmn.tutor_moves :"ATTRACT", :"BOUNCE", :"CAPTIVATE", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGADRAIN", :"GRASSKNOT", :"HIDDENPOWER", :"LASTRESORT", :"LIGHTSCREEN", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWBALL", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SYNTHESIS", :"THUNDERWAVE", :"TOXIC", :"WILDCHARGE", :"WORKUP", :"WORRYSEED"
  pkmn.egg_moves :"AGILITY", :"BATONPASS", :"FAKETEARS", :"GRASSWHISTLE", :"NATURALGIFT", :"ODORSLEUTH", :"SLEEPTALK", :"SYNTHESIS", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"DEERLING" do |m|
  m.back_sprite -3, 0
  m.front_sprite -1, 27
  m.shadow_sprite 0, 0, 1
end