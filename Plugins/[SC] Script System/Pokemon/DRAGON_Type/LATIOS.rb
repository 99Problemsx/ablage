#=============================================================================
# Latios - DRAGON Type
#=============================================================================

GameData::Species.define :"LATIOS" do |pkmn|
  pkmn.name "Latios"
  pkmn.types :"DRAGON", :"PSYCHIC"
  pkmn.base_stats hp: 80, attack: 90, defense: 80,
                  sp_atk: 110, sp_def: 130, speed: 110
  pkmn.abilities :"LEVITATE"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"AlwaysMale"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Winged"
  pkmn.base_exp 270
  pkmn.catch_rate 3
  pkmn.happiness 90
  pkmn.hatch_steps 30840
  pkmn.height 2.0
  pkmn.weight 60.0
  pkmn.category "Eon"
  pkmn.pokedex_entry "Even in hiding, it can detect the locations of others and sense their emotions since it has telepathy. Its intelligence allows it to understand human languages."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"PSYWAVE"
    m.at 5, :"HEALBLOCK"
    m.at 10, :"HELPINGHAND"
    m.at 15, :"SAFEGUARD"
    m.at 20, :"DRAGONBREATH"
    m.at 25, :"PROTECT"
    m.at 30, :"REFRESH"
    m.at 35, :"LUSTERPURGE"
    m.at 40, :"ZENHEADBUTT"
    m.at 45, :"RECOVER"
    m.at 50, :"PSYCHOSHIFT"
    m.at 55, :"DRAGONDANCE"
    m.at 60, :"PSYCHIC"
    m.at 65, :"HEALPULSE"
    m.at 70, :"TELEKINESIS"
    m.at 75, :"POWERSPLIT"
    m.at 80, :"DRAGONPULSE"
    m.at 85, :"MEMENTO"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BODYSLAM", :"BULLDOZE", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"CUT", :"DEFOG", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONCLAW", :"DRAGONPULSE", :"DREAMEATER", :"EARTHQUAKE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FLY", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"GRASSKNOT", :"HELPINGHAND", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"LASTRESORT", :"LIGHTSCREEN", :"MAGICCOAT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OUTRAGE", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"REFLECT", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROOST", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SHADOWBALL", :"SHADOWCLAW", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STEELWING", :"SUBSTITUTE", :"SUNNYDAY", :"SURF", :"SWAGGER", :"SWIFT", :"TAILWIND", :"TELEKINESIS", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"TWISTER", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL", :"WONDERROOM", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"LATIOS" do |m|
  m.back_sprite 3, 0
  m.front_sprite 0, -5
  m.shadow_sprite 0, 0, 2
end