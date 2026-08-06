#=============================================================================
# Barboach - WATER Type
#=============================================================================

GameData::Species.define :"BARBOACH" do |pkmn|
  pkmn.name "Barboach"
  pkmn.types :"WATER", :"GROUND"
  pkmn.base_stats hp: 50, attack: 48, defense: 43,
                  sp_atk: 60, sp_def: 46, speed: 41
  pkmn.abilities :"OBLIVIOUS", :"ANTICIPATION"
  pkmn.hidden_abilities :"HYDRATION"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"Finned"
  pkmn.base_exp 58
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.4
  pkmn.weight 1.9
  pkmn.category "Whiskers"
  pkmn.pokedex_entry "Its body is covered with a slimy film. The film acts as a barrier to prevent germs in muddy water from entering the Barboach's body."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Water2"

  pkmn.moves do |m|
    m.at 1, :"MUDSLAP"
    m.at 6, :"MUDSPORT"
    m.at 6, :"WATERSPORT"
    m.at 10, :"WATERGUN"
    m.at 14, :"MUDBOMB"
    m.at 18, :"AMNESIA"
    m.at 22, :"WATERPULSE"
    m.at 26, :"MAGNITUDE"
    m.at 31, :"REST"
    m.at 31, :"SNORE"
    m.at 35, :"AQUATAIL"
    m.at 39, :"EARTHQUAKE"
    m.at 43, :"FUTURESIGHT"
    m.at 47, :"FISSURE"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"BLIZZARD", :"BOUNCE", :"BULLDOZE", :"CAPTIVATE", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FRUSTRATION", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"TOXIC", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL"
  pkmn.egg_moves :"DRAGONDANCE", :"EARTHPOWER", :"FLAIL", :"HYDROPUMP", :"MUDDYWATER", :"MUDSHOT", :"SPARK", :"TAKEDOWN", :"THRASH", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"BARBOACH" do |m|
  m.back_sprite 3, 0
  m.front_sprite 0, 16
  m.shadow_sprite 0, 0, 2
end