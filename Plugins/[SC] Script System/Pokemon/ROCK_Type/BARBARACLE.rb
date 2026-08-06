#=============================================================================
# Barbaracle - ROCK Type
#=============================================================================

GameData::Species.define :"BARBARACLE" do |pkmn|
  pkmn.name "Barbaracle"
  pkmn.types :"ROCK", :"WATER"
  pkmn.base_stats hp: 72, attack: 105, defense: 115,
                  sp_atk: 68, sp_def: 54, speed: 86
  pkmn.abilities :"TOUGHCLAWS", :"SNIPER"
  pkmn.hidden_abilities :"PICKPOCKET"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"MultiBody"
  pkmn.base_exp 175
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.3
  pkmn.weight 96.0
  pkmn.category "Collective"
  pkmn.pokedex_entry "Barbaracle's legs and hands have minds of their own, and they will move independently. But they usually follow the head's orders."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Water3"

  pkmn.moves do |m|
    m.at 1, :"SKULLBASH"
    m.at 1, :"SCRATCH"
    m.at 1, :"MUDSLAP"
    m.at 1, :"WITHDRAW"
    m.at 1, :"WATERGUN"
    m.at 12, :"FURYCUTTER"
    m.at 16, :"FURYSWIPES"
    m.at 20, :"ANCIENTPOWER"
    m.at 24, :"ROCKPOLISH"
    m.at 28, :"SLASH"
    m.at 32, :"HONECLAWS"
    m.at 36, :"RAZORSHELL"
    m.at 42, :"SHELLSMASH"
    m.at 48, :"CROSSCHOP"
    m.at 54, :"STONEEDGE"
  end
  pkmn.tutor_moves :"AERIALACE", :"ASSURANCE", :"ATTRACT", :"BEATUP", :"BLIZZARD", :"BRICKBREAK", :"BRUTALSWING", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"CONFIDE", :"CUT", :"DIG", :"DIVE", :"DOUBLETEAM", :"DRAGONCLAW", :"DUALCHOP", :"EARTHPOWER", :"EARTHQUAKE", :"EMBARGO", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLING", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HELPINGHAND", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"INFESTATION", :"IRONDEFENSE", :"LASERFOCUS", :"LIQUIDATION", :"LOWKICK", :"METEORBEAM", :"MIMIC", :"MUDDYWATER", :"MUDSHOT", :"NATURALGIFT", :"NATUREPOWER", :"PAYBACK", :"POISONJAB", :"POWERUPPUNCH", :"PROTECT", :"RAINDANCE", :"RAZORSHELL", :"REST", :"RETURN", :"ROCKBLAST", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SCALD", :"SCREECH", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SMACKDOWN", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUPERPOWER", :"SURF", :"SWAGGER", :"SWORDSDANCE", :"TAUNT", :"THIEF", :"TORMENT", :"TOXIC", :"UPROAR", :"WATERPULSE", :"WHIRLPOOL", :"XSCISSOR", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"BARBARACLE" do |m|
  m.back_sprite 19, 45
  m.front_sprite -4, 14
end

# Form 1 - Mega Barbaracle
GameData::Species.define :"BARBARACLE_1" do |pkmn|
  pkmn.species :"BARBARACLE"
  pkmn.form 1
  pkmn.name "Barbaracle"
  pkmn.form_name "Mega Barbaracle"
  pkmn.types :"ROCK", :"FIGHTING"
  pkmn.base_stats hp: 72, attack: 140, defense: 130,
                  sp_atk: 64, sp_def: 106, speed: 88
  pkmn.abilities :"TOUGHCLAWS", :"SNIPER"
  pkmn.hidden_abilities :"PICKPOCKET"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"MultiBody"
  pkmn.base_exp 175
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 2.2
  pkmn.weight 100.0
  pkmn.category "Collective"
  pkmn.pokedex_entry "It uses its many arms to toy with its opponents. This keeps the head extremely busy."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Water3"

  pkmn.moves do |m|
    m.at 1, :"SKULLBASH"
    m.at 1, :"SCRATCH"
    m.at 1, :"MUDSLAP"
    m.at 1, :"WITHDRAW"
    m.at 1, :"WATERGUN"
    m.at 12, :"FURYCUTTER"
    m.at 16, :"FURYSWIPES"
    m.at 20, :"ANCIENTPOWER"
    m.at 24, :"ROCKPOLISH"
    m.at 28, :"SLASH"
    m.at 32, :"HONECLAWS"
    m.at 36, :"RAZORSHELL"
    m.at 42, :"SHELLSMASH"
    m.at 48, :"CROSSCHOP"
    m.at 54, :"STONEEDGE"
  end
  pkmn.tutor_moves :"AERIALACE", :"ASSURANCE", :"ATTRACT", :"BEATUP", :"BLIZZARD", :"BRICKBREAK", :"BRUTALSWING", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"CONFIDE", :"CUT", :"DIG", :"DIVE", :"DOUBLETEAM", :"DRAGONCLAW", :"DUALCHOP", :"EARTHPOWER", :"EARTHQUAKE", :"EMBARGO", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLING", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HELPINGHAND", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"INFESTATION", :"IRONDEFENSE", :"LASERFOCUS", :"LIQUIDATION", :"LOWKICK", :"METEORBEAM", :"MIMIC", :"MUDDYWATER", :"MUDSHOT", :"NATURALGIFT", :"NATUREPOWER", :"PAYBACK", :"POISONJAB", :"POWERUPPUNCH", :"PROTECT", :"RAINDANCE", :"RAZORSHELL", :"REST", :"RETURN", :"ROCKBLAST", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SCALD", :"SCREECH", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SMACKDOWN", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUPERPOWER", :"SURF", :"SWAGGER", :"SWORDSDANCE", :"TAUNT", :"THIEF", :"TORMENT", :"TOXIC", :"UPROAR", :"WATERPULSE", :"WHIRLPOOL", :"XSCISSOR", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"BARBARACLE_1" do |m|
  m.back_sprite 19, 45
  m.front_sprite -4, 14
end