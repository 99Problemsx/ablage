#=============================================================================
# Binacle - ROCK Type
#=============================================================================

GameData::Species.define :"BINACLE" do |pkmn|
  pkmn.name "Binacle"
  pkmn.types :"ROCK", :"WATER"
  pkmn.base_stats hp: 42, attack: 52, defense: 67,
                  sp_atk: 50, sp_def: 39, speed: 56
  pkmn.abilities :"TOUGHCLAWS", :"SNIPER"
  pkmn.hidden_abilities :"PICKPOCKET"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"MultiBody"
  pkmn.base_exp 61
  pkmn.catch_rate 120
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.5
  pkmn.weight 31.0
  pkmn.category "Two-Handed"
  pkmn.pokedex_entry "They stretch and then contract, yanking their rocks along with them in bold hops. They eat seaweed that washes up on the shoreline."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Water3"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"MUDSLAP"
    m.at 4, :"WITHDRAW"
    m.at 8, :"WATERGUN"
    m.at 12, :"FURYCUTTER"
    m.at 16, :"FURYSWIPES"
    m.at 20, :"ANCIENTPOWER"
    m.at 24, :"ROCKPOLISH"
    m.at 28, :"SLASH"
    m.at 32, :"HONECLAWS"
    m.at 36, :"RAZORSHELL"
    m.at 40, :"SHELLSMASH"
    m.at 44, :"CROSSCHOP"
  end
  pkmn.tutor_moves :"AERIALACE", :"ASSURANCE", :"ATTRACT", :"BEATUP", :"BLIZZARD", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"CONFIDE", :"CUT", :"DIG", :"DOUBLETEAM", :"DUALCHOP", :"EARTHQUAKE", :"EMBARGO", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLING", :"FRUSTRATION", :"GRASSKNOT", :"HELPINGHAND", :"HIDDENPOWER", :"HONECLAWS", :"ICEBEAM", :"ICYWIND", :"INFESTATION", :"IRONDEFENSE", :"LIQUIDATION", :"MIMIC", :"MUDSHOT", :"NATURALGIFT", :"NATUREPOWER", :"PAYBACK", :"POISONJAB", :"POWERUPPUNCH", :"PROTECT", :"RAINDANCE", :"RAZORSHELL", :"REST", :"RETURN", :"ROCKBLAST", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SCALD", :"SCREECH", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SMACKDOWN", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"SWORDSDANCE", :"TAUNT", :"THIEF", :"TORMENT", :"TOXIC", :"UPROAR", :"WATERPULSE", :"XSCISSOR", :"TERABLAST"
  pkmn.egg_moves :"NIGHTSLASH", :"SANDATTACK", :"SWITCHEROO"
end

GameData::SpeciesMetrics.define :"BINACLE" do |m|
  m.back_sprite 0, 10
  m.front_sprite -1, 3
end