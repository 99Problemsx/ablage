#=============================================================================
# Duraludon - STEEL Type
#=============================================================================

GameData::Species.define :"DURALUDON" do |pkmn|
  pkmn.name "Duraludon"
  pkmn.types :"STEEL", :"DRAGON"
  pkmn.base_stats hp: 70, attack: 95, defense: 115,
                  sp_atk: 85, sp_def: 120, speed: 50
  pkmn.abilities :"LIGHTMETAL", :"HEAVYMETAL"
  pkmn.hidden_abilities :"STALWART"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"White"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 187
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 7680
  pkmn.height 1.8
  pkmn.weight 40.0
  pkmn.category "Alloy"
  pkmn.pokedex_entry "Its body resembles polished metal, and it's both lightweight and strong. The only drawback is that it rusts easily."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Mineral", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"METALCLAW"
    m.at 1, :"LEER"
    m.at 6, :"ROCKSMASH"
    m.at 12, :"HONECLAWS"
    m.at 18, :"METALSOUND"
    m.at 24, :"BREAKINGSWIPE"
    m.at 30, :"DRAGONTAIL"
    m.at 36, :"IRONDEFENSE"
    m.at 42, :"LASERFOCUS"
    m.at 48, :"DRAGONCLAW"
    m.at 54, :"FLASHCANNON"
    m.at 60, :"METALBURST"
    m.at 66, :"HYPERBEAM"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYPRESS", :"BODYSLAM", :"BREAKINGSWIPE", :"BRICKBREAK", :"CAPTIVATE", :"CONFIDE", :"DARKPULSE", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONCLAW", :"DRAGONPULSE", :"ENDURE", :"FACADE", :"FLASHCANNON", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"GYROBALL", :"HEAVYSLAM", :"HIDDENPOWER", :"HYPERBEAM", :"IRONDEFENSE", :"IRONHEAD", :"LIGHTSCREEN", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PROTECT", :"REFLECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SCARYFACE", :"SCREECH", :"SECRETPOWER", :"SLEEPTALK", :"SNARL", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"STEELBEAM", :"STEELROLLER", :"STOMPINGTANTRUM", :"STONEEDGE", :"SUBSTITUTE", :"SWAGGER", :"SWORDSDANCE", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"TERABLAST"
  pkmn.egg_moves :"MIRRORCOAT", :"NIGHTSLASH", :"SLASH"
end

GameData::SpeciesMetrics.define :"DURALUDON" do |m|
  m.back_sprite 11, 25
  m.front_sprite 0, 10
end