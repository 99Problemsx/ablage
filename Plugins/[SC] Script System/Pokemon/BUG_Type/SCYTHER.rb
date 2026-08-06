#=============================================================================
# Scyther - BUG Type
#=============================================================================

GameData::Species.define :"SCYTHER" do |pkmn|
  pkmn.name "Scyther"
  pkmn.types :"BUG", :"FLYING"
  pkmn.base_stats hp: 70, attack: 110, defense: 80,
                  sp_atk: 105, sp_def: 55, speed: 80
  pkmn.abilities :"SWARM", :"TECHNICIAN"
  pkmn.hidden_abilities :"STEADFAST"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"MultiWinged"
  pkmn.base_exp 100
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 1.5
  pkmn.weight 56.0
  pkmn.category "Mantis"
  pkmn.pokedex_entry "Its blindingly fast speed adds to the sharpness of its twin forearm scythes. The scythes can slice through thick logs in one wicked stroke."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"VACUUMWAVE"
    m.at 1, :"QUICKATTACK"
    m.at 1, :"LEER"
    m.at 5, :"FOCUSENERGY"
    m.at 9, :"PURSUIT"
    m.at 13, :"FALSESWIPE"
    m.at 17, :"AGILITY"
    m.at 21, :"WINGATTACK"
    m.at 25, :"FURYCUTTER"
    m.at 29, :"SLASH"
    m.at 33, :"RAZORWIND"
    m.at 37, :"DOUBLETEAM"
    m.at 41, :"XSCISSOR"
    m.at 45, :"NIGHTSLASH"
    m.at 49, :"DOUBLEHIT"
    m.at 53, :"AIRSLASH"
    m.at 57, :"SWORDSDANCE"
    m.at 61, :"FEINT"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BRICKBREAK", :"BUGBITE", :"CAPTIVATE", :"COUNTER", :"CUT", :"DEFOG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"KNOCKOFF", :"LIGHTSCREEN", :"MIMIC", :"NATURALGIFT", :"OMINOUSWIND", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSMASH", :"ROOST", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SILVERWIND", :"SLEEPTALK", :"SNORE", :"STEELWING", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TAILWIND", :"THIEF", :"TOXIC", :"UTURN", :"XSCISSOR"
  pkmn.egg_moves :"BATONPASS", :"BUGBUZZ", :"COUNTER", :"DEFOG", :"ENDURE", :"NIGHTSLASH", :"RAZORWIND", :"REVERSAL", :"SILVERWIND", :"STEELWING"
end

GameData::SpeciesMetrics.define :"SCYTHER" do |m|
  m.back_sprite -5, 0
  m.front_sprite -9, 9
  m.shadow_sprite 0, 0, 3
end