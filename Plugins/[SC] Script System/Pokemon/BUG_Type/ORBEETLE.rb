#=============================================================================
# Orbeetle - BUG Type
#=============================================================================

GameData::Species.define :"ORBEETLE" do |pkmn|
  pkmn.name "Orbeetle"
  pkmn.types :"BUG", :"PSYCHIC"
  pkmn.base_stats hp: 60, attack: 45, defense: 110,
                  sp_atk: 90, sp_def: 80, speed: 120
  pkmn.abilities :"SWARM", :"FRISK"
  pkmn.hidden_abilities :"TELEPATHY"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"Winged"
  pkmn.base_exp 253
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 0.4
  pkmn.weight 40.8
  pkmn.category "Seven Spot"
  pkmn.pokedex_entry "It's famous for its high level of intelligence, and the large size of its brain is proof that it also possesses immense psychic power."
  pkmn.evs special_defense: 3
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"REFLECT"
    m.at 1, :"LIGHTSCREEN"
    m.at 1, :"CONFUSION"
    m.at 1, :"STRUGGLEBUG"
    m.at 4, :"CONFUSERAY"
    m.at 8, :"MAGICCOAT"
    m.at 12, :"AGILITY"
    m.at 16, :"PSYBEAM"
    m.at 20, :"HYPNOSIS"
    m.at 24, :"ALLYSWITCH"
    m.at 28, :"BUGBUZZ"
    m.at 32, :"MIRRORCOAT"
    m.at 36, :"PSYCHIC"
    m.at 40, :"AFTERYOU"
    m.at 44, :"CALMMIND"
    m.at 48, :"PSYCHICTERRAIN"
  end
  pkmn.tutor_moves :"AGILITY", :"ALLYSWITCH", :"ATTRACT", :"BATONPASS", :"BODYPRESS", :"BUGBUZZ", :"CALMMIND", :"CAPTIVATE", :"CONFIDE", :"DOUBLETEAM", :"ENDURE", :"ENERGYBALL", :"EXPANDINGFORCE", :"FACADE", :"FRUSTRATION", :"FUTURESIGHT", :"GIGADRAIN", :"GIGAIMPACT", :"GUARDSWAP", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"IMPRISON", :"IRONDEFENSE", :"LEECHLIFE", :"LIGHTSCREEN", :"MAGICROOM", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"POWERSWAP", :"PROTECT", :"PSYCHIC", :"PSYCHICTERRAIN", :"PSYCHOCUT", :"PSYSHOCK", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SKILLSWAP", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STOREDPOWER", :"SUBSTITUTE", :"SWAGGER", :"TOXIC", :"TRICK", :"TRICKROOM", :"UTURN", :"WONDERROOM", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"ORBEETLE" do |m|
  m.back_sprite -7, 53
  m.front_sprite 5, -1
  m.shadow_sprite 0, 0, -1
end