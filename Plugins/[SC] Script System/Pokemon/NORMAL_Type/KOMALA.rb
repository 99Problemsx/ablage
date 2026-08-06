#=============================================================================
# Komala - NORMAL Type
#=============================================================================

GameData::Species.define :"KOMALA" do |pkmn|
  pkmn.name "Komala"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 65, attack: 115, defense: 65,
                  sp_atk: 65, sp_def: 75, speed: 95
  pkmn.abilities :"COMATOSE"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 168
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.4
  pkmn.weight 19.9
  pkmn.category "Drowsing"
  pkmn.pokedex_entry "It remains asleep from birth to death as a result of the sedative properties of the leaves that form its diet."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"DEFENSECURL"
    m.at 1, :"ROLLOUT"
    m.at 6, :"STOCKPILE"
    m.at 6, :"SPITUP"
    m.at 6, :"SWALLOW"
    m.at 11, :"RAPIDSPIN"
    m.at 16, :"YAWN"
    m.at 21, :"SLAM"
    m.at 26, :"FLAIL"
    m.at 31, :"SUCKERPUNCH"
    m.at 36, :"PSYCHUP"
    m.at 41, :"WOODHAMMER"
    m.at 46, :"THRASH"
  end
  pkmn.tutor_moves :"ACROBATICS", :"ATTRACT", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CALMMIND", :"CAPTIVATE", :"CONFIDE", :"DOUBLETEAM", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FRUSTRATION", :"HIDDENPOWER", :"IRONHEAD", :"KNOCKOFF", :"LASTRESORT", :"LOWSWEEP", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"PSYCHUP", :"QUASH", :"RETURN", :"ROCKSLIDE", :"ROUND", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"SWORDSDANCE", :"TOXIC", :"UTURN", :"WORKUP", :"ZENHEADBUTT", :"TERABLAST"
  pkmn.egg_moves :"CHARM", :"PLAYROUGH", :"SING", :"WISH"
end

GameData::SpeciesMetrics.define :"KOMALA" do |m|
  m.back_sprite -1, 21
  m.front_sprite 3, 11
end