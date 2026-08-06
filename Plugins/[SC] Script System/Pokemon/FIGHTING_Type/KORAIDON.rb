#=============================================================================
# Koraidon - FIGHTING Type
#=============================================================================

GameData::Species.define :"KORAIDON" do |pkmn|
  pkmn.name "Koraidon"
  pkmn.types :"FIGHTING", :"DRAGON"
  pkmn.base_stats hp: 100, attack: 135, defense: 115,
                  sp_atk: 135, sp_def: 85, speed: 100
  pkmn.abilities :"ORICHALCUMPULSE"
  pkmn.flags :"Paradox", :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Red"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 335
  pkmn.catch_rate 3
  pkmn.happiness 0
  pkmn.hatch_steps 12800
  pkmn.height 2.5
  pkmn.weight 303.0
  pkmn.category "Paradox"
  pkmn.pokedex_entry "This seems to be the Winged King mentioned in an old expedition journal. It was said to have split the land with its bare fists."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"BREAKINGSWIPE"
    m.at 1, :"SUNNYDAY"
    m.at 7, :"ROCKSMASH"
    m.at 14, :"ANCIENTPOWER"
    m.at 21, :"DRAINPUNCH"
    m.at 28, :"BRICKBREAK"
    m.at 35, :"AGILITY"
    m.at 42, :"DRAGONCLAW"
    m.at 49, :"FLAMETHROWER"
    m.at 56, :"COLLISIONCOURSE"
    m.at 63, :"SCREECH"
    m.at 70, :"COUNTER"
    m.at 77, :"OUTRAGE"
    m.at 84, :"CLOSECOMBAT"
    m.at 91, :"FLAREBLITZ"
    m.at 98, :"GIGAIMPACT"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AGILITY", :"BODYPRESS", :"BODYSLAM", :"BREAKINGSWIPE", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CLOSECOMBAT", :"CRUNCH", :"DIG", :"DOUBLEEDGE", :"DRACOMETEOR", :"DRAGONCHEER", :"DRAGONCLAW", :"DRAGONPULSE", :"DRAGONTAIL", :"DRAINPUNCH", :"DUALWINGBEAT", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREFANG", :"FIRESPIN", :"FLAMECHARGE", :"FLAMETHROWER", :"FLAREBLITZ", :"FOCUSBLAST", :"FOCUSPUNCH", :"GIGAIMPACT", :"HEATCRASH", :"HEATWAVE", :"HEAVYSLAM", :"HELPINGHAND", :"HYPERBEAM", :"ICEFANG", :"IRONHEAD", :"LOWKICK", :"LOWSWEEP", :"METEORBEAM", :"MUDSHOT", :"MUDSLAP", :"OUTRAGE", :"OVERHEAT", :"PROTECT", :"REST", :"REVERSAL", :"ROAR", :"SCALESHOT", :"SCARYFACE", :"SHADOWCLAW", :"SLEEPTALK", :"SNARL", :"SOLARBEAM", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUNNYDAY", :"SWORDSDANCE", :"TAKEDOWN", :"TAUNT", :"TEMPERFLARE", :"THUNDERFANG", :"UPROAR", :"UTURN", :"WILDCHARGE", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"KORAIDON" do |m|
  m.back_sprite -15, 44
  m.front_sprite 7, 6
  m.shadow_sprite 0, 0, 3
end