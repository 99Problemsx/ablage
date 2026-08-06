#=============================================================================
# Kommo-o - DRAGON Type
#=============================================================================

GameData::Species.define :"KOMMOO" do |pkmn|
  pkmn.name "Kommo-o"
  pkmn.types :"DRAGON", :"FIGHTING"
  pkmn.base_stats hp: 75, attack: 110, defense: 125,
                  sp_atk: 85, sp_def: 100, speed: 105
  pkmn.abilities :"BULLETPROOF", :"SOUNDPROOF"
  pkmn.hidden_abilities :"OVERCOAT"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Gray"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 300
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 10240
  pkmn.height 1.6
  pkmn.weight 78.2
  pkmn.category "Scaly"
  pkmn.pokedex_entry "Its rigid scales function as offense and defense. In the past, its scales were processed and used to make weapons and other commodities."
  pkmn.evs defense: 3
  pkmn.egg_groups :"Dragon"

  pkmn.moves do |m|
    m.at 0, :"CLANGINGSCALES"
    m.at 1, :"BELLYDRUM"
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
    m.at 52, :"OUTRAGE"
    m.at 60, :"CLOSECOMBAT"
    m.at 68, :"CLANGOROUSSOUL"
    m.at 76, :"BOOMBURST"
  end
  pkmn.tutor_moves :"AERIALACE", :"AQUATAIL", :"ATTRACT", :"AURASPHERE", :"BODYPRESS", :"BREAKINGSWIPE", :"BRICKBREAK", :"BRUTALSWING", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"CLOSECOMBAT", :"COACHING", :"CONFIDE", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONCLAW", :"DRAGONDANCE", :"DRAGONPULSE", :"DRAGONTAIL", :"DRAINPUNCH", :"DUALCHOP", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FIREPUNCH", :"FLAMETHROWER", :"FLASHCANNON", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"ICEPUNCH", :"IRONDEFENSE", :"IRONHEAD", :"IRONTAIL", :"LASERFOCUS", :"LOWKICK", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PAYBACK", :"POISONJAB", :"PROTECT", :"REST", :"RETURN", :"REVENGE", :"REVERSAL", :"ROAR", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SCALESHOT", :"SCARYFACE", :"SCREECH", :"SECRETPOWER", :"SHADOWCLAW", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"STEALTHROCK", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUPERPOWER", :"SWAGGER", :"SWORDSDANCE", :"TAUNT", :"THUNDERPUNCH", :"TOXIC", :"UPROAR", :"WATERPULSE", :"WORKUP", :"XSCISSOR", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"KOMMOO" do |m|
  m.back_sprite -10, 61
  m.front_sprite 6, 18
end