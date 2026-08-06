#=============================================================================
# Eevee - NORMAL Type
#=============================================================================

GameData::Species.define :"EEVEE" do |pkmn|
  pkmn.name "Eevee"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 55, attack: 55, defense: 50,
                  sp_atk: 55, sp_def: 45, speed: 65
  pkmn.abilities :"RUNAWAY", :"ADAPTABILITY"
  pkmn.hidden_abilities :"ANTICIPATION"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 65
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 8995
  pkmn.height 0.3
  pkmn.weight 6.5
  pkmn.category "Evolution"
  pkmn.pokedex_entry "An Eevee has an unstable genetic makeup that suddenly mutates due to its environment. Radiation from various stones causes this Pokémon to evolve."
  pkmn.evs special_defense: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"HELPINGHAND"
    m.at 1, :"TACKLE"
    m.at 1, :"TAILWHIP"
    m.at 5, :"SANDATTACK"
    m.at 9, :"GROWL"
    m.at 13, :"QUICKATTACK"
    m.at 17, :"BITE"
    m.at 21, :"COVET"
    m.at 25, :"TAKEDOWN"
    m.at 29, :"CHARM"
    m.at 33, :"BATONPASS"
    m.at 37, :"DOUBLEEDGE"
    m.at 41, :"LASTRESORT"
    m.at 45, :"TRUMPCARD"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"CAPTIVATE", :"COVET", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FRUSTRATION", :"HEADBUTT", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERVOICE", :"IRONTAIL", :"LASTRESORT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TOXIC", :"WORKUP"
  pkmn.egg_moves :"CHARM", :"COVET", :"CURSE", :"DETECT", :"ENDURE", :"FAKETEARS", :"FLAIL", :"NATURALGIFT", :"STOREDPOWER", :"SYNCHRONOISE", :"TICKLE", :"WISH", :"YAWN"
end

GameData::SpeciesMetrics.define :"EEVEE" do |m|
  m.back_sprite -7, 0
  m.front_sprite 0, 20
  m.shadow_sprite 0, 0, 2
end