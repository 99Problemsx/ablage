#=============================================================================
# Gible - DRAGON Type
#=============================================================================

GameData::Species.define :"GIBLE" do |pkmn|
  pkmn.name "Gible"
  pkmn.types :"DRAGON", :"GROUND"
  pkmn.base_stats hp: 58, attack: 70, defense: 45,
                  sp_atk: 42, sp_def: 40, speed: 45
  pkmn.abilities :"SANDVEIL"
  pkmn.hidden_abilities :"ROUGHSKIN"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 60
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 10280
  pkmn.height 0.7
  pkmn.weight 20.5
  pkmn.category "Land Shark"
  pkmn.pokedex_entry "It nests in small, horizontal holes in cave walls. It pounces to catch prey that stray too close."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Monster", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 3, :"SANDATTACK"
    m.at 7, :"DRAGONRAGE"
    m.at 13, :"SANDSTORM"
    m.at 15, :"TAKEDOWN"
    m.at 19, :"SANDTOMB"
    m.at 25, :"SLASH"
    m.at 27, :"DRAGONCLAW"
    m.at 31, :"DIG"
    m.at 37, :"DRAGONRUSH"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BULLDOZE", :"CAPTIVATE", :"CUT", :"DIG", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONCLAW", :"DRAGONPULSE", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FRUSTRATION", :"FURYCUTTER", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"INCINERATE", :"IRONHEAD", :"IRONTAIL", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OUTRAGE", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TOXIC", :"TWISTER"
  pkmn.egg_moves :"BODYSLAM", :"DOUBLEEDGE", :"DRAGONBREATH", :"IRONHEAD", :"IRONTAIL", :"METALCLAW", :"MUDSHOT", :"OUTRAGE", :"ROCKCLIMB", :"SANDTOMB", :"SCARYFACE", :"THRASH", :"TWISTER"
end

GameData::SpeciesMetrics.define :"GIBLE" do |m|
  m.back_sprite -2, 0
  m.front_sprite -1, 18
  m.shadow_sprite 0, 0, 2
end