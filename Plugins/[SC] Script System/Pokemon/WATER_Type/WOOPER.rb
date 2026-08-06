#=============================================================================
# Wooper - WATER Type
#=============================================================================

GameData::Species.define :"WOOPER" do |pkmn|
  pkmn.name "Wooper"
  pkmn.types :"WATER", :"GROUND"
  pkmn.base_stats hp: 55, attack: 45, defense: 45,
                  sp_atk: 15, sp_def: 25, speed: 25
  pkmn.abilities :"DAMP", :"WATERABSORB"
  pkmn.hidden_abilities :"UNAWARE"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"HeadLegs"
  pkmn.base_exp 42
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.4
  pkmn.weight 8.5
  pkmn.category "Water Fish"
  pkmn.pokedex_entry "Wooper usually live in water but come out onto land seeking food occasionally. On land, they coat their bodies with a gooey, toxic film."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Water1", :"Field"

  pkmn.moves do |m|
    m.at 1, :"WATERGUN"
    m.at 1, :"TAILWHIP"
    m.at 5, :"MUDSPORT"
    m.at 9, :"MUDSHOT"
    m.at 15, :"SLAM"
    m.at 19, :"MUDBOMB"
    m.at 23, :"AMNESIA"
    m.at 29, :"YAWN"
    m.at 33, :"EARTHQUAKE"
    m.at 37, :"RAINDANCE"
    m.at 43, :"MIST"
    m.at 43, :"HAZE"
    m.at 47, :"MUDDYWATER"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ANCIENTPOWER", :"AQUATAIL", :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BULLDOZE", :"CAPTIVATE", :"DEFENSECURL", :"DIG", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DYNAMICPUNCH", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FLASH", :"FRUSTRATION", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"IRONTAIL", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSMASH", :"ROLLOUT", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"TOXIC", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL"
  pkmn.egg_moves :"ACIDSPRAY", :"AFTERYOU", :"ANCIENTPOWER", :"BODYSLAM", :"COUNTER", :"CURSE", :"DOUBLEKICK", :"ENCORE", :"MUDSPORT", :"RECOVER", :"SLEEPTALK", :"SPITUP", :"STOCKPILE", :"SWALLOW"
end

GameData::SpeciesMetrics.define :"WOOPER" do |m|
  m.back_sprite 0, 0
  m.front_sprite -1, 25
  m.shadow_sprite 0, 0, 1
end

# Form 1 - Paldean
GameData::Species.define :"WOOPER_1" do |pkmn|
  pkmn.species :"WOOPER"
  pkmn.form 1
  pkmn.name "Wooper"
  pkmn.form_name "Paldean"
  pkmn.types :"POISON", :"GROUND"
  pkmn.base_stats hp: 55, attack: 45, defense: 45,
                  sp_atk: 15, sp_def: 25, speed: 25
  pkmn.abilities :"POISONPOINT", :"WATERABSORB"
  pkmn.hidden_abilities :"UNAWARE"
  pkmn.flags :"InheritFormWithEverStone"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"HeadLegs"
  pkmn.base_exp 42
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.4
  pkmn.weight 11.0
  pkmn.category "Poison Fish"
  pkmn.pokedex_entry "After losing a territorial struggle, Wooper began living on land. The Pokémon changed over time, developing a poisonous film to protect its body."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Water1", :"Field"

  pkmn.moves do |m|
    m.at 1, :"MUDSHOT"
    m.at 1, :"TAILWHIP"
    m.at 4, :"TACKLE"
    m.at 8, :"POISONTAIL"
    m.at 12, :"TOXICSPIKES"
    m.at 16, :"SLAM"
    m.at 21, :"YAWN"
    m.at 24, :"POISONJAB"
    m.at 28, :"SLUDGEWAVE"
    m.at 32, :"AMNESIA"
    m.at 36, :"TOXIC"
    m.at 40, :"EARTHQUAKE"
  end
  pkmn.tutor_moves :"ACIDSPRAY", :"AMNESIA", :"BODYPRESS", :"BODYSLAM", :"BULLDOZE", :"CHILLINGWATER", :"CURSE", :"DIG", :"DOUBLEEDGE", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"GUNKSHOT", :"HAZE", :"HELPINGHAND", :"HYDROPUMP", :"LIQUIDATION", :"LOWKICK", :"MUDSHOT", :"MUDSLAP", :"POISONJAB", :"POISONTAIL", :"PROTECT", :"RAINDANCE", :"REST", :"ROCKSLIDE", :"ROCKTOMB", :"SANDSTORM", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SPIKES", :"STEALTHROCK", :"STOMPINGTANTRUM", :"STONEEDGE", :"SUBSTITUTE", :"SURF", :"TAKEDOWN", :"TOXIC", :"TOXICSPIKES", :"TRAILBLAZE", :"VENOSHOCK", :"WATERFALL", :"WATERPULSE"
  pkmn.egg_moves :"ACIDSPRAY", :"AFTERYOU", :"ANCIENTPOWER", :"COUNTER", :"CURSE", :"DOUBLEKICK", :"HAZE", :"MIST", :"RECOVER", :"SPITUP", :"STOCKPILE", :"SWALLOW"
end

GameData::SpeciesMetrics.define :"WOOPER_1" do |m|
  m.back_sprite 0, 50
  m.front_sprite -1, 33
  m.shadow_sprite 0, 0, 1
end