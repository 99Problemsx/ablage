#=============================================================================
# Klink - STEEL Type
#=============================================================================

GameData::Species.define :"KLINK" do |pkmn|
  pkmn.name "Klink"
  pkmn.types :"STEEL"
  pkmn.base_stats hp: 40, attack: 55, defense: 70,
                  sp_atk: 30, sp_def: 45, speed: 60
  pkmn.abilities :"PLUS", :"MINUS"
  pkmn.hidden_abilities :"CLEARBODY"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Gray"
  pkmn.shape :"MultiBody"
  pkmn.base_exp 60
  pkmn.catch_rate 130
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.3
  pkmn.weight 21.0
  pkmn.category "Gear"
  pkmn.pokedex_entry "Interlocking two bodies and spinning around generates the energy they need to live."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"VICEGRIP"
    m.at 6, :"CHARGE"
    m.at 11, :"THUNDERSHOCK"
    m.at 16, :"GEARGRIND"
    m.at 21, :"BIND"
    m.at 26, :"CHARGEBEAM"
    m.at 31, :"AUTOTOMIZE"
    m.at 36, :"MIRRORSHOT"
    m.at 39, :"SCREECH"
    m.at 42, :"DISCHARGE"
    m.at 45, :"METALSOUND"
    m.at 48, :"SHIFTGEAR"
    m.at 51, :"LOCKON"
    m.at 54, :"ZAPCANNON"
    m.at 57, :"HYPERBEAM"
  end
  pkmn.tutor_moves :"BIND", :"CHARGEBEAM", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FLASHCANNON", :"FRUSTRATION", :"GRAVITY", :"HIDDENPOWER", :"HYPERBEAM", :"IRONDEFENSE", :"MAGICCOAT", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RECYCLE", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSMASH", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"UPROAR", :"VOLTSWITCH", :"WILDCHARGE"
end

GameData::SpeciesMetrics.define :"KLINK" do |m|
  m.back_sprite 2, 0
  m.front_sprite -2, 14
  m.shadow_sprite 0, 0, 2
end