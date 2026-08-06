#=============================================================================
# Corviknight - FLYING Type
#=============================================================================

GameData::Species.define :"CORVIKNIGHT" do |pkmn|
  pkmn.name "Corviknight"
  pkmn.types :"FLYING", :"STEEL"
  pkmn.base_stats hp: 98, attack: 87, defense: 105,
                  sp_atk: 67, sp_def: 53, speed: 85
  pkmn.abilities :"PRESSURE", :"UNNERVE"
  pkmn.hidden_abilities :"MIRRORARMOR"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Purple"
  pkmn.shape :"Winged"
  pkmn.base_exp 248
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 2.2
  pkmn.weight 75.0
  pkmn.category "Raven"
  pkmn.pokedex_entry "This Pokémon reigns supreme in the skies. The black luster of its steel body could drive terror into the heart of any foe."
  pkmn.evs defense: 3
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 0, :"STEELWING"
    m.at 1, :"IRONDEFENSE"
    m.at 1, :"METALSOUND"
    m.at 1, :"PECK"
    m.at 1, :"LEER"
    m.at 1, :"POWERTRIP"
    m.at 1, :"HONECLAWS"
    m.at 12, :"FURYATTACK"
    m.at 16, :"PLUCK"
    m.at 22, :"TAUNT"
    m.at 28, :"SCARYFACE"
    m.at 34, :"DRILLPECK"
    m.at 42, :"SWAGGER"
    m.at 50, :"BRAVEBIRD"
  end
  pkmn.tutor_moves :"AGILITY", :"AIRSLASH", :"ASSURANCE", :"ATTRACT", :"BODYPRESS", :"BODYSLAM", :"BRAVEBIRD", :"BULKUP", :"CAPTIVATE", :"CONFIDE", :"DOUBLETEAM", :"DUALWINGBEAT", :"ENDURE", :"FACADE", :"FAKETEARS", :"FLASHCANNON", :"FLY", :"FOCUSENERGY", :"FRUSTRATION", :"GIGAIMPACT", :"HEAVYSLAM", :"HIDDENPOWER", :"HURRICANE", :"HYPERBEAM", :"IRONDEFENSE", :"IRONHEAD", :"LIGHTSCREEN", :"MIMIC", :"NASTYPLOT", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"REFLECT", :"REST", :"RETALIATE", :"RETURN", :"REVENGE", :"REVERSAL", :"ROUND", :"SCARYFACE", :"SCREECH", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STEELBEAM", :"STEELWING", :"SUBSTITUTE", :"SWAGGER", :"SWIFT", :"TAUNT", :"THIEF", :"TOXIC", :"UTURN", :"WORKUP", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"CORVIKNIGHT" do |m|
  m.back_sprite 3, 29
  m.front_sprite 2, 11
end