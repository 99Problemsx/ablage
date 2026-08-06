#=============================================================================
# Kartana - GRASS Type
#=============================================================================

GameData::Species.define :"KARTANA" do |pkmn|
  pkmn.name "Kartana"
  pkmn.types :"GRASS", :"STEEL"
  pkmn.base_stats hp: 59, attack: 181, defense: 131,
                  sp_atk: 109, sp_def: 59, speed: 31
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
  pkmn.height 0.3
  pkmn.weight 0.1
  pkmn.category "Drawn Sword"
  pkmn.pokedex_entry "One of the Ultra Beast life-forms, it was observed cutting down a gigantic steel tower with one stroke of its blade."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"FURYCUTTER"
    m.at 1, :"VACUUMWAVE"
    m.at 5, :"RAZORLEAF"
    m.at 10, :"FALSESWIPE"
    m.at 15, :"CUT"
    m.at 20, :"AIRCUTTER"
    m.at 25, :"AERIALACE"
    m.at 30, :"DETECT"
    m.at 35, :"NIGHTSLASH"
    m.at 40, :"SYNTHESIS"
    m.at 45, :"LASERFOCUS"
    m.at 50, :"DEFOG"
    m.at 55, :"LEAFBLADE"
    m.at 60, :"SACREDSWORD"
    m.at 65, :"SWORDSDANCE"
    m.at 70, :"GUILLOTINE"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRSLASH", :"BRICKBREAK", :"CALMMIND", :"CONFIDE", :"DEFOG", :"DOUBLETEAM", :"ENDURE", :"FALSESWIPE", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"HIDDENPOWER", :"IRONDEFENSE", :"KNOCKOFF", :"LASERFOCUS", :"LASTRESORT", :"LEAFBLADE", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"PSYCHOCUT", :"REST", :"RETURN", :"ROUND", :"SCREECH", :"SECRETPOWER", :"SLEEPTALK", :"SMARTSTRIKE", :"SNORE", :"SOLARBLADE", :"STEELBEAM", :"SUBSTITUTE", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"TAILWIND", :"TOXIC", :"XSCISSOR", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"KARTANA" do |m|
  m.back_sprite 3, 48
  m.front_sprite -2, 7
  m.shadow_sprite 0, 0, -1
end