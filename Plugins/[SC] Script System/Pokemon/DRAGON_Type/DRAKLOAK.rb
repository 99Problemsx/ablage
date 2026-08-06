#=============================================================================
# Drakloak - DRAGON Type
#=============================================================================

GameData::Species.define :"DRAKLOAK" do |pkmn|
  pkmn.name "Drakloak"
  pkmn.types :"DRAGON", :"GHOST"
  pkmn.base_stats hp: 68, attack: 80, defense: 50,
                  sp_atk: 102, sp_def: 60, speed: 50
  pkmn.abilities :"CLEARBODY", :"INFILTRATOR"
  pkmn.hidden_abilities :"CURSEDBODY"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Green"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 144
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 10240
  pkmn.height 1.4
  pkmn.weight 11.0
  pkmn.category "Caretaker"
  pkmn.pokedex_entry "It's capable of flying faster than 120 mph. It battles alongside Dreepy and dotes on them until they successfully evolve."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Amorphous", :"Dragon"

  pkmn.moves do |m|
    m.at 0, :"DRAGONPULSE"
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
    m.at 61, :"DRAGONRUSH"
    m.at 66, :"DOUBLEEDGE"
    m.at 72, :"LASTRESORT"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AGILITY", :"ALLYSWITCH", :"ASSURANCE", :"ATTRACT", :"BATONPASS", :"BEATUP", :"BREAKINGSWIPE", :"BRINE", :"CAPTIVATE", :"CONFIDE", :"DIVE", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONDANCE", :"DRAGONPULSE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FRUSTRATION", :"HELPINGHAND", :"HEX", :"HIDDENPOWER", :"HYDROPUMP", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PHANTOMFORCE", :"PROTECT", :"PSYCHICFANGS", :"REST", :"RETURN", :"ROUND", :"SCALD", :"SECRETPOWER", :"SHADOWBALL", :"SLEEPTALK", :"SNORE", :"STEELWING", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"SWIFT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"UTURN", :"WILLOWISP", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"DRAKLOAK" do |m|
  m.back_sprite 2, 49
  m.front_sprite 2, 2
  m.shadow_sprite 0, 0, -1
end