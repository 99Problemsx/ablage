#=============================================================================
# Haxorus - DRAGON Type
#=============================================================================

GameData::Species.define :"HAXORUS" do |pkmn|
  pkmn.name "Haxorus"
  pkmn.types :"DRAGON"
  pkmn.base_stats hp: 76, attack: 147, defense: 90,
                  sp_atk: 97, sp_def: 60, speed: 70
  pkmn.abilities :"RIVALRY", :"MOLDBREAKER"
  pkmn.hidden_abilities :"UNNERVE"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Yellow"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 243
  pkmn.catch_rate 45
  pkmn.happiness 35
  pkmn.hatch_steps 10280
  pkmn.height 1.8
  pkmn.weight 105.5
  pkmn.category "Axe Jaw"
  pkmn.pokedex_entry "Their sturdy tusks will stay sharp even if used to cut steel beams. These Pokémon are covered in hard armor."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Monster", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"LEER"
    m.at 1, :"ASSURANCE"
    m.at 1, :"DRAGONRAGE"
    m.at 4, :"LEER"
    m.at 7, :"ASSURANCE"
    m.at 10, :"DRAGONRAGE"
    m.at 13, :"DUALCHOP"
    m.at 16, :"SCARYFACE"
    m.at 20, :"SLASH"
    m.at 24, :"FALSESWIPE"
    m.at 28, :"DRAGONCLAW"
    m.at 32, :"DRAGONDANCE"
    m.at 36, :"TAUNT"
    m.at 42, :"DRAGONPULSE"
    m.at 50, :"SWORDSDANCE"
    m.at 58, :"GUILLOTINE"
    m.at 66, :"OUTRAGE"
    m.at 74, :"GIGAIMPACT"
  end
  pkmn.tutor_moves :"AERIALACE", :"AQUATAIL", :"ATTRACT", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"CUT", :"DIG", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONCLAW", :"DRAGONPULSE", :"DRAGONTAIL", :"DUALCHOP", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLING", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"INCINERATE", :"IRONTAIL", :"LOWKICK", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PAYBACK", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SURF", :"SWAGGER", :"SWORDSDANCE", :"TAUNT", :"TOXIC", :"XSCISSOR"
end

GameData::SpeciesMetrics.define :"HAXORUS" do |m|
  m.back_sprite -1, 0
  m.front_sprite -1, 9
  m.shadow_sprite 0, 0, 3
end