#=============================================================================
# Heracross - BUG Type
#=============================================================================

GameData::Species.define :"HERACROSS" do |pkmn|
  pkmn.name "Heracross"
  pkmn.types :"BUG", :"FIGHTING"
  pkmn.base_stats hp: 80, attack: 125, defense: 75,
                  sp_atk: 85, sp_def: 40, speed: 95
  pkmn.abilities :"SWARM", :"GUTS"
  pkmn.hidden_abilities :"MOXIE"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 175
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 1.5
  pkmn.weight 54.0
  pkmn.category "Single Horn"
  pkmn.pokedex_entry "They gather in forests seeking the sweet sap of trees. It is completely clad in a steel-hard shell. It is proud of its horn, which it uses to fling foes."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"NIGHTSLASH"
    m.at 1, :"TACKLE"
    m.at 1, :"LEER"
    m.at 1, :"HORNATTACK"
    m.at 1, :"ENDURE"
    m.at 7, :"FURYATTACK"
    m.at 10, :"AERIALACE"
    m.at 16, :"CHIPAWAY"
    m.at 19, :"COUNTER"
    m.at 25, :"BRICKBREAK"
    m.at 28, :"TAKEDOWN"
    m.at 34, :"CLOSECOMBAT"
    m.at 37, :"FEINT"
    m.at 43, :"REVERSAL"
    m.at 46, :"MEGAHORN"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"BUGBITE", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"CUT", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"IRONDEFENSE", :"KNOCKOFF", :"LOWKICK", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWCLAW", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STONEEDGE", :"STRENGTH", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"THIEF", :"TOXIC", :"VACUUMWAVE", :"VENOSHOCK", :"WORKUP"
  pkmn.egg_moves :"BIDE", :"DOUBLEEDGE", :"FLAIL", :"FOCUSPUNCH", :"HARDEN", :"MEGAHORN", :"PURSUIT", :"REVENGE", :"SEISMICTOSS"
end

GameData::SpeciesMetrics.define :"HERACROSS" do |m|
  m.back_sprite 0, 0
  m.front_sprite -2, 11
  m.shadow_sprite 0, 0, 2
end