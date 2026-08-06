#=============================================================================
# Klefki - STEEL Type
#=============================================================================

GameData::Species.define :"KLEFKI" do |pkmn|
  pkmn.name "Klefki"
  pkmn.types :"STEEL", :"FAIRY"
  pkmn.base_stats hp: 57, attack: 80, defense: 91,
                  sp_atk: 75, sp_def: 80, speed: 87
  pkmn.abilities :"PRANKSTER"
  pkmn.hidden_abilities :"MAGICIAN"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Gray"
  pkmn.shape :"Head"
  pkmn.base_exp 165
  pkmn.catch_rate 75
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.2
  pkmn.weight 3.0
  pkmn.category "Key Ring"
  pkmn.pokedex_entry "It never lets go of a key that it likes, so people give it the keys to vaults and safes as a way to prevent crime."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"FAIRYLOCK"
    m.at 1, :"ASTONISH"
    m.at 4, :"TACKLE"
    m.at 8, :"FAIRYWIND"
    m.at 12, :"TORMENT"
    m.at 16, :"CRAFTYSHIELD"
    m.at 20, :"METALSOUND"
    m.at 24, :"DRAININGKISS"
    m.at 28, :"RECYCLE"
    m.at 32, :"IMPRISON"
    m.at 36, :"FLASHCANNON"
    m.at 40, :"PLAYROUGH"
    m.at 44, :"MAGICROOM"
    m.at 48, :"FOULPLAY"
    m.at 52, :"LASTRESORT"
  end
  pkmn.tutor_moves :"ATTRACT", :"CALMMIND", :"CAPTIVATE", :"CONFIDE", :"COVET", :"CUT", :"DAZZLINGGLEAM", :"DEFOG", :"DOUBLETEAM", :"DRAININGKISS", :"ENDURE", :"FACADE", :"FLASHCANNON", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"HIDDENPOWER", :"HYPERBEAM", :"IMPRISON", :"IRONDEFENSE", :"LASTRESORT", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGICROOM", :"MAGNETRISE", :"MIMIC", :"MISTYTERRAIN", :"NATURALGIFT", :"PLAYROUGH", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SPIKES", :"STEELBEAM", :"STOREDPOWER", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"THIEF", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TERABLAST"
  pkmn.egg_moves :"MAGNETRISE", :"SWITCHEROO"
end

GameData::SpeciesMetrics.define :"KLEFKI" do |m|
  m.back_sprite 2, 52
  m.front_sprite 0, 6
  m.shadow_sprite 0, 0, -1
end