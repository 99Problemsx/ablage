#=============================================================================
# Bruxish - WATER Type
#=============================================================================

GameData::Species.define :"BRUXISH" do |pkmn|
  pkmn.name "Bruxish"
  pkmn.types :"WATER", :"PSYCHIC"
  pkmn.base_stats hp: 68, attack: 105, defense: 70,
                  sp_atk: 92, sp_def: 70, speed: 70
  pkmn.abilities :"DAZZLING", :"STRONGJAW"
  pkmn.hidden_abilities :"WONDERSKIN"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Pink"
  pkmn.shape :"Finned"
  pkmn.base_exp 166
  pkmn.catch_rate 80
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 0.9
  pkmn.weight 19.0
  pkmn.category "Gnash Teeth"
  pkmn.pokedex_entry "When it unleashes its psychic power from the protuberance on its head, the grating sound of grinding teeth echoes through the area."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Water2"

  pkmn.moves do |m|
    m.at 1, :"WATERGUN"
    m.at 4, :"ASTONISH"
    m.at 9, :"CONFUSION"
    m.at 12, :"BITE"
    m.at 17, :"AQUAJET"
    m.at 20, :"DISABLE"
    m.at 25, :"PSYWAVE"
    m.at 28, :"CRUNCH"
    m.at 33, :"AQUATAIL"
    m.at 36, :"SCREECH"
    m.at 41, :"PSYCHICFANGS"
    m.at 44, :"SYNCHRONOISE"
  end
  pkmn.tutor_moves :"AERIALACE", :"AFTERYOU", :"ALLYSWITCH", :"AQUATAIL", :"ATTRACT", :"BLIZZARD", :"BULKUP", :"CALMMIND", :"CAPTIVATE", :"CONFIDE", :"DOUBLETEAM", :"DREAMEATER", :"EMBARGO", :"ENDURE", :"FACADE", :"FLING", :"FROSTBREATH", :"FRUSTRATION", :"GIGAIMPACT", :"HIDDENPOWER", :"ICEBEAM", :"IRONTAIL", :"LIGHTSCREEN", :"LIQUIDATION", :"MAGICCOAT", :"MAGICROOM", :"MIMIC", :"NATURALGIFT", :"PAINSPLIT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SCALD", :"SECRETPOWER", :"SIGNALBEAM", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"SWORDSDANCE", :"TAUNT", :"TELEKINESIS", :"TORMENT", :"TOXIC", :"TRICKROOM", :"UPROAR", :"VENOSHOCK", :"WATERFALL", :"WATERPULSE", :"WONDERROOM", :"TERABLAST"
  pkmn.egg_moves :"ICEFANG", :"POISONFANG", :"RAGE", :"WATERPULSE"
end

GameData::SpeciesMetrics.define :"BRUXISH" do |m|
  m.back_sprite 0, 9
  m.front_sprite 0, 14
end