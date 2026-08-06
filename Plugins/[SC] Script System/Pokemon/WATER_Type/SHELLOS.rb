#=============================================================================
# Shellos - WATER Type
#=============================================================================

GameData::Species.define :"SHELLOS" do |pkmn|
  pkmn.name "Shellos"
  pkmn.form_name "West Sea"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 76, attack: 48, defense: 48,
                  sp_atk: 34, sp_def: 57, speed: 62
  pkmn.abilities :"STICKYHOLD", :"STORMDRAIN"
  pkmn.hidden_abilities :"SANDFORCE"
  pkmn.flags :"InheritFormFromMother"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Purple"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 65
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.3
  pkmn.weight 6.3
  pkmn.category "Sea Slug"
  pkmn.pokedex_entry "Its colors and shapes differ from region to region. In the Sinnoh region, two types are confirmed."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Water1", :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"MUDSLAP"
    m.at 2, :"MUDSPORT"
    m.at 4, :"HARDEN"
    m.at 7, :"WATERPULSE"
    m.at 11, :"MUDBOMB"
    m.at 16, :"HIDDENPOWER"
    m.at 22, :"RAINDANCE"
    m.at 29, :"BODYSLAM"
    m.at 37, :"MUDDYWATER"
    m.at 46, :"RECOVER"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"ATTRACT", :"BLIZZARD", :"BRINE", :"CAPTIVATE", :"DIVE", :"DOUBLETEAM", :"EARTHPOWER", :"ENDURE", :"FACADE", :"FRUSTRATION", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAINSPLIT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STRINGSHOT", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"TOXIC", :"WATERPULSE", :"WHIRLPOOL"
  pkmn.egg_moves :"AMNESIA", :"BRINE", :"CLEARSMOG", :"COUNTER", :"CURSE", :"FISSURE", :"MEMENTO", :"MIRRORCOAT", :"MIST", :"SLUDGE", :"SPITUP", :"STOCKPILE", :"SWALLOW", :"TRUMPCARD", :"YAWN"
end

GameData::SpeciesMetrics.define :"SHELLOS" do |m|
  m.back_sprite 0, 0
  m.front_sprite -1, 21
  m.shadow_sprite 0, 0, 1
end