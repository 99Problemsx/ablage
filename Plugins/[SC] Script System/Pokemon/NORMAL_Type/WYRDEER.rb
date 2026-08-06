#=============================================================================
# Wyrdeer - NORMAL Type
#=============================================================================

GameData::Species.define :"WYRDEER" do |pkmn|
  pkmn.name "Wyrdeer"
  pkmn.types :"NORMAL", :"PSYCHIC"
  pkmn.base_stats hp: 103, attack: 105, defense: 72,
                  sp_atk: 65, sp_def: 105, speed: 75
  pkmn.abilities :"INTIMIDATE", :"FRISK"
  pkmn.hidden_abilities :"SAPSIPPER"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Gray"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 263
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5355
  pkmn.height 1.8
  pkmn.weight 95.1
  pkmn.category "Big Horn"
  pkmn.pokedex_entry "The black orbs shine with an uncanny light when the Pokémon is erecting invisible barriers. The fur shed from its beard retains heat well and is a highly useful material for winter clothing"
  pkmn.evs attack: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 0, :"PSYSHIELDBASH"
    m.at 1, :"TACKLE"
    m.at 3, :"LEER"
    m.at 7, :"ASTONISH"
    m.at 10, :"HYPNOSIS"
    m.at 13, :"STOMP"
    m.at 16, :"SANDATTACK"
    m.at 21, :"TAKEDOWN"
    m.at 23, :"CONFUSERAY"
    m.at 27, :"CALMMIND"
    m.at 32, :"ROLEPLAY"
    m.at 37, :"ZENHEADBUTT"
    m.at 49, :"IMPRISON"
    m.at 55, :"DOUBLEEDGE"
    m.at 62, :"MEGAHORN"
  end
  pkmn.tutor_moves :"AGILITY", :"BODYSLAM", :"BULLDOZE", :"CALMMIND", :"CHARGEBEAM", :"CONFUSERAY", :"CURSE", :"DIG", :"DOUBLEEDGE", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"ENERGYBALL", :"EXPANDINGFORCE", :"FACADE", :"FUTURESIGHT", :"GIGAIMPACT", :"GRAVITY", :"HELPINGHAND", :"HIGHHORSEPOWER", :"HYPERBEAM", :"IMPRISON", :"LIGHTSCREEN", :"LUNGE", :"PROTECT", :"PSYBEAM", :"PSYCHIC", :"PSYCHICNOISE", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"REFLECT", :"REST", :"ROAR", :"SCARYFACE", :"SHADOWBALL", :"SKILLSWAP", :"SLEEPTALK", :"SOLARBEAM", :"SPITE", :"STOREDPOWER", :"SUBSTITUTE", :"SUNNYDAY", :"SWIFT", :"TAKEDOWN", :"THIEF", :"THROATCHOP", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TRAILBLAZE", :"TRICK", :"TRICKROOM", :"UPROAR", :"WILDCHARGE", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"WYRDEER" do |m|
  m.back_sprite 0, 44
  m.front_sprite 0, 11
  m.shadow_sprite 3, 0, 3
end