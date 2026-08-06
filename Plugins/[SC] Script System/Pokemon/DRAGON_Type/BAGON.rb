#=============================================================================
# Bagon - DRAGON Type
#=============================================================================

GameData::Species.define :"BAGON" do |pkmn|
  pkmn.name "Bagon"
  pkmn.types :"DRAGON"
  pkmn.base_stats hp: 45, attack: 75, defense: 60,
                  sp_atk: 50, sp_def: 40, speed: 30
  pkmn.abilities :"ROCKHEAD"
  pkmn.hidden_abilities :"SHEERFORCE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 60
  pkmn.catch_rate 45
  pkmn.happiness 35
  pkmn.hatch_steps 10280
  pkmn.height 0.6
  pkmn.weight 42.1
  pkmn.category "Rock Head"
  pkmn.pokedex_entry "Although it is small, this Pokémon is very powerful because its body is a bundle of muscles. It launches head-butts with its ironlike skull."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"RAGE"
    m.at 5, :"BITE"
    m.at 10, :"LEER"
    m.at 16, :"HEADBUTT"
    m.at 20, :"FOCUSENERGY"
    m.at 25, :"EMBER"
    m.at 31, :"DRAGONBREATH"
    m.at 35, :"ZENHEADBUTT"
    m.at 40, :"SCARYFACE"
    m.at 46, :"CRUNCH"
    m.at 50, :"DRAGONCLAW"
    m.at 55, :"DOUBLEEDGE"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"CAPTIVATE", :"CUT", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONCLAW", :"DRAGONPULSE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FRUSTRATION", :"FURYCUTTER", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERVOICE", :"INCINERATE", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OUTRAGE", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TOXIC", :"TWISTER", :"ZENHEADBUTT"
  pkmn.egg_moves :"DEFENSECURL", :"DRAGONDANCE", :"DRAGONPULSE", :"DRAGONRAGE", :"DRAGONRUSH", :"ENDURE", :"FIREFANG", :"HYDROPUMP", :"THRASH", :"TWISTER"
end

GameData::SpeciesMetrics.define :"BAGON" do |m|
  m.back_sprite 3, 0
  m.front_sprite -5, 19
  m.shadow_sprite 0, 0, 2
end