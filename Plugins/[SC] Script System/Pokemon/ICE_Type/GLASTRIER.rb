#=============================================================================
# Glastrier - ICE Type
#=============================================================================

GameData::Species.define :"GLASTRIER" do |pkmn|
  pkmn.name "Glastrier"
  pkmn.types :"ICE"
  pkmn.base_stats hp: 100, attack: 145, defense: 130,
                  sp_atk: 30, sp_def: 65, speed: 110
  pkmn.abilities :"CHILLINGNEIGH"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"White"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 290
  pkmn.catch_rate 3
  pkmn.happiness 35
  pkmn.hatch_steps 30720
  pkmn.height 2.2
  pkmn.weight 800.0
  pkmn.category "Wild Horse"
  pkmn.pokedex_entry "Glastrier has tremendous physical strength, and the mask of ice covering its face is 100 times harder than diamond."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"TAILWHIP"
    m.at 6, :"DOUBLEKICK"
    m.at 12, :"AVALANCHE"
    m.at 18, :"STOMP"
    m.at 24, :"TORMENT"
    m.at 30, :"MIST"
    m.at 36, :"ICICLECRASH"
    m.at 42, :"TAKEDOWN"
    m.at 48, :"IRONDEFENSE"
    m.at 54, :"THRASH"
    m.at 60, :"TAUNT"
    m.at 66, :"DOUBLEEDGE"
    m.at 72, :"SWORDSDANCE"
  end
  pkmn.tutor_moves :"ASSURANCE", :"AVALANCHE", :"BLIZZARD", :"BODYPRESS", :"BODYSLAM", :"BULLDOZE", :"CLOSECOMBAT", :"CONFIDE", :"CRUNCH", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HEAVYSLAM", :"HIDDENPOWER", :"HIGHHORSEPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICICLESPEAR", :"ICYWIND", :"IRONDEFENSE", :"LASHOUT", :"MEGAHORN", :"MIMIC", :"MUDSHOT", :"NATURALGIFT", :"OUTRAGE", :"PAYBACK", :"PROTECT", :"REST", :"RETURN", :"ROUND", :"SCARYFACE", :"SECRETPOWER", :"SLEEPTALK", :"SMARTSTRIKE", :"SNARL", :"SNORE", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUPERPOWER", :"SWAGGER", :"SWORDSDANCE", :"TAUNT", :"THROATCHOP", :"TOXIC", :"UPROAR", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"GLASTRIER" do |m|
  m.back_sprite -1, 33
  m.front_sprite 0, 7
end