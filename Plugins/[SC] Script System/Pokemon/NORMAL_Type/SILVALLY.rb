#=============================================================================
# Silvally - NORMAL Type
#=============================================================================

GameData::Species.define :"SILVALLY" do |pkmn|
  pkmn.name "Silvally"
  pkmn.form_name "Type: Normal"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 95, attack: 95, defense: 95,
                  sp_atk: 95, sp_def: 95, speed: 95
  pkmn.abilities :"RKSSYSTEM"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Gray"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 285
  pkmn.catch_rate 3
  pkmn.happiness 0
  pkmn.hatch_steps 30720
  pkmn.height 2.3
  pkmn.weight 100.5
  pkmn.category "Synthetic"
  pkmn.pokedex_entry "Its trust in its partner is what awakens it. This Pokémon is capable of changing its type, a flexibility that is well displayed in battle."
  pkmn.evs hp: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 0, :"MULTIATTACK"
    m.at 1, :"EXPLOSION"
    m.at 1, :"THUNDERFANG"
    m.at 1, :"ICEFANG"
    m.at 1, :"FIREFANG"
    m.at 1, :"POISONFANG"
    m.at 1, :"IMPRISON"
    m.at 1, :"IRONHEAD"
    m.at 1, :"TACKLE"
    m.at 1, :"BITE"
    m.at 1, :"AERIALACE"
    m.at 1, :"SCARYFACE"
    m.at 15, :"DOUBLEHIT"
    m.at 20, :"METALSOUND"
    m.at 25, :"CRUSHCLAW"
    m.at 30, :"AIRSLASH"
    m.at 35, :"TRIATTACK"
    m.at 40, :"XSCISSOR"
    m.at 45, :"CRUNCH"
    m.at 50, :"TAKEDOWN"
    m.at 55, :"DOUBLEEDGE"
    m.at 60, :"PARTINGSHOT"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRSLASH", :"CONFIDE", :"CRUNCH", :"DEFOG", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONCLAW", :"ENDURE", :"EXPLOSION", :"FACADE", :"FIREFANG", :"FLAMECHARGE", :"FLAMETHROWER", :"FLASHCANNON", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSPLEDGE", :"HAIL", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"ICEFANG", :"ICYWIND", :"IMPRISON", :"IRONDEFENSE", :"IRONHEAD", :"LASERFOCUS", :"LASTRESORT", :"MAGICCOAT", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PAYBACK", :"PROTECT", :"PSYCHICFANGS", :"RAINDANCE", :"REST", :"RETURN", :"REVERSAL", :"ROAR", :"ROCKSLIDE", :"ROUND", :"SANDSTORM", :"SCARYFACE", :"SECRETPOWER", :"SELFDESTRUCT", :"SHADOWBALL", :"SHADOWCLAW", :"SIGNALBEAM", :"SLEEPTALK", :"SNARL", :"SNORE", :"STEELBEAM", :"STEELWING", :"SUBSTITUTE", :"SUNNYDAY", :"SURF", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TAILWIND", :"TERRAINPULSE", :"THUNDERBOLT", :"THUNDERFANG", :"THUNDERWAVE", :"TOXIC", :"TRIATTACK", :"UTURN", :"WORKUP", :"XSCISSOR", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"SILVALLY" do |m|
  m.back_sprite 3, 38
  m.front_sprite -3, 6
end