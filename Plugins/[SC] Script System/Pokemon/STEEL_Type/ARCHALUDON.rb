#=============================================================================
# Archaludon - STEEL Type
#=============================================================================

GameData::Species.define :"ARCHALUDON" do |pkmn|
  pkmn.name "Archaludon"
  pkmn.types :"STEEL", :"DRAGON"
  pkmn.base_stats hp: 90, attack: 105, defense: 130,
                  sp_atk: 85, sp_def: 125, speed: 65
  pkmn.abilities :"STAMINA", :"STURDY"
  pkmn.hidden_abilities :"STALWART"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"White"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 300
  pkmn.catch_rate 10
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 2.0
  pkmn.weight 60.0
  pkmn.category "Alloy"
  pkmn.pokedex_entry "It digs holes on mountains, searching for food. It’s so durable that being caught in a cave-in won’t faze it."
  pkmn.evs defense: 3
  pkmn.egg_groups :"Mineral", :"Dragon"

  pkmn.moves do |m|
    m.at 0, :"ELECTROSHOT"
    m.at 1, :"LEER"
    m.at 1, :"METALCLAW"
    m.at 6, :"ROCKSMASH"
    m.at 12, :"HONECLAWS"
    m.at 18, :"METALSOUND"
    m.at 24, :"BREAKINGSWIPE"
    m.at 30, :"DRAGONTAIL"
    m.at 36, :"IRONDEFENSE"
    m.at 42, :"FOCUSENERGY"
    m.at 48, :"DRAGONCLAW"
    m.at 54, :"FLASHCANNON"
    m.at 60, :"METALBURST"
    m.at 66, :"HYPERBEAM"
  end
  pkmn.tutor_moves :"AURASPHERE", :"BODYPRESS", :"BODYSLAM", :"BREAKINGSWIPE", :"BRICKBREAK", :"DARKPULSE", :"DOUBLEEDGE", :"DRACOMETEOR", :"DRAGONCHEER", :"DRAGONCLAW", :"DRAGONPULSE", :"DRAGONTAIL", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FLASHCANNON", :"FOULPLAY", :"GIGAIMPACT", :"GYROBALL", :"HARDPRESS", :"HEAVYSLAM", :"HYPERBEAM", :"IRONDEFENSE", :"IRONHEAD", :"LIGHTSCREEN", :"METALCLAW", :"METALSOUND", :"METEORBEAM", :"OUTRAGE", :"PROTECT", :"REFLECT", :"REST", :"ROAR", :"ROCKSLIDE", :"ROCKTOMB", :"SCARYFACE", :"SLEEPTALK", :"SMACKDOWN", :"SNARL", :"SOLARBEAM", :"STEALTHROCK", :"STEELBEAM", :"STONEEDGE", :"SUBSTITUTE", :"SWORDSDANCE", :"TAKEDOWN", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE"
end

GameData::SpeciesMetrics.define :"ARCHALUDON" do |m|
  m.back_sprite 0, 58
  m.front_sprite 0, 10
  m.shadow_sprite 0, 0, 3
end