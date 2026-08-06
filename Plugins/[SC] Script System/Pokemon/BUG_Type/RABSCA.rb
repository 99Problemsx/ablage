#=============================================================================
# Rabsca - BUG Type
#=============================================================================

GameData::Species.define :"RABSCA" do |pkmn|
  pkmn.name "Rabsca"
  pkmn.types :"BUG", :"PSYCHIC"
  pkmn.base_stats hp: 75, attack: 50, defense: 85,
                  sp_atk: 45, sp_def: 115, speed: 100
  pkmn.abilities :"SYNCHRONIZE"
  pkmn.hidden_abilities :"TELEPATHY"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Green"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 165
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.3
  pkmn.weight 3.5
  pkmn.category "Rolling"
  pkmn.pokedex_entry "The body that supports the ball barely moves. Therefore, it is thought that the true body of this Pokémon is actually inside the ball."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at -1, :"SAFEGUARD"
    m.at -1, :"PSYCHUP"
    m.at 0, :"REVIVALBLESSING"
    m.at 1, :"TACKLE"
    m.at 1, :"CONFUSION"
    m.at 1, :"DEFENSECURL"
    m.at 4, :"SANDATTACK"
    m.at 7, :"STRUGGLEBUG"
    m.at 11, :"ROLLOUT"
    m.at 15, :"PSYBEAM"
    m.at 20, :"BUGBITE"
    m.at 24, :"TAKEDOWN"
    m.at 29, :"EXTRASENSORY"
    m.at 35, :"LUNGE"
    m.at 40, :"POWERSWAP"
    m.at 40, :"SPEEDSWAP"
    m.at 40, :"GUARDSWAP"
    m.at 45, :"BUGBUZZ"
    m.at 50, :"PSYCHIC"
  end
  pkmn.tutor_moves :"BUGBITE", :"BUGBUZZ", :"CALMMIND", :"CONFUSERAY", :"DAZZLINGGLEAM", :"DIG", :"EARTHPOWER", :"ELECTROBALL", :"ENDURE", :"ENERGYBALL", :"EXPANDINGFORCE", :"FACADE", :"FLING", :"FUTURESIGHT", :"GIGAIMPACT", :"GRAVITY", :"GUNKSHOT", :"HYPERBEAM", :"IMPRISON", :"IRONDEFENSE", :"LEECHLIFE", :"LIGHTSCREEN", :"LUNGE", :"MUDSHOT", :"MUDSLAP", :"POLTERGEIST", :"POUNCE", :"POWERGEM", :"PROTECT", :"PSYBEAM", :"PSYCHIC", :"PSYCHICNOISE", :"PSYCHICTERRAIN", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"REFLECT", :"REST", :"ROCKTOMB", :"SANDSTORM", :"SHADOWBALL", :"SKILLSWAP", :"SKITTERSMACK", :"SLEEPTALK", :"SLUDGEBOMB", :"STOREDPOWER", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"TAKEDOWN", :"THIEF", :"TRICK", :"TRICKROOM", :"WEATHERBALL", :"XSCISSOR", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"RABSCA" do |m|
  m.back_sprite 0, 33
  m.front_sprite 0, 0
  m.shadow_sprite 0, 0, 1
end