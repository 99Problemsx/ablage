#=============================================================================
# Type: Null - NORMAL Type
#=============================================================================

GameData::Species.define :"TYPENULL" do |pkmn|
  pkmn.name "Type: Null"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 95, attack: 95, defense: 95,
                  sp_atk: 59, sp_def: 95, speed: 95
  pkmn.abilities :"BATTLEARMOR"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Gray"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 107
  pkmn.catch_rate 3
  pkmn.happiness 0
  pkmn.hatch_steps 30720
  pkmn.height 1.9
  pkmn.weight 120.5
  pkmn.category "Synthetic"
  pkmn.pokedex_entry "The heavy control mask it wears suppresses its intrinsic capabilities. This Pokémon has some hidden special power."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"IMPRISON"
    m.at 5, :"AERIALACE"
    m.at 10, :"SCARYFACE"
    m.at 15, :"DOUBLEHIT"
    m.at 20, :"METALSOUND"
    m.at 25, :"CRUSHCLAW"
    m.at 30, :"AIRSLASH"
    m.at 35, :"TRIATTACK"
    m.at 40, :"XSCISSOR"
    m.at 45, :"IRONHEAD"
    m.at 50, :"TAKEDOWN"
    m.at 55, :"DOUBLEEDGE"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRSLASH", :"CONFIDE", :"DOUBLETEAM", :"DRAGONCLAW", :"ENDURE", :"FACADE", :"FLAMECHARGE", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HIDDENPOWER", :"HYPERBEAM", :"ICYWIND", :"IMPRISON", :"IRONDEFENSE", :"IRONHEAD", :"LASTRESORT", :"MAGICCOAT", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROUND", :"SANDSTORM", :"SCARYFACE", :"SECRETPOWER", :"SHADOWCLAW", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TERRAINPULSE", :"THUNDERWAVE", :"TOXIC", :"TRIATTACK", :"UTURN", :"WORKUP", :"XSCISSOR", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"TYPENULL" do |m|
  m.back_sprite 2, 50
  m.front_sprite 1, 15
end