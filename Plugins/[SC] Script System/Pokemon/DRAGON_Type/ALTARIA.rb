#=============================================================================
# Altaria - DRAGON Type
#=============================================================================

GameData::Species.define :"ALTARIA" do |pkmn|
  pkmn.name "Altaria"
  pkmn.types :"DRAGON", :"FLYING"
  pkmn.base_stats hp: 75, attack: 70, defense: 90,
                  sp_atk: 80, sp_def: 70, speed: 105
  pkmn.abilities :"NATURALCURE"
  pkmn.hidden_abilities :"CLOUDNINE"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Erratic"
  pkmn.color :"Blue"
  pkmn.shape :"Winged"
  pkmn.base_exp 172
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.1
  pkmn.weight 20.6
  pkmn.category "Humming"
  pkmn.pokedex_entry "It hums in a beautiful soprano voice. It flies among white clouds in the blue sky. It launches intensely hot fireballs from its mouth."
  pkmn.evs special_defense: 2
  pkmn.egg_groups :"Flying", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"PLUCK"
    m.at 1, :"PECK"
    m.at 1, :"GROWL"
    m.at 1, :"ASTONISH"
    m.at 1, :"SING"
    m.at 4, :"ASTONISH"
    m.at 8, :"SING"
    m.at 10, :"FURYATTACK"
    m.at 13, :"SAFEGUARD"
    m.at 15, :"MIST"
    m.at 18, :"ROUND"
    m.at 21, :"NATURALGIFT"
    m.at 25, :"TAKEDOWN"
    m.at 29, :"REFRESH"
    m.at 34, :"DRAGONDANCE"
    m.at 35, :"DRAGONBREATH"
    m.at 42, :"COTTONGUARD"
    m.at 48, :"DRAGONPULSE"
    m.at 57, :"PERISHSONG"
    m.at 64, :"SKYATTACK"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"ATTRACT", :"BODYSLAM", :"BULLDOZE", :"CAPTIVATE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONCLAW", :"DRAGONPULSE", :"DREAMEATER", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FLY", :"FRUSTRATION", :"GIGAIMPACT", :"HEALBELL", :"HEATWAVE", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"INCINERATE", :"IRONTAIL", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"OUTRAGE", :"PLUCK", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROOST", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SKYATTACK", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STEELWING", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"THIEF", :"TOXIC", :"TWISTER", :"UPROAR", :"WONDERROOM"
end

GameData::SpeciesMetrics.define :"ALTARIA" do |m|
  m.back_sprite -10, 0
  m.front_sprite 0, -5
  m.shadow_sprite 0, 0, 2
end