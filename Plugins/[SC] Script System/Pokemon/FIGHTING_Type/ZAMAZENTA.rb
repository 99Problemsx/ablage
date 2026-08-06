#=============================================================================
# Zamazenta - FIGHTING Type
#=============================================================================

GameData::Species.define :"ZAMAZENTA" do |pkmn|
  pkmn.name "Zamazenta"
  pkmn.form_name "Hero of Many Battles"
  pkmn.types :"FIGHTING"
  pkmn.base_stats hp: 92, attack: 130, defense: 115,
                  sp_atk: 138, sp_def: 80, speed: 115
  pkmn.abilities :"DAUNTLESSSHIELD"
  pkmn.flags :"CannotDynamax"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Red"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 335
  pkmn.catch_rate 10
  pkmn.happiness 0
  pkmn.hatch_steps 30720
  pkmn.height 2.9
  pkmn.weight 210.0
  pkmn.category "Warrior"
  pkmn.pokedex_entry "This Pokémon slept for aeons while in the form of a statue. It was asleep for so long, people forgot that it ever existed."
  pkmn.evs speed: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"METALBURST"
    m.at 1, :"WIDEGUARD"
    m.at 1, :"METALCLAW"
    m.at 1, :"HOWL"
    m.at 1, :"QUICKATTACK"
    m.at 1, :"BITE"
    m.at 11, :"SLASH"
    m.at 22, :"IRONDEFENSE"
    m.at 33, :"IRONHEAD"
    m.at 44, :"LASERFOCUS"
    m.at 55, :"CRUNCH"
    m.at 66, :"MOONBLAST"
    m.at 77, :"CLOSECOMBAT"
    m.at 88, :"GIGAIMPACT"
  end
  pkmn.tutor_moves :"AGILITY", :"CLOSECOMBAT", :"COACHING", :"CONFIDE", :"CRUNCH", :"DAZZLINGGLEAM", :"DIG", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FIREFANG", :"FLASHCANNON", :"FOCUSBLAST", :"FOCUSENERGY", :"FRUSTRATION", :"GIGAIMPACT", :"GUARDSWAP", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"ICEFANG", :"IMPRISON", :"IRONDEFENSE", :"IRONHEAD", :"IRONTAIL", :"LIGHTSCREEN", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"PLAYROUGH", :"POWERSWAP", :"PROTECT", :"PSYCHICFANGS", :"REFLECT", :"REST", :"RETALIATE", :"RETURN", :"REVENGE", :"REVERSAL", :"ROUND", :"SAFEGUARD", :"SCARYFACE", :"SECRETPOWER", :"SLEEPTALK", :"SNARL", :"SNORE", :"SOLARBEAM", :"STEELBEAM", :"SUBSTITUTE", :"SWAGGER", :"SWIFT", :"TAILSLAP", :"THUNDERFANG", :"TOXIC", :"WILDCHARGE", :"WORKUP", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"ZAMAZENTA" do |m|
  m.back_sprite -3, 48
  m.front_sprite 0, 8
end