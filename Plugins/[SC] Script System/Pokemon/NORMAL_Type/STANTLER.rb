#=============================================================================
# Stantler - NORMAL Type
#=============================================================================

GameData::Species.define :"STANTLER" do |pkmn|
  pkmn.name "Stantler"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 73, attack: 95, defense: 62,
                  sp_atk: 85, sp_def: 85, speed: 65
  pkmn.abilities :"INTIMIDATE", :"FRISK"
  pkmn.hidden_abilities :"SAPSIPPER"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 163
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.4
  pkmn.weight 71.2
  pkmn.category "Big Horn"
  pkmn.pokedex_entry "Stantler's magnificent antlers were once traded at high prices as works of art. As a result, this Pokémon was hunted close to extinction."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 3, :"LEER"
    m.at 7, :"ASTONISH"
    m.at 10, :"HYPNOSIS"
    m.at 13, :"STOMP"
    m.at 16, :"SANDATTACK"
    m.at 21, :"TAKEDOWN"
    m.at 23, :"CONFUSERAY"
    m.at 27, :"CALMMIND"
    m.at 33, :"ROLEPLAY"
    m.at 38, :"ZENHEADBUTT"
    m.at 43, :"JUMPKICK"
    m.at 49, :"IMPRISON"
    m.at 53, :"CAPTIVATE"
    m.at 55, :"MEFIRST"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BOUNCE", :"BULLDOZE", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"EARTHQUAKE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGAIMPACT", :"GRAVITY", :"HEADBUTT", :"HIDDENPOWER", :"IRONTAIL", :"LASTRESORT", :"LIGHTSCREEN", :"MAGICROOM", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"REFLECT", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SPITE", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"TRICKROOM", :"UPROAR", :"WILDCHARGE", :"WORKUP", :"ZENHEADBUTT"
  pkmn.egg_moves :"BITE", :"DISABLE", :"DOUBLEKICK", :"EXTRASENSORY", :"MEFIRST", :"MEGAHORN", :"MUDSPORT", :"RAGE", :"SPITE", :"THRASH", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"STANTLER" do |m|
  m.back_sprite 3, 0
  m.front_sprite -3, 6
  m.shadow_sprite 0, 0, 2
end