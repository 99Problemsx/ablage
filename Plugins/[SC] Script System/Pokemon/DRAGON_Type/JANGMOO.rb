#=============================================================================
# Jangmo-o - DRAGON Type
#=============================================================================

GameData::Species.define :"JANGMOO" do |pkmn|
  pkmn.name "Jangmo-o"
  pkmn.types :"DRAGON"
  pkmn.base_stats hp: 45, attack: 55, defense: 65,
                  sp_atk: 45, sp_def: 45, speed: 45
  pkmn.abilities :"BULLETPROOF", :"SOUNDPROOF"
  pkmn.hidden_abilities :"OVERCOAT"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Gray"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 60
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 10240
  pkmn.height 0.6
  pkmn.weight 29.7
  pkmn.category "Scaly"
  pkmn.pokedex_entry "It expresses its feelings by smacking its scales. Metallic sounds echo through the tall mountains where Jangmo-o lives."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"LEER"
    m.at 4, :"PROTECT"
    m.at 8, :"DRAGONTAIL"
    m.at 12, :"SCARYFACE"
    m.at 16, :"HEADBUTT"
    m.at 20, :"WORKUP"
    m.at 24, :"SCREECH"
    m.at 28, :"IRONDEFENSE"
    m.at 32, :"DRAGONCLAW"
    m.at 36, :"NOBLEROAR"
    m.at 40, :"DRAGONDANCE"
    m.at 44, :"OUTRAGE"
  end
  pkmn.tutor_moves :"AERIALACE", :"AQUATAIL", :"ATTRACT", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"CONFIDE", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONCLAW", :"DRAGONDANCE", :"DRAGONPULSE", :"DRAGONTAIL", :"DUALCHOP", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLING", :"FOCUSBLAST", :"FRUSTRATION", :"HIDDENPOWER", :"IRONDEFENSE", :"IRONHEAD", :"IRONTAIL", :"LOWKICK", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PAYBACK", :"PROTECT", :"REST", :"RETURN", :"REVERSAL", :"ROAR", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SCALESHOT", :"SCARYFACE", :"SCREECH", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"SWORDSDANCE", :"TAUNT", :"TOXIC", :"UPROAR", :"WORKUP", :"XSCISSOR", :"TERABLAST"
  pkmn.egg_moves :"COUNTER", :"DRAGONBREATH", :"FOCUSPUNCH"
end

GameData::SpeciesMetrics.define :"JANGMOO" do |m|
  m.back_sprite -2, 42
  m.front_sprite 0, 25
end