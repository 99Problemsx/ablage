#=============================================================================
# Shiftry - GRASS Type
#=============================================================================

GameData::Species.define :"SHIFTRY" do |pkmn|
  pkmn.name "Shiftry"
  pkmn.types :"GRASS", :"DARK"
  pkmn.base_stats hp: 90, attack: 100, defense: 60,
                  sp_atk: 80, sp_def: 90, speed: 60
  pkmn.abilities :"CHLOROPHYLL", :"EARLYBIRD"
  pkmn.hidden_abilities :"PICKPOCKET"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Brown"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 216
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 1.3
  pkmn.weight 59.6
  pkmn.category "Wicked"
  pkmn.pokedex_entry "It is said to arrive on chilly, wintry winds. Feared from long ago as the guardian of forests, this Pokémon lives in a deep forest where people do not venture."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Field", :"Grass"

  pkmn.moves do |m|
    m.at 1, :"FEINTATTACK"
    m.at 1, :"WHIRLWIND"
    m.at 1, :"NASTYPLOT"
    m.at 1, :"RAZORLEAF"
    m.at 19, :"LEAFTORNADO"
    m.at 49, :"LEAFSTORM"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"ATTRACT", :"BODYSLAM", :"BOUNCE", :"BRICKBREAK", :"BULLETSEED", :"CAPTIVATE", :"CUT", :"DARKPULSE", :"DEFENSECURL", :"DEFOG", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"EMBARGO", :"ENDURE", :"ENERGYBALL", :"EXPLOSION", :"FACADE", :"FALSESWIPE", :"FLASH", :"FLING", :"FOCUSBLAST", :"FOULPLAY", :"FRUSTRATION", :"FURYCUTTER", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICYWIND", :"KNOCKOFF", :"LOWKICK", :"LOWSWEEP", :"MEGAKICK", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PAYBACK", :"PROTECT", :"PSYCHUP", :"REST", :"RETALIATE", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWBALL", :"SILVERWIND", :"SLEEPTALK", :"SNARL", :"SNORE", :"SOLARBEAM", :"SPITE", :"STRENGTH", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"SYNTHESIS", :"TAILWIND", :"THIEF", :"TORMENT", :"TOXIC", :"TWISTER", :"WORRYSEED", :"XSCISSOR"
end

GameData::SpeciesMetrics.define :"SHIFTRY" do |m|
  m.back_sprite 1, 0
  m.front_sprite 6, 11
  m.shadow_sprite 0, 0, 3
end