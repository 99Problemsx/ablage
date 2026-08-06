#=============================================================================
# Pheromosa - BUG Type
#=============================================================================

GameData::Species.define :"PHEROMOSA" do |pkmn|
  pkmn.name "Pheromosa"
  pkmn.types :"BUG", :"FIGHTING"
  pkmn.base_stats hp: 71, attack: 137, defense: 37,
                  sp_atk: 151, sp_def: 137, speed: 37
  pkmn.abilities :"BEASTBOOST"
  pkmn.flags :"UltraBeast"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"White"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 285
  pkmn.catch_rate 45
  pkmn.happiness 0
  pkmn.hatch_steps 30720
  pkmn.height 1.8
  pkmn.weight 25.0
  pkmn.category "Lissome"
  pkmn.pokedex_entry "One of the Ultra Beasts. It refuses to touch anything, perhaps because it senses some uncleanness in this world."
  pkmn.evs speed: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"FEINT"
    m.at 1, :"RAPIDSPIN"
    m.at 5, :"LEER"
    m.at 10, :"QUICKGUARD"
    m.at 15, :"BUGBITE"
    m.at 20, :"LOWKICK"
    m.at 25, :"DOUBLEKICK"
    m.at 30, :"TRIPLEKICK"
    m.at 35, :"STOMP"
    m.at 40, :"AGILITY"
    m.at 45, :"LUNGE"
    m.at 50, :"BOUNCE"
    m.at 55, :"SPEEDSWAP"
    m.at 60, :"BUGBUZZ"
    m.at 65, :"QUIVERDANCE"
    m.at 70, :"HIGHJUMPKICK"
  end
  pkmn.tutor_moves :"AGILITY", :"ASSURANCE", :"BLIZZARD", :"BLOCK", :"BOUNCE", :"BRICKBREAK", :"BUGBITE", :"BUGBUZZ", :"CLOSECOMBAT", :"COACHING", :"CONFIDE", :"DOUBLETEAM", :"DRILLRUN", :"ECHOEDVOICE", :"ELECTROWEB", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLING", :"FOCUSBLAST", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"LASERFOCUS", :"LOWKICK", :"LOWSWEEP", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"POISONJAB", :"PROTECT", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SECRETPOWER", :"SHOCKWAVE", :"SIGNALBEAM", :"SKITTERSMACK", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SPEEDSWAP", :"SUBSTITUTE", :"SWAGGER", :"SWIFT", :"TAUNT", :"THROATCHOP", :"TORMENT", :"TOXIC", :"TRIPLEAXEL", :"UTURN", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"PHEROMOSA" do |m|
  m.back_sprite 0, 58
  m.front_sprite 0, 5
end