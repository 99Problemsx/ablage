#=============================================================================
# Umbreon - DARK Type
#=============================================================================

GameData::Species.define :"UMBREON" do |pkmn|
  pkmn.name "Umbreon"
  pkmn.types :"DARK"
  pkmn.base_stats hp: 95, attack: 65, defense: 110,
                  sp_atk: 65, sp_def: 60, speed: 130
  pkmn.abilities :"SYNCHRONIZE"
  pkmn.hidden_abilities :"INNERFOCUS"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Black"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 184
  pkmn.catch_rate 45
  pkmn.happiness 35
  pkmn.hatch_steps 8995
  pkmn.height 1.0
  pkmn.weight 27.0
  pkmn.category "Moonlight"
  pkmn.pokedex_entry "Umbreon evolved from exposure to the moon's energy pulses. It lurks in darkness and waits for its foes to move. The rings on its body glow when it leaps to attack."
  pkmn.evs special_defense: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"HELPINGHAND"
    m.at 1, :"TACKLE"
    m.at 1, :"TAILWHIP"
    m.at 5, :"SANDATTACK"
    m.at 9, :"PURSUIT"
    m.at 13, :"QUICKATTACK"
    m.at 17, :"CONFUSERAY"
    m.at 21, :"FEINTATTACK"
    m.at 25, :"ASSURANCE"
    m.at 29, :"SCREECH"
    m.at 33, :"MOONLIGHT"
    m.at 37, :"MEANLOOK"
    m.at 41, :"LASTRESORT"
    m.at 45, :"GUARDSWAP"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"CAPTIVATE", :"COVET", :"CUT", :"DARKPULSE", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLASH", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"HEADBUTT", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"IRONTAIL", :"LASTRESORT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SLEEPTALK", :"SNARL", :"SNATCH", :"SNORE", :"SPITE", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAUNT", :"TORMENT", :"TOXIC", :"WONDERROOM", :"WORKUP"
end

GameData::SpeciesMetrics.define :"UMBREON" do |m|
  m.back_sprite 0, 0
  m.front_sprite 2, 17
  m.shadow_sprite 0, 0, 2
end