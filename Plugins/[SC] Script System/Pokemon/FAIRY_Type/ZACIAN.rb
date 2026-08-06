#=============================================================================
# Zacian - FAIRY Type
#=============================================================================

GameData::Species.define :"ZACIAN" do |pkmn|
  pkmn.name "Zacian"
  pkmn.form_name "Hero of Many Battles"
  pkmn.types :"FAIRY"
  pkmn.base_stats hp: 92, attack: 130, defense: 115,
                  sp_atk: 138, sp_def: 80, speed: 115
  pkmn.abilities :"INTREPIDSWORD"
  pkmn.flags :"CannotDynamax"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 335
  pkmn.catch_rate 10
  pkmn.happiness 0
  pkmn.hatch_steps 30720
  pkmn.height 2.8
  pkmn.weight 110.0
  pkmn.category "Warrior"
  pkmn.pokedex_entry "Known as a legendary hero, this Pokémon absorbs metal particles, transforming them into a weapon it uses to battle."
  pkmn.evs speed: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"SACREDSWORD"
    m.at 1, :"QUICKGUARD"
    m.at 1, :"METALCLAW"
    m.at 1, :"HOWL"
    m.at 1, :"QUICKATTACK"
    m.at 1, :"BITE"
    m.at 11, :"SLASH"
    m.at 22, :"SWORDSDANCE"
    m.at 33, :"IRONHEAD"
    m.at 44, :"LASERFOCUS"
    m.at 55, :"CRUNCH"
    m.at 66, :"MOONBLAST"
    m.at 77, :"CLOSECOMBAT"
    m.at 88, :"GIGAIMPACT"
  end
  pkmn.tutor_moves :"AGILITY", :"AIRSLASH", :"ASSURANCE", :"BRICKBREAK", :"BRUTALSWING", :"CLOSECOMBAT", :"CONFIDE", :"CRUNCH", :"DIG", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FIREFANG", :"FOCUSBLAST", :"FOCUSENERGY", :"FRUSTRATION", :"GIGAIMPACT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"ICEFANG", :"IMPRISON", :"IRONHEAD", :"IRONTAIL", :"MIMIC", :"NATURALGIFT", :"PLAYROUGH", :"PROTECT", :"PSYCHICFANGS", :"PSYCHOCUT", :"REST", :"RETALIATE", :"RETURN", :"REVENGE", :"REVERSAL", :"ROUND", :"SCARYFACE", :"SECRETPOWER", :"SLEEPTALK", :"SNARL", :"SNORE", :"SOLARBLADE", :"STEELBEAM", :"SUBSTITUTE", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TAILSLAP", :"THUNDERFANG", :"TOXIC", :"WILDCHARGE", :"WORKUP", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"ZACIAN" do |m|
  m.back_sprite -7, 48
  m.front_sprite 8, 10
end