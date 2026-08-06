#=============================================================================
# Regidrago - DRAGON Type
#=============================================================================

GameData::Species.define :"REGIDRAGO" do |pkmn|
  pkmn.name "Regidrago"
  pkmn.types :"DRAGON"
  pkmn.base_stats hp: 200, attack: 100, defense: 50,
                  sp_atk: 80, sp_def: 100, speed: 50
  pkmn.abilities :"DRAGONSMAW"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Green"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 290
  pkmn.catch_rate 3
  pkmn.happiness 35
  pkmn.hatch_steps 30720
  pkmn.height 2.1
  pkmn.weight 200.0
  pkmn.category "Dragon Orb"
  pkmn.pokedex_entry "Its body is composed of crystallized dragon energy. Regidrago is said to have the powers of every dragon Pokémon."
  pkmn.evs hp: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"TWISTER"
    m.at 1, :"VISEGRIP"
    m.at 6, :"BITE"
    m.at 12, :"ANCIENTPOWER"
    m.at 18, :"DRAGONBREATH"
    m.at 24, :"FOCUSENERGY"
    m.at 30, :"CRUNCH"
    m.at 36, :"DRAGONCLAW"
    m.at 42, :"HAMMERARM"
    m.at 48, :"DRAGONDANCE"
    m.at 54, :"THRASH"
    m.at 60, :"LASERFOCUS"
    m.at 66, :"DRAGONENERGY"
    m.at 72, :"HYPERBEAM"
    m.at 78, :"EXPLOSION"
  end
  pkmn.tutor_moves :"BODYSLAM", :"BREAKINGSWIPE", :"CONFIDE", :"CRUNCH", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONCLAW", :"DRAGONDANCE", :"DRAGONPULSE", :"ENDURE", :"FACADE", :"FIREFANG", :"FOCUSENERGY", :"FRUSTRATION", :"GIGAIMPACT", :"HIDDENPOWER", :"HYPERBEAM", :"LIGHTSCREEN", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PROTECT", :"REFLECT", :"REST", :"RETURN", :"REVERSAL", :"ROUND", :"SCALESHOT", :"SECRETPOWER", :"SELFDESTRUCT", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"THUNDERFANG", :"TOXIC", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"REGIDRAGO" do |m|
  m.back_sprite 2, 46
  m.front_sprite 1, 6
end