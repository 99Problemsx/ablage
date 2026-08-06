#=============================================================================
# Uxie - PSYCHIC Type
#=============================================================================

GameData::Species.define :"UXIE" do |pkmn|
  pkmn.name "Uxie"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 75, attack: 75, defense: 130,
                  sp_atk: 95, sp_def: 75, speed: 130
  pkmn.abilities :"LEVITATE"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Yellow"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 261
  pkmn.catch_rate 3
  pkmn.happiness 140
  pkmn.hatch_steps 20560
  pkmn.height 0.3
  pkmn.weight 0.3
  pkmn.category "Knowledge"
  pkmn.pokedex_entry "Known as \"The Being of Knowledge.\" It is said that it can wipe out the memory of those who see its eyes."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"REST"
    m.at 1, :"CONFUSION"
    m.at 6, :"IMPRISON"
    m.at 16, :"ENDURE"
    m.at 21, :"SWIFT"
    m.at 31, :"YAWN"
    m.at 36, :"FUTURESIGHT"
    m.at 46, :"AMNESIA"
    m.at 51, :"EXTRASENSORY"
    m.at 61, :"FLAIL"
    m.at 66, :"NATURALGIFT"
    m.at 76, :"MEMENTO"
  end
  pkmn.tutor_moves :"ACROBATICS", :"CALMMIND", :"CHARGEBEAM", :"DOUBLETEAM", :"DREAMEATER", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FIREPUNCH", :"FLASH", :"FLING", :"FOULPLAY", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"HEADBUTT", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"ICEPUNCH", :"IRONTAIL", :"KNOCKOFF", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGICROOM", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TELEKINESIS", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"TRICKROOM", :"UTURN", :"WATERPULSE", :"WONDERROOM", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"UXIE" do |m|
  m.back_sprite -1, 0
  m.front_sprite 0, 2
  m.shadow_sprite 0, 0, 2
end