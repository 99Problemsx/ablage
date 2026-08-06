#=============================================================================
# Spinarak - BUG Type
#=============================================================================

GameData::Species.define :"SPINARAK" do |pkmn|
  pkmn.name "Spinarak"
  pkmn.types :"BUG", :"POISON"
  pkmn.base_stats hp: 40, attack: 60, defense: 40,
                  sp_atk: 30, sp_def: 40, speed: 40
  pkmn.abilities :"SWARM", :"INSOMNIA"
  pkmn.hidden_abilities :"SNIPER"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Green"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 50
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.5
  pkmn.weight 8.5
  pkmn.category "String Spit"
  pkmn.pokedex_entry "The web it spins can be considered its second nervous system. It is said that a Spinarak determines its prey by the tiny vibrations it feels through the web."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"POISONSTING"
    m.at 1, :"STRINGSHOT"
    m.at 5, :"SCARYFACE"
    m.at 8, :"CONSTRICT"
    m.at 12, :"LEECHLIFE"
    m.at 15, :"NIGHTSHADE"
    m.at 19, :"SHADOWSNEAK"
    m.at 22, :"FURYSWIPES"
    m.at 26, :"SUCKERPUNCH"
    m.at 29, :"SPIDERWEB"
    m.at 33, :"AGILITY"
    m.at 36, :"PINMISSILE"
    m.at 40, :"PSYCHIC"
    m.at 43, :"POISONJAB"
    m.at 47, :"CROSSPOISON"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BOUNCE", :"BUGBITE", :"CAPTIVATE", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ELECTROWEB", :"ENDURE", :"FACADE", :"FLASH", :"FOULPLAY", :"FRUSTRATION", :"GIGADRAIN", :"HIDDENPOWER", :"HONECLAWS", :"MIMIC", :"NATURALGIFT", :"POISONJAB", :"PROTECT", :"PSYCHIC", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SIGNALBEAM", :"SLEEPTALK", :"SLUDGEBOMB", :"SOLARBEAM", :"STRINGSHOT", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"THIEF", :"TOXIC", :"VENOSHOCK", :"XSCISSOR"
  pkmn.egg_moves :"BATONPASS", :"DISABLE", :"ELECTROWEB", :"NIGHTSLASH", :"PSYBEAM", :"PURSUIT", :"RAGEPOWDER", :"SIGNALBEAM", :"SONICBOOM", :"TOXICSPIKES", :"TWINEEDLE"
end

GameData::SpeciesMetrics.define :"SPINARAK" do |m|
  m.back_sprite 0, 0
  m.front_sprite 1, 30
  m.shadow_sprite 0, 0, 2
end