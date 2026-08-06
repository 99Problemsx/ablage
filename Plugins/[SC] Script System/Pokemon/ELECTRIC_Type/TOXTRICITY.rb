#=============================================================================
# Toxtricity - ELECTRIC Type
#=============================================================================

GameData::Species.define :"TOXTRICITY" do |pkmn|
  pkmn.name "Toxtricity"
  pkmn.form_name "Amped Form"
  pkmn.types :"ELECTRIC", :"POISON"
  pkmn.base_stats hp: 75, attack: 98, defense: 70,
                  sp_atk: 75, sp_def: 114, speed: 70
  pkmn.abilities :"PUNKROCK", :"PLUS"
  pkmn.hidden_abilities :"TECHNICIAN"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Purple"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 176
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 6400
  pkmn.height 1.6
  pkmn.weight 40.0
  pkmn.category "Punk"
  pkmn.pokedex_entry "When this Pokémon sounds as if it's strumming a guitar, it's actually clawing at the protrusions on its chest to generate electricity."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Humanlike"

  pkmn.moves do |m|
    m.at 0, :"SPARK"
    m.at 1, :"EERIEIMPULSE"
    m.at 1, :"BELCH"
    m.at 1, :"TEARFULLOOK"
    m.at 1, :"NUZZLE"
    m.at 1, :"GROWL"
    m.at 1, :"FLAIL"
    m.at 1, :"ACID"
    m.at 1, :"THUNDERSHOCK"
    m.at 1, :"ACIDSPRAY"
    m.at 1, :"LEER"
    m.at 1, :"NOBLEROAR"
    m.at 4, :"CHARGE"
    m.at 8, :"SHOCKWAVE"
    m.at 12, :"SCARYFACE"
    m.at 16, :"TAUNT"
    m.at 20, :"VENOSHOCK"
    m.at 24, :"SCREECH"
    m.at 28, :"SWAGGER"
    m.at 32, :"TOXIC"
    m.at 36, :"DISCHARGE"
    m.at 40, :"POISONJAB"
    m.at 44, :"OVERDRIVE"
    m.at 48, :"BOOMBURST"
    m.at 52, :"SHIFTGEAR"
  end
  pkmn.tutor_moves :"ATTRACT", :"CAPTIVATE", :"CONFIDE", :"DOUBLETEAM", :"DRAINPUNCH", :"EERIEIMPULSE", :"ELECTROBALL", :"ENCORE", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLING", :"FRUSTRATION", :"GIGAIMPACT", :"GUNKSHOT", :"HEX", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"REST", :"RETURN", :"RISINGVOLTAGE", :"ROUND", :"SCARYFACE", :"SCREECH", :"SECRETPOWER", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SNARL", :"SNORE", :"STOREDPOWER", :"SUBSTITUTE", :"SWAGGER", :"SWIFT", :"TAUNT", :"THROATCHOP", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"UPROAR", :"VENOSHOCK", :"VOLTSWITCH", :"WILDCHARGE", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"TOXTRICITY" do |m|
  m.back_sprite 3, 59
  m.front_sprite -2, 3
end

# Form 1 - Amped Form
GameData::Species.define :"TOXTRICITY_1" do |pkmn|
  pkmn.species :"TOXTRICITY"
  pkmn.form 1
  pkmn.name "Toxtricity"
  pkmn.form_name "Amped Form"
  pkmn.types :"ELECTRIC", :"POISON"
  pkmn.base_stats hp: 75, attack: 98, defense: 70,
                  sp_atk: 75, sp_def: 114, speed: 70
  pkmn.abilities :"PUNKROCK", :"PLUS"
  pkmn.hidden_abilities :"TECHNICIAN"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Purple"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 176
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 6400
  pkmn.height 1.6
  pkmn.weight 40.0
  pkmn.category "Punk"
  pkmn.pokedex_entry "When this Pokémon sounds as if it's strumming a guitar, it's actually clawing at the protrusions on its chest to generate electricity."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Humanlike"

  pkmn.moves do |m|
    m.at 0, :"SPARK"
    m.at 1, :"EERIEIMPULSE"
    m.at 1, :"BELCH"
    m.at 1, :"TEARFULLOOK"
    m.at 1, :"NUZZLE"
    m.at 1, :"GROWL"
    m.at 1, :"FLAIL"
    m.at 1, :"ACID"
    m.at 1, :"THUNDERSHOCK"
    m.at 1, :"ACIDSPRAY"
    m.at 1, :"LEER"
    m.at 1, :"NOBLEROAR"
    m.at 4, :"CHARGE"
    m.at 8, :"SHOCKWAVE"
    m.at 12, :"SCARYFACE"
    m.at 16, :"TAUNT"
    m.at 20, :"VENOSHOCK"
    m.at 24, :"SCREECH"
    m.at 28, :"SWAGGER"
    m.at 32, :"TOXIC"
    m.at 36, :"DISCHARGE"
    m.at 40, :"POISONJAB"
    m.at 44, :"OVERDRIVE"
    m.at 48, :"BOOMBURST"
    m.at 52, :"SHIFTGEAR"
  end
  pkmn.tutor_moves :"ATTRACT", :"CAPTIVATE", :"CONFIDE", :"DOUBLETEAM", :"DRAINPUNCH", :"EERIEIMPULSE", :"ELECTROBALL", :"ENCORE", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLING", :"FRUSTRATION", :"GIGAIMPACT", :"GUNKSHOT", :"HEX", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"REST", :"RETURN", :"RISINGVOLTAGE", :"ROUND", :"SCARYFACE", :"SCREECH", :"SECRETPOWER", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SNARL", :"SNORE", :"STOREDPOWER", :"SUBSTITUTE", :"SWAGGER", :"SWIFT", :"TAUNT", :"THROATCHOP", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"UPROAR", :"VENOSHOCK", :"VOLTSWITCH", :"WILDCHARGE", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"TOXTRICITY_1" do |m|
  m.back_sprite 3, 59
  m.front_sprite -2, 3
end