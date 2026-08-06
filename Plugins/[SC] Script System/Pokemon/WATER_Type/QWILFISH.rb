#=============================================================================
# Qwilfish - WATER Type
#=============================================================================

GameData::Species.define :"QWILFISH" do |pkmn|
  pkmn.name "Qwilfish"
  pkmn.types :"WATER", :"POISON"
  pkmn.base_stats hp: 65, attack: 95, defense: 75,
                  sp_atk: 85, sp_def: 55, speed: 55
  pkmn.abilities :"POISONPOINT", :"SWIFTSWIM"
  pkmn.hidden_abilities :"INTIMIDATE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"Finned"
  pkmn.base_exp 86
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.5
  pkmn.weight 3.9
  pkmn.category "Balloon"
  pkmn.pokedex_entry "A Qwilfish uses the pressure of water it swallows to shoot toxic quills all at once from all over its body. It finds swimming to be somewhat challenging."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Water2"

  pkmn.moves do |m|
    m.at 1, :"SPIKES"
    m.at 1, :"TACKLE"
    m.at 1, :"POISONSTING"
    m.at 9, :"HARDEN"
    m.at 9, :"MINIMIZE"
    m.at 13, :"WATERGUN"
    m.at 17, :"ROLLOUT"
    m.at 21, :"TOXICSPIKES"
    m.at 25, :"STOCKPILE"
    m.at 25, :"SPITUP"
    m.at 29, :"REVENGE"
    m.at 33, :"BRINE"
    m.at 37, :"PINMISSILE"
    m.at 41, :"TAKEDOWN"
    m.at 45, :"AQUATAIL"
    m.at 49, :"POISONJAB"
    m.at 53, :"DESTINYBOND"
    m.at 57, :"HYDROPUMP"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"BLIZZARD", :"BOUNCE", :"BRINE", :"CAPTIVATE", :"DEFENSECURL", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"EXPLOSION", :"FACADE", :"FRUSTRATION", :"GYROBALL", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"MIMIC", :"NATURALGIFT", :"PAINSPLIT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROLLOUT", :"ROUND", :"SCALD", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"SWIFT", :"TAUNT", :"THUNDERWAVE", :"TOXIC", :"VENOSHOCK", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL"
  pkmn.egg_moves :"ACIDSPRAY", :"AQUAJET", :"ASTONISH", :"BRINE", :"BUBBLEBEAM", :"FLAIL", :"HAZE", :"SIGNALBEAM", :"SUPERSONIC", :"WATERPULSE"
end

GameData::SpeciesMetrics.define :"QWILFISH" do |m|
  m.back_sprite -5, 0
  m.front_sprite 4, 9
  m.shadow_sprite 0, 0, 2
end

# Form 1 - Hisuian
GameData::Species.define :"QWILFISH_1" do |pkmn|
  pkmn.species :"QWILFISH"
  pkmn.form 1
  pkmn.name "Qwilfish"
  pkmn.form_name "Hisuian"
  pkmn.types :"DARK", :"POISON"
  pkmn.base_stats hp: 65, attack: 95, defense: 75,
                  sp_atk: 85, sp_def: 55, speed: 55
  pkmn.abilities :"POISONPOINT", :"SWIFTSWIM"
  pkmn.hidden_abilities :"INTIMIDATE"
  pkmn.flags :"InheritFormWithEverStone"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"Finned"
  pkmn.base_exp 86
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.5
  pkmn.weight 3.9
  pkmn.category "Balloon"
  pkmn.pokedex_entry "Fishers detest this troublesome Pokémon because it sprays poison from its spines, getting it everywhere. A different form of Qwilfish lives in other regions."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Water2"

  pkmn.moves do |m|
    m.at 1, :"POISONSTING"
    m.at 1, :"TACKLE"
    m.at 4, :"HARDEN"
    m.at 8, :"BITE"
    m.at 12, :"FELLSTINGER"
    m.at 16, :"MINIMIZE"
    m.at 20, :"SPIKES"
    m.at 24, :"BRINE"
    m.at 28, :"BARBBARRAGE"
    m.at 32, :"PINMISSILE"
    m.at 36, :"TOXICSPIKES"
    m.at 40, :"SPITUP"
    m.at 40, :"STOCKPILE"
    m.at 44, :"TOXIC"
    m.at 48, :"CRUNCH"
    m.at 52, :"ACUPRESSURE"
    m.at 56, :"DESTINYBOND"
  end
  pkmn.tutor_moves :"ACIDSPRAY", :"AGILITY", :"BLIZZARD", :"CHILLINGWATER", :"CRUNCH", :"CURSE", :"DARKPULSE", :"DOUBLEEDGE", :"ENDURE", :"FACADE", :"GIGAIMPACT", :"GUNKSHOT", :"GYROBALL", :"HAZE", :"HEX", :"HYDROPUMP", :"ICEBEAM", :"ICYWIND", :"LASHOUT", :"LIQUIDATION", :"MUDSHOT", :"PAINSPLIT", :"POISONJAB", :"POISONTAIL", :"PROTECT", :"RAINDANCE", :"REST", :"REVERSAL", :"SCALESHOT", :"SCARYFACE", :"SHADOWBALL", :"SLEEPTALK", :"SLUDGEBOMB", :"SPIKES", :"SPITE", :"SUBSTITUTE", :"SURF", :"SWIFT", :"SWORDSDANCE", :"TAKEDOWN", :"TAUNT", :"THROATCHOP", :"TOXIC", :"TOXICSPIKES", :"VENOSHOCK", :"WATERFALL", :"WATERPULSE"
  pkmn.egg_moves :"ACIDSPRAY", :"AQUAJET", :"AQUATAIL", :"ASTONISH", :"BUBBLEBEAM", :"FLAIL", :"HAZE", :"SELFDESTRUCT", :"SUPERSONIC", :"WATERPULSE"
end

GameData::SpeciesMetrics.define :"QWILFISH_1" do |m|
  m.back_sprite 0, 43
  m.front_sprite 0, 11
  m.shadow_sprite 0, 0, 1
end