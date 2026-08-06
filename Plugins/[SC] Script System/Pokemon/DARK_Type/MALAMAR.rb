#=============================================================================
# Malamar - DARK Type
#=============================================================================

GameData::Species.define :"MALAMAR" do |pkmn|
  pkmn.name "Malamar"
  pkmn.types :"DARK", :"PSYCHIC"
  pkmn.base_stats hp: 86, attack: 92, defense: 88,
                  sp_atk: 73, sp_def: 68, speed: 75
  pkmn.abilities :"CONTRARY", :"SUCTIONCUPS"
  pkmn.hidden_abilities :"INFILTRATOR"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 169
  pkmn.catch_rate 80
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.5
  pkmn.weight 47.0
  pkmn.category "Overturning"
  pkmn.pokedex_entry "It lures prey close with hypnotic motions, then wraps its tentacles around it before finishing it off with digestive fluids."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Water1", :"Water2"

  pkmn.moves do |m|
    m.at 1, :"REVERSAL"
    m.at 1, :"PECK"
    m.at 1, :"TACKLE"
    m.at 1, :"HYPNOSIS"
    m.at 1, :"WRAP"
    m.at 9, :"PAYBACK"
    m.at 12, :"PLUCK"
    m.at 15, :"PSYBEAM"
    m.at 18, :"SWAGGER"
    m.at 21, :"SLASH"
    m.at 24, :"NIGHTSLASH"
    m.at 27, :"PSYCHOCUT"
    m.at 33, :"SWITCHEROO"
    m.at 37, :"FOULPLAY"
    m.at 42, :"TOPSYTURVY"
    m.at 47, :"SUPERPOWER"
  end
  pkmn.tutor_moves :"AERIALACE", :"ALLYSWITCH", :"ATTRACT", :"BATONPASS", :"BIND", :"BLOCK", :"BRUTALSWING", :"CALMMIND", :"CAPTIVATE", :"CONFIDE", :"CUT", :"DARKPULSE", :"DOUBLETEAM", :"EMBARGO", :"ENDURE", :"EXPANDINGFORCE", :"FACADE", :"FAKETEARS", :"FLAMETHROWER", :"FLASH", :"FLING", :"FOULPLAY", :"FRUSTRATION", :"FUTURESIGHT", :"GIGAIMPACT", :"GUARDSWAP", :"HIDDENPOWER", :"HYPERBEAM", :"KNOCKOFF", :"LASHOUT", :"LIGHTSCREEN", :"LIQUIDATION", :"MIMIC", :"NASTYPLOT", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"PSYCHOCUT", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"REFLECT", :"REST", :"RETALIATE", :"RETURN", :"REVERSAL", :"ROCKSLIDE", :"ROLEPLAY", :"ROUND", :"SCARYFACE", :"SECRETPOWER", :"SIGNALBEAM", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SPITE", :"STOREDPOWER", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"TAUNT", :"TELEKINESIS", :"THIEF", :"THROATCHOP", :"THUNDERBOLT", :"TORMENT", :"TOXIC", :"TRICKROOM", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"MALAMAR" do |m|
  m.back_sprite 0, 46
  m.front_sprite 1, 11
end

# Form 1 - Mega Malamar
GameData::Species.define :"MALAMAR_1" do |pkmn|
  pkmn.species :"MALAMAR"
  pkmn.form 1
  pkmn.name "Malamar"
  pkmn.form_name "Mega Malamar"
  pkmn.types :"DARK", :"PSYCHIC"
  pkmn.base_stats hp: 86, attack: 102, defense: 88,
                  sp_atk: 98, sp_def: 120, speed: 88
  pkmn.abilities :"CONTRARY", :"SUCTIONCUPS"
  pkmn.hidden_abilities :"INFILTRATOR"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 169
  pkmn.catch_rate 80
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 2.9
  pkmn.weight 69.8
  pkmn.category "Overturning"
  pkmn.pokedex_entry "It uses its colorful lights to overwrite the personalities and memories of others—and to control them."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Water1", :"Water2"

  pkmn.moves do |m|
    m.at 1, :"REVERSAL"
    m.at 1, :"PECK"
    m.at 1, :"TACKLE"
    m.at 1, :"HYPNOSIS"
    m.at 1, :"WRAP"
    m.at 9, :"PAYBACK"
    m.at 12, :"PLUCK"
    m.at 15, :"PSYBEAM"
    m.at 18, :"SWAGGER"
    m.at 21, :"SLASH"
    m.at 24, :"NIGHTSLASH"
    m.at 27, :"PSYCHOCUT"
    m.at 33, :"SWITCHEROO"
    m.at 37, :"FOULPLAY"
    m.at 42, :"TOPSYTURVY"
    m.at 47, :"SUPERPOWER"
  end
  pkmn.tutor_moves :"AERIALACE", :"ALLYSWITCH", :"ATTRACT", :"BATONPASS", :"BIND", :"BLOCK", :"BRUTALSWING", :"CALMMIND", :"CAPTIVATE", :"CONFIDE", :"CUT", :"DARKPULSE", :"DOUBLETEAM", :"EMBARGO", :"ENDURE", :"EXPANDINGFORCE", :"FACADE", :"FAKETEARS", :"FLAMETHROWER", :"FLASH", :"FLING", :"FOULPLAY", :"FRUSTRATION", :"FUTURESIGHT", :"GIGAIMPACT", :"GUARDSWAP", :"HIDDENPOWER", :"HYPERBEAM", :"KNOCKOFF", :"LASHOUT", :"LIGHTSCREEN", :"LIQUIDATION", :"MIMIC", :"NASTYPLOT", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"PSYCHOCUT", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"REFLECT", :"REST", :"RETALIATE", :"RETURN", :"REVERSAL", :"ROCKSLIDE", :"ROLEPLAY", :"ROUND", :"SCARYFACE", :"SECRETPOWER", :"SIGNALBEAM", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SPITE", :"STOREDPOWER", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"TAUNT", :"TELEKINESIS", :"THIEF", :"THROATCHOP", :"THUNDERBOLT", :"TORMENT", :"TOXIC", :"TRICKROOM", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"MALAMAR_1" do |m|
  m.back_sprite 0, 46
  m.front_sprite 1, 11
end