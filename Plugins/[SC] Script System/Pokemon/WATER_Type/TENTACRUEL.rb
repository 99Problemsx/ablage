#=============================================================================
# Tentacruel - WATER Type
#=============================================================================

GameData::Species.define :"TENTACRUEL" do |pkmn|
  pkmn.name "Tentacruel"
  pkmn.types :"WATER", :"POISON"
  pkmn.base_stats hp: 80, attack: 70, defense: 65,
                  sp_atk: 100, sp_def: 80, speed: 120
  pkmn.abilities :"CLEARBODY", :"LIQUIDOOZE"
  pkmn.hidden_abilities :"RAINDISH"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Multiped"
  pkmn.base_exp 180
  pkmn.catch_rate 60
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.6
  pkmn.weight 55.0
  pkmn.category "Jellyfish"
  pkmn.pokedex_entry "It lives in complex rock formations on the ocean floor and traps prey using its 80 tentacles. Its red orbs glow when it grows excited or agitated."
  pkmn.evs special_defense: 2
  pkmn.egg_groups :"Water3"

  pkmn.moves do |m|
    m.at 1, :"POISONSTING"
    m.at 1, :"SUPERSONIC"
    m.at 1, :"CONSTRICT"
    m.at 5, :"SUPERSONIC"
    m.at 8, :"CONSTRICT"
    m.at 12, :"ACID"
    m.at 15, :"TOXICSPIKES"
    m.at 19, :"BUBBLEBEAM"
    m.at 22, :"WRAP"
    m.at 26, :"ACIDSPRAY"
    m.at 29, :"BARRIER"
    m.at 34, :"WATERPULSE"
    m.at 38, :"POISONJAB"
    m.at 43, :"SCREECH"
    m.at 47, :"HEX"
    m.at 52, :"HYDROPUMP"
    m.at 56, :"SLUDGEWAVE"
    m.at 61, :"WRINGOUT"
  end
  pkmn.tutor_moves :"ATTRACT", :"BIND", :"BLIZZARD", :"BRINE", :"CAPTIVATE", :"CUT", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"HAIL", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"KNOCKOFF", :"MAGICCOAT", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"SWORDSDANCE", :"THIEF", :"TOXIC", :"VENOSHOCK", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"TENTACRUEL" do |m|
  m.back_sprite 0, 0
  m.front_sprite 0, 1
  m.shadow_sprite 0, 0, 3
end