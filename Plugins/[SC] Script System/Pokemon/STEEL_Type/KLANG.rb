#=============================================================================
# Klang - STEEL Type
#=============================================================================

GameData::Species.define :"KLANG" do |pkmn|
  pkmn.name "Klang"
  pkmn.types :"STEEL"
  pkmn.base_stats hp: 60, attack: 80, defense: 95,
                  sp_atk: 50, sp_def: 70, speed: 85
  pkmn.abilities :"PLUS", :"MINUS"
  pkmn.hidden_abilities :"CLEARBODY"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Gray"
  pkmn.shape :"MultiBody"
  pkmn.base_exp 154
  pkmn.catch_rate 60
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.6
  pkmn.weight 51.0
  pkmn.category "Gear"
  pkmn.pokedex_entry "Spinning minigears are rotated at high speed and repeatedly fired away. It is dangerous if the gears don't return."
  pkmn.evs defense: 2
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
    m.at 26, :"CHARGEBEAM"
    m.at 31, :"AUTOTOMIZE"
    m.at 36, :"MIRRORSHOT"
    m.at 40, :"SCREECH"
    m.at 44, :"DISCHARGE"
    m.at 48, :"METALSOUND"
    m.at 52, :"SHIFTGEAR"
    m.at 56, :"LOCKON"
    m.at 60, :"ZAPCANNON"
    m.at 64, :"HYPERBEAM"
  end
  pkmn.tutor_moves :"BIND", :"CHARGEBEAM", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FLASHCANNON", :"FRUSTRATION", :"GRAVITY", :"HIDDENPOWER", :"HYPERBEAM", :"IRONDEFENSE", :"MAGICCOAT", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RECYCLE", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSMASH", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"UPROAR", :"VOLTSWITCH", :"WILDCHARGE"
end

GameData::SpeciesMetrics.define :"KLANG" do |m|
  m.back_sprite 1, 0
  m.front_sprite -1, 13
  m.shadow_sprite 0, 0, 3
end