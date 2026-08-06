#=============================================================================
# Stufful - NORMAL Type
#=============================================================================

GameData::Species.define :"STUFFUL" do |pkmn|
  pkmn.name "Stufful"
  pkmn.types :"NORMAL", :"FIGHTING"
  pkmn.base_stats hp: 70, attack: 75, defense: 50,
                  sp_atk: 50, sp_def: 45, speed: 50
  pkmn.abilities :"FLUFFY", :"KLUTZ"
  pkmn.hidden_abilities :"CUTECHARM"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Pink"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 68
  pkmn.catch_rate 140
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 0.5
  pkmn.weight 6.8
  pkmn.category "Flailing"
  pkmn.pokedex_entry "Despite its adorable appearance, when it gets angry and flails about, its arms and legs could knock a pro wrestler sprawling."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"LEER"
    m.at 4, :"BABYDOLLEYES"
    m.at 8, :"PAYBACK"
    m.at 12, :"BRUTALSWING"
    m.at 16, :"ENDURE"
    m.at 20, :"STRENGTH"
    m.at 24, :"TAKEDOWN"
    m.at 28, :"FLAIL"
    m.at 32, :"HAMMERARM"
    m.at 36, :"THRASH"
    m.at 40, :"PAINSPLIT"
    m.at 44, :"DOUBLEEDGE"
    m.at 48, :"SUPERPOWER"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BIND", :"BRICKBREAK", :"BRUTALSWING", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"CHARM", :"COACHING", :"CONFIDE", :"DOUBLETEAM", :"DUALCHOP", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"HIDDENPOWER", :"ICEPUNCH", :"IRONHEAD", :"LOWSWEEP", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"NATURALGIFT", :"PAINSPLIT", :"PAYBACK", :"PROTECT", :"REST", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUPERPOWER", :"SWAGGER", :"SWORDSDANCE", :"TAUNT", :"THUNDERPUNCH", :"TOXIC", :"WORKUP", :"ZENHEADBUTT", :"TERABLAST"
  pkmn.egg_moves :"DEFENSECURL", :"FORCEPALM", :"ROLLOUT", :"STOMP"
end

GameData::SpeciesMetrics.define :"STUFFUL" do |m|
  m.back_sprite 8, 53
  m.front_sprite 1, 4
end