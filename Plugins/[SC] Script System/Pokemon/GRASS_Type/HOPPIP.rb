#=============================================================================
# Hoppip - GRASS Type
#=============================================================================

GameData::Species.define :"HOPPIP" do |pkmn|
  pkmn.name "Hoppip"
  pkmn.types :"GRASS", :"FLYING"
  pkmn.base_stats hp: 35, attack: 35, defense: 40,
                  sp_atk: 50, sp_def: 35, speed: 55
  pkmn.abilities :"CHLOROPHYLL", :"LEAFGUARD"
  pkmn.hidden_abilities :"INFILTRATOR"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Pink"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 50
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.4
  pkmn.weight 0.5
  pkmn.category "Cottonweed"
  pkmn.pokedex_entry "This Pokémon drifts and floats with the wind. If it senses the approach of strong winds, a Hoppip links leaves with others to prepare against being blown away."
  pkmn.evs special_defense: 1
  pkmn.egg_groups :"Fairy", :"Grass"

  pkmn.moves do |m|
    m.at 1, :"SPLASH"
    m.at 4, :"SYNTHESIS"
    m.at 7, :"TAILWHIP"
    m.at 10, :"TACKLE"
    m.at 12, :"POISONPOWDER"
    m.at 14, :"STUNSPORE"
    m.at 16, :"SLEEPPOWDER"
    m.at 19, :"BULLETSEED"
    m.at 22, :"LEECHSEED"
    m.at 25, :"MEGADRAIN"
    m.at 28, :"ACROBATICS"
    m.at 31, :"RAGEPOWDER"
    m.at 34, :"COTTONSPORE"
    m.at 37, :"UTURN"
    m.at 40, :"WORRYSEED"
    m.at 43, :"GIGADRAIN"
    m.at 46, :"BOUNCE"
    m.at 49, :"MEMENTO"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"ATTRACT", :"BOUNCE", :"BULLETSEED", :"CAPTIVATE", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGADRAIN", :"GRASSKNOT", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"PSYCHUP", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SILVERWIND", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"TOXIC", :"UTURN", :"WORRYSEED"
  pkmn.egg_moves :"AMNESIA", :"AROMATHERAPY", :"CONFUSION", :"COTTONGUARD", :"DOUBLEEDGE", :"ENCORE", :"ENDURE", :"HELPINGHAND", :"SEEDBOMB", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"HOPPIP" do |m|
  m.back_sprite 9, 0
  m.front_sprite 3, -1
  m.shadow_sprite 0, 0, 1
end