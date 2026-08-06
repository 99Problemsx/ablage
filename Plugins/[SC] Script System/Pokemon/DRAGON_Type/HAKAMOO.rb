#=============================================================================
# Hakamo-o - DRAGON Type
#=============================================================================

GameData::Species.define :"HAKAMOO" do |pkmn|
  pkmn.name "Hakamo-o"
  pkmn.types :"DRAGON", :"FIGHTING"
  pkmn.base_stats hp: 55, attack: 75, defense: 90,
                  sp_atk: 65, sp_def: 65, speed: 70
  pkmn.abilities :"BULLETPROOF", :"SOUNDPROOF"
  pkmn.hidden_abilities :"OVERCOAT"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Gray"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 147
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 10240
  pkmn.height 1.2
  pkmn.weight 47.0
  pkmn.category "Scaly"
  pkmn.pokedex_entry "It sheds and regrows its scales on a continuous basis. The scales become harder and sharper each time they're regrown."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"AUTOTOMIZE"
    m.at 1, :"TACKLE"
    m.at 1, :"LEER"
    m.at 1, :"PROTECT"
    m.at 1, :"DRAGONTAIL"
    m.at 12, :"SCARYFACE"
    m.at 16, :"HEADBUTT"
    m.at 20, :"WORKUP"
    m.at 24, :"SCREECH"
    m.at 28, :"IRONDEFENSE"
    m.at 32, :"DRAGONCLAW"
    m.at 38, :"NOBLEROAR"
    m.at 44, :"DRAGONDANCE"
    m.at 50, :"OUTRAGE"
    m.at 56, :"CLOSECOMBAT"
  end
  pkmn.tutor_moves :"AERIALACE", :"AQUATAIL", :"ATTRACT", :"BRICKBREAK", :"BRUTALSWING", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"CLOSECOMBAT", :"COACHING", :"CONFIDE", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONCLAW", :"DRAGONDANCE", :"DRAGONPULSE", :"DRAGONTAIL", :"DRAINPUNCH", :"DUALCHOP", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLING", :"FOCUSBLAST", :"FRUSTRATION", :"HIDDENPOWER", :"IRONDEFENSE", :"IRONHEAD", :"IRONTAIL", :"LOWKICK", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PAYBACK", :"PROTECT", :"REST", :"RETURN", :"REVERSAL", :"ROAR", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SCALESHOT", :"SCARYFACE", :"SCREECH", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"SWORDSDANCE", :"TAUNT", :"TOXIC", :"UPROAR", :"WORKUP", :"XSCISSOR", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"HAKAMOO" do |m|
  m.back_sprite -8, 30
  m.front_sprite 4, 8
end