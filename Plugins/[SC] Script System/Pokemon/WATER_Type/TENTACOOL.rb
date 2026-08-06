#=============================================================================
# Tentacool - WATER Type
#=============================================================================

GameData::Species.define :"TENTACOOL" do |pkmn|
  pkmn.name "Tentacool"
  pkmn.types :"WATER", :"POISON"
  pkmn.base_stats hp: 40, attack: 40, defense: 35,
                  sp_atk: 70, sp_def: 50, speed: 100
  pkmn.abilities :"CLEARBODY", :"LIQUIDOOZE"
  pkmn.hidden_abilities :"RAINDISH"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Multiped"
  pkmn.base_exp 67
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.9
  pkmn.weight 45.5
  pkmn.category "Jellyfish"
  pkmn.pokedex_entry "Its body is almost entirely composed of water. It ensnares its foe with its two long tentacles, then stabs with the poison stingers at their tips."
  pkmn.evs special_defense: 1
  pkmn.egg_groups :"Water3"

  pkmn.moves do |m|
    m.at 1, :"POISONSTING"
    m.at 5, :"SUPERSONIC"
    m.at 8, :"CONSTRICT"
    m.at 12, :"ACID"
    m.at 15, :"TOXICSPIKES"
    m.at 19, :"BUBBLEBEAM"
    m.at 22, :"WRAP"
    m.at 26, :"ACIDSPRAY"
    m.at 29, :"BARRIER"
    m.at 33, :"WATERPULSE"
    m.at 36, :"POISONJAB"
    m.at 40, :"SCREECH"
    m.at 43, :"HEX"
    m.at 47, :"HYDROPUMP"
    m.at 50, :"SLUDGEWAVE"
    m.at 54, :"WRINGOUT"
  end
  pkmn.tutor_moves :"ATTRACT", :"BIND", :"BLIZZARD", :"BRINE", :"CAPTIVATE", :"CUT", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GIGADRAIN", :"HAIL", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"KNOCKOFF", :"MAGICCOAT", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"SWORDSDANCE", :"THIEF", :"TOXIC", :"VENOSHOCK", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL"
  pkmn.egg_moves :"ACUPRESSURE", :"AQUARING", :"AURORABEAM", :"BUBBLE", :"CONFUSERAY", :"HAZE", :"KNOCKOFF", :"MIRRORCOAT", :"MUDDYWATER", :"RAPIDSPIN", :"TICKLE"
end

GameData::SpeciesMetrics.define :"TENTACOOL" do |m|
  m.back_sprite 9, 0
  m.front_sprite -1, 0
  m.shadow_sprite 0, 0, 2
end