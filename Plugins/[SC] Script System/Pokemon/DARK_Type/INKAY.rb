#=============================================================================
# Inkay - DARK Type
#=============================================================================

GameData::Species.define :"INKAY" do |pkmn|
  pkmn.name "Inkay"
  pkmn.types :"DARK", :"PSYCHIC"
  pkmn.base_stats hp: 53, attack: 54, defense: 53,
                  sp_atk: 45, sp_def: 37, speed: 46
  pkmn.abilities :"CONTRARY", :"SUCTIONCUPS"
  pkmn.hidden_abilities :"INFILTRATOR"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"Multiped"
  pkmn.base_exp 58
  pkmn.catch_rate 190
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.4
  pkmn.weight 3.5
  pkmn.category "Revolving"
  pkmn.pokedex_entry "It flashes the light-emitting spots on its body, which drains its opponent's will to fight. It takes the opportunity to scuttle away and hide."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Water1", :"Water2"

  pkmn.moves do |m|
    m.at 1, :"PECK"
    m.at 1, :"TACKLE"
    m.at 3, :"HYPNOSIS"
    m.at 6, :"WRAP"
    m.at 9, :"PAYBACK"
    m.at 12, :"PLUCK"
    m.at 15, :"PSYBEAM"
    m.at 18, :"SWAGGER"
    m.at 21, :"SLASH"
    m.at 24, :"NIGHTSLASH"
    m.at 27, :"PSYCHOCUT"
    m.at 31, :"SWITCHEROO"
    m.at 33, :"FOULPLAY"
    m.at 36, :"TOPSYTURVY"
    m.at 39, :"SUPERPOWER"
  end
  pkmn.tutor_moves :"AERIALACE", :"ALLYSWITCH", :"ATTRACT", :"BATONPASS", :"BIND", :"CALMMIND", :"CAPTIVATE", :"CONFIDE", :"CUT", :"DARKPULSE", :"DOUBLETEAM", :"EMBARGO", :"ENDURE", :"EXPANDINGFORCE", :"FACADE", :"FAKETEARS", :"FLAMETHROWER", :"FLASH", :"FLING", :"FOULPLAY", :"FRUSTRATION", :"FUTURESIGHT", :"GUARDSWAP", :"HIDDENPOWER", :"KNOCKOFF", :"LASHOUT", :"LIGHTSCREEN", :"LIQUIDATION", :"MIMIC", :"NASTYPLOT", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"PSYCHOCUT", :"PSYCHUP", :"RAINDANCE", :"REFLECT", :"REST", :"RETALIATE", :"RETURN", :"ROCKSLIDE", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SPITE", :"STOREDPOWER", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"TAUNT", :"TELEKINESIS", :"THIEF", :"THUNDERBOLT", :"TORMENT", :"TOXIC", :"TRICKROOM", :"TERABLAST"
  pkmn.egg_moves :"ACUPRESSURE", :"DESTINYBOND", :"DISABLE"
end

GameData::SpeciesMetrics.define :"INKAY" do |m|
  m.back_sprite 6, 34
  m.front_sprite 4, 10
  m.shadow_sprite 0, 0, -1
end