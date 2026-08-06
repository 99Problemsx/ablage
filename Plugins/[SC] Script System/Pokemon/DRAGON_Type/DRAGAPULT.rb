#=============================================================================
# Dragapult - DRAGON Type
#=============================================================================

GameData::Species.define :"DRAGAPULT" do |pkmn|
  pkmn.name "Dragapult"
  pkmn.types :"DRAGON", :"GHOST"
  pkmn.base_stats hp: 88, attack: 120, defense: 75,
                  sp_atk: 142, sp_def: 100, speed: 75
  pkmn.abilities :"CLEARBODY", :"INFILTRATOR"
  pkmn.hidden_abilities :"CURSEDBODY"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Green"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 300
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 10240
  pkmn.height 3.0
  pkmn.weight 50.0
  pkmn.category "Stealth"
  pkmn.pokedex_entry "When it isn't battling, it keeps Dreepy in the holes on its horns. Once a fight starts, it launches the Dreepy like supersonic missiles."
  pkmn.evs speed: 3
  pkmn.egg_groups :"Amorphous", :"Dragon"

  pkmn.moves do |m|
    m.at 0, :"DRAGONDARTS"
    m.at 1, :"DRAGONBREATH"
    m.at 1, :"SUCKERPUNCH"
    m.at 1, :"ASTONISH"
    m.at 1, :"INFESTATION"
    m.at 1, :"QUICKATTACK"
    m.at 1, :"BITE"
    m.at 6, :"LOCKON"
    m.at 12, :"ASSURANCE"
    m.at 18, :"HEX"
    m.at 24, :"AGILITY"
    m.at 30, :"DOUBLEHIT"
    m.at 36, :"UTURN"
    m.at 42, :"DRAGONDANCE"
    m.at 48, :"PHANTOMFORCE"
    m.at 54, :"TAKEDOWN"
    m.at 63, :"DRAGONRUSH"
    m.at 70, :"DOUBLEEDGE"
    m.at 78, :"LASTRESORT"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AGILITY", :"ALLYSWITCH", :"ASSURANCE", :"ATTRACT", :"BATONPASS", :"BEATUP", :"BODYSLAM", :"BREAKINGSWIPE", :"BRINE", :"CAPTIVATE", :"CONFIDE", :"DIVE", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONCLAW", :"DRAGONDANCE", :"DRAGONPULSE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FLY", :"FRUSTRATION", :"GIGAIMPACT", :"HELPINGHAND", :"HEX", :"HIDDENPOWER", :"HYDROPUMP", :"HYPERBEAM", :"LIGHTSCREEN", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PHANTOMFORCE", :"PROTECT", :"PSYCHICFANGS", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SCALD", :"SECRETPOWER", :"SHADOWBALL", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STEELWING", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"SWIFT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"TRIATTACK", :"UTURN", :"WILLOWISP", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"DRAGAPULT" do |m|
  m.back_sprite 1, 54
  m.front_sprite 0, 6
  m.shadow_sprite 0, 0, -1
end