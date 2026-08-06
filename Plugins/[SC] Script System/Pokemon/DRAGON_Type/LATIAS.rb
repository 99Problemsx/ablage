#=============================================================================
# Latias - DRAGON Type
#=============================================================================

GameData::Species.define :"LATIAS" do |pkmn|
  pkmn.name "Latias"
  pkmn.types :"DRAGON", :"PSYCHIC"
  pkmn.base_stats hp: 80, attack: 80, defense: 90,
                  sp_atk: 110, sp_def: 110, speed: 130
  pkmn.abilities :"LEVITATE"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Red"
  pkmn.shape :"Winged"
  pkmn.base_exp 270
  pkmn.catch_rate 3
  pkmn.happiness 90
  pkmn.hatch_steps 30840
  pkmn.height 1.4
  pkmn.weight 40.0
  pkmn.category "Eon"
  pkmn.pokedex_entry "They make a small herd of only several members. They rarely make contact with people or other Pokémon. They disappear if they sense enemies."
  pkmn.evs special_defense: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"PSYWAVE"
    m.at 5, :"WISH"
    m.at 10, :"HELPINGHAND"
    m.at 15, :"SAFEGUARD"
    m.at 20, :"DRAGONBREATH"
    m.at 25, :"WATERSPORT"
    m.at 30, :"REFRESH"
    m.at 35, :"MISTBALL"
    m.at 40, :"ZENHEADBUTT"
    m.at 45, :"RECOVER"
    m.at 50, :"PSYCHOSHIFT"
    m.at 55, :"CHARM"
    m.at 60, :"PSYCHIC"
    m.at 65, :"HEALPULSE"
    m.at 70, :"REFLECTTYPE"
    m.at 75, :"GUARDSPLIT"
    m.at 80, :"DRAGONPULSE"
    m.at 85, :"HEALINGWISH"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BODYSLAM", :"BULLDOZE", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"COVET", :"CUT", :"DEFOG", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONCLAW", :"DRAGONPULSE", :"DREAMEATER", :"EARTHQUAKE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FLY", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"GRASSKNOT", :"HELPINGHAND", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"LASTRESORT", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGICROOM", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OUTRAGE", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"REFLECT", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROLEPLAY", :"ROOST", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SHADOWBALL", :"SHADOWCLAW", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STEELWING", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SURF", :"SWAGGER", :"SWIFT", :"TAILWIND", :"TELEKINESIS", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"TWISTER", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"LATIAS" do |m|
  m.back_sprite 5, 0
  m.front_sprite -2, -9
  m.shadow_sprite 0, 0, 2
end