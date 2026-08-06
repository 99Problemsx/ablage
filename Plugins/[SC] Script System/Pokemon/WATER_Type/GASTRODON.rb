#=============================================================================
# Gastrodon - WATER Type
#=============================================================================

GameData::Species.define :"GASTRODON" do |pkmn|
  pkmn.name "Gastrodon"
  pkmn.form_name "West Sea"
  pkmn.types :"WATER", :"GROUND"
  pkmn.base_stats hp: 111, attack: 83, defense: 68,
                  sp_atk: 39, sp_def: 92, speed: 82
  pkmn.abilities :"STICKYHOLD", :"STORMDRAIN"
  pkmn.hidden_abilities :"SANDFORCE"
  pkmn.flags :"InheritFormFromMother"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Purple"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 166
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.9
  pkmn.weight 29.9
  pkmn.category "Sea Slug"
  pkmn.pokedex_entry "It has a pliable body without any bones. If any part of its body is torn off, it grows right back."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Water1", :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"MUDSLAP"
    m.at 1, :"MUDSPORT"
    m.at 1, :"HARDEN"
    m.at 1, :"WATERPULSE"
    m.at 2, :"MUDSPORT"
    m.at 4, :"HARDEN"
    m.at 7, :"WATERPULSE"
    m.at 11, :"MUDBOMB"
    m.at 16, :"HIDDENPOWER"
    m.at 22, :"RAINDANCE"
    m.at 29, :"BODYSLAM"
    m.at 41, :"MUDDYWATER"
    m.at 54, :"RECOVER"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"ATTRACT", :"BLIZZARD", :"BLOCK", :"BRINE", :"BULLDOZE", :"CAPTIVATE", :"DIG", :"DIVE", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAINSPLIT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SNORE", :"STONEEDGE", :"STRENGTH", :"STRINGSHOT", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"TOXIC", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"GASTRODON" do |m|
  m.back_sprite -6, 0
  m.front_sprite -1, 15
  m.shadow_sprite 0, 0, 3
end