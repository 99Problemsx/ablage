#=============================================================================
# Dottler - BUG Type
#=============================================================================

GameData::Species.define :"DOTTLER" do |pkmn|
  pkmn.name "Dottler"
  pkmn.types :"BUG", :"PSYCHIC"
  pkmn.base_stats hp: 50, attack: 35, defense: 80,
                  sp_atk: 30, sp_def: 50, speed: 90
  pkmn.abilities :"SWARM", :"COMPOUNDEYES"
  pkmn.hidden_abilities :"TELEPATHY"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 117
  pkmn.catch_rate 120
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 0.4
  pkmn.weight 19.5
  pkmn.category "Radome"
  pkmn.pokedex_entry "It barely moves, but it's still alive. Hiding in its shell without food or water seems to have awakened its psychic powers."
  pkmn.evs special_defense: 2
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 0, :"REFLECT"
    m.at 0, :"LIGHTSCREEN"
    m.at 0, :"CONFUSION"
    m.at 1, :"STRUGGLEBUG"
  end
  pkmn.tutor_moves :"ALLYSWITCH", :"ATTRACT", :"BODYPRESS", :"BUGBUZZ", :"CALMMIND", :"CAPTIVATE", :"CONFIDE", :"DOUBLETEAM", :"ENDURE", :"ENERGYBALL", :"EXPANDINGFORCE", :"FACADE", :"FRUSTRATION", :"FUTURESIGHT", :"GUARDSWAP", :"HELPINGHAND", :"HIDDENPOWER", :"IMPRISON", :"IRONDEFENSE", :"LEECHLIFE", :"LIGHTSCREEN", :"MAGICROOM", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"POWERSWAP", :"PROTECT", :"PSYCHIC", :"PSYCHICTERRAIN", :"PSYSHOCK", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SKILLSWAP", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STOREDPOWER", :"SUBSTITUTE", :"SWAGGER", :"TOXIC", :"TRICK", :"TRICKROOM", :"WONDERROOM", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"DOTTLER" do |m|
  m.back_sprite 2, 8
  m.front_sprite 1, 30
end