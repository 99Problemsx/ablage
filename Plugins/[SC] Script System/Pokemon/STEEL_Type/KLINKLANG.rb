#=============================================================================
# Klinklang - STEEL Type
#=============================================================================

GameData::Species.define :"KLINKLANG" do |pkmn|
  pkmn.name "Klinklang"
  pkmn.types :"STEEL"
  pkmn.base_stats hp: 60, attack: 100, defense: 115,
                  sp_atk: 90, sp_def: 70, speed: 85
  pkmn.abilities :"PLUS", :"MINUS"
  pkmn.hidden_abilities :"CLEARBODY"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Gray"
  pkmn.shape :"MultiBody"
  pkmn.base_exp 234
  pkmn.catch_rate 30
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.6
  pkmn.weight 81.0
  pkmn.category "Gear"
  pkmn.pokedex_entry "The gear with the red core is rotated at high speed for a rapid energy charge."
  pkmn.evs defense: 3
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"VICEGRIP"
    m.at 1, :"CHARGE"
    m.at 1, :"THUNDERSHOCK"
    m.at 1, :"GEARGRIND"
    m.at 6, :"CHARGE"
    m.at 11, :"THUNDERSHOCK"
    m.at 16, :"GEARGRIND"
    m.at 21, :"BIND"
    m.at 25, :"CHARGEBEAM"
    m.at 31, :"AUTOTOMIZE"
    m.at 36, :"MIRRORSHOT"
    m.at 40, :"SCREECH"
    m.at 44, :"DISCHARGE"
    m.at 48, :"METALSOUND"
    m.at 54, :"SHIFTGEAR"
    m.at 60, :"LOCKON"
    m.at 66, :"ZAPCANNON"
    m.at 72, :"HYPERBEAM"
  end
  pkmn.tutor_moves :"BIND", :"CHARGEBEAM", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FLASHCANNON", :"FRUSTRATION", :"GIGAIMPACT", :"GRAVITY", :"HIDDENPOWER", :"HYPERBEAM", :"IRONDEFENSE", :"MAGICCOAT", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RECYCLE", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSMASH", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"TRICKROOM", :"UPROAR", :"VOLTSWITCH", :"WILDCHARGE"
end

GameData::SpeciesMetrics.define :"KLINKLANG" do |m|
  m.back_sprite 1, 0
  m.front_sprite 0, 11
  m.shadow_sprite 0, 0, 3
end