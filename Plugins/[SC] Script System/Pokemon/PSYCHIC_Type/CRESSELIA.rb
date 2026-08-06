#=============================================================================
# Cresselia - PSYCHIC Type
#=============================================================================

GameData::Species.define :"CRESSELIA" do |pkmn|
  pkmn.name "Cresselia"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 120, attack: 70, defense: 120,
                  sp_atk: 85, sp_def: 75, speed: 130
  pkmn.abilities :"LEVITATE"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Yellow"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 270
  pkmn.catch_rate 3
  pkmn.happiness 100
  pkmn.hatch_steps 30840
  pkmn.height 1.5
  pkmn.weight 85.6
  pkmn.category "Lunar"
  pkmn.pokedex_entry "Shiny particles are released from its wings like a veil. It is said to represent the crescent moon."
  pkmn.evs special_defense: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"CONFUSION"
    m.at 1, :"DOUBLETEAM"
    m.at 11, :"SAFEGUARD"
    m.at 20, :"MIST"
    m.at 29, :"AURORABEAM"
    m.at 38, :"FUTURESIGHT"
    m.at 47, :"SLASH"
    m.at 57, :"MOONLIGHT"
    m.at 66, :"PSYCHOCUT"
    m.at 75, :"PSYCHOSHIFT"
    m.at 84, :"LUNARDANCE"
    m.at 93, :"PSYCHIC"
  end
  pkmn.tutor_moves :"ATTRACT", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"DOUBLETEAM", :"DREAMEATER", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"GRASSKNOT", :"GRAVITY", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGICROOM", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TELEKINESIS", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"TRICKROOM", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"CRESSELIA" do |m|
  m.back_sprite -5, 0
  m.front_sprite 3, -5
  m.shadow_sprite 0, 0, 2
end