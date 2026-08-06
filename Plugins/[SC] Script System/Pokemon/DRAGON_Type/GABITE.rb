#=============================================================================
# Gabite - DRAGON Type
#=============================================================================

GameData::Species.define :"GABITE" do |pkmn|
  pkmn.name "Gabite"
  pkmn.types :"DRAGON", :"GROUND"
  pkmn.base_stats hp: 68, attack: 90, defense: 65,
                  sp_atk: 82, sp_def: 50, speed: 55
  pkmn.abilities :"SANDVEIL"
  pkmn.hidden_abilities :"ROUGHSKIN"
  pkmn.flags :"HasGenderedSprites"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 144
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 10280
  pkmn.height 1.4
  pkmn.weight 56.0
  pkmn.category "Cave"
  pkmn.pokedex_entry "There is a long-held belief that medicine made from its scales will heal even incurable illnesses."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Monster", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"SANDATTACK"
    m.at 3, :"SANDATTACK"
    m.at 7, :"DRAGONRAGE"
    m.at 13, :"SANDSTORM"
    m.at 15, :"TAKEDOWN"
    m.at 19, :"SANDTOMB"
    m.at 24, :"DUALCHOP"
    m.at 28, :"SLASH"
    m.at 33, :"DRAGONCLAW"
    m.at 40, :"DIG"
    m.at 49, :"DRAGONRUSH"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BULLDOZE", :"CAPTIVATE", :"CUT", :"DIG", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONCLAW", :"DRAGONPULSE", :"DUALCHOP", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FRUSTRATION", :"FURYCUTTER", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"INCINERATE", :"IRONHEAD", :"IRONTAIL", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OUTRAGE", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TOXIC", :"TWISTER"
end

GameData::SpeciesMetrics.define :"GABITE" do |m|
  m.back_sprite -6, 0
  m.front_sprite -2, 12
  m.shadow_sprite 0, 0, 3
end