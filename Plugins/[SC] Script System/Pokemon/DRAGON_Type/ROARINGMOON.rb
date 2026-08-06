#=============================================================================
# Roaring Moon - DRAGON Type
#=============================================================================

GameData::Species.define :"ROARINGMOON" do |pkmn|
  pkmn.name "Roaring Moon"
  pkmn.types :"DRAGON", :"DARK"
  pkmn.base_stats hp: 105, attack: 139, defense: 71,
                  sp_atk: 119, sp_def: 55, speed: 101
  pkmn.abilities :"PROTOSYNTHESIS"
  pkmn.flags :"Paradox"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 295
  pkmn.catch_rate 10
  pkmn.happiness 0
  pkmn.hatch_steps 12800
  pkmn.height 2.0
  pkmn.weight 380.0
  pkmn.category "Paradox"
  pkmn.pokedex_entry "It is possible that this is the creature listed as Roaring Moon in an expedition journal that still holds many mysteries."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at -1, :"BREAKINGSWIPE"
    m.at -1, :"SCALESHOT"
    m.at -1, :"SUNNYDAY"
    m.at -1, :"JAWLOCK"
    m.at 1, :"DRAGONBREATH"
    m.at 1, :"FOCUSENERGY"
    m.at 1, :"BITE"
    m.at 1, :"LEER"
    m.at 7, :"INCINERATE"
    m.at 14, :"HEADBUTT"
    m.at 21, :"SCARYFACE"
    m.at 28, :"DRAGONCLAW"
    m.at 35, :"ZENHEADBUTT"
    m.at 42, :"FLAMETHROWER"
    m.at 49, :"NIGHTSLASH"
    m.at 56, :"DRAGONDANCE"
    m.at 63, :"DRAGONRUSH"
    m.at 70, :"FLY"
    m.at 77, :"THROATCHOP"
    m.at 84, :"ROOST"
    m.at 91, :"DOUBLEEDGE"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AIRSLASH", :"BODYPRESS", :"BODYSLAM", :"BREAKINGSWIPE", :"BRICKBREAK", :"CRUNCH", :"DARKPULSE", :"DIG", :"DOUBLEEDGE", :"DRACOMETEOR", :"DRAGONCHEER", :"DRAGONCLAW", :"DRAGONDANCE", :"DRAGONPULSE", :"DRAGONTAIL", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREFANG", :"FIRESPIN", :"FLAMETHROWER", :"FLY", :"GIGAIMPACT", :"HEATWAVE", :"HURRICANE", :"HYDROPUMP", :"HYPERBEAM", :"HYPERVOICE", :"IRONHEAD", :"KNOCKOFF", :"LASHOUT", :"METALCLAW", :"OUTRAGE", :"PROTECT", :"REST", :"ROAR", :"ROCKSLIDE", :"SCALESHOT", :"SCARYFACE", :"SHADOWCLAW", :"SLEEPTALK", :"SNARL", :"STOMPINGTANTRUM", :"STONEEDGE", :"SUBSTITUTE", :"SUNNYDAY", :"TAILWIND", :"TAKEDOWN", :"TAUNT", :"THROATCHOP", :"THUNDERFANG", :"UTURN", :"XSCISSOR", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"ROARINGMOON" do |m|
  m.back_sprite -4, 49
  m.front_sprite -6, 12
  m.shadow_sprite 0, 0, 3
end