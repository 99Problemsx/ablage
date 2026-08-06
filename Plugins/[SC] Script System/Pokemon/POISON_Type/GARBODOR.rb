#=============================================================================
# Garbodor - POISON Type
#=============================================================================

GameData::Species.define :"GARBODOR" do |pkmn|
  pkmn.name "Garbodor"
  pkmn.types :"POISON"
  pkmn.base_stats hp: 80, attack: 95, defense: 82,
                  sp_atk: 75, sp_def: 60, speed: 82
  pkmn.abilities :"STENCH", :"WEAKARMOR"
  pkmn.hidden_abilities :"AFTERMATH"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 166
  pkmn.catch_rate 60
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.9
  pkmn.weight 107.3
  pkmn.category "Trash Heap"
  pkmn.pokedex_entry "They absorb garbage and make it part of their bodies. They shoot a poisonous liquid from their right-hand fingertips."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"POUND"
    m.at 1, :"POISONGAS"
    m.at 1, :"RECYCLE"
    m.at 1, :"TOXICSPIKES"
    m.at 3, :"RECYCLE"
    m.at 7, :"TOXICSPIKES"
    m.at 12, :"ACIDSPRAY"
    m.at 14, :"DOUBLESLAP"
    m.at 18, :"SLUDGE"
    m.at 23, :"STOCKPILE"
    m.at 23, :"SWALLOW"
    m.at 25, :"BODYSLAM"
    m.at 29, :"SLUDGEBOMB"
    m.at 34, :"CLEARSMOG"
    m.at 39, :"TOXIC"
    m.at 46, :"AMNESIA"
    m.at 54, :"GUNKSHOT"
    m.at 59, :"EXPLOSION"
  end
  pkmn.tutor_moves :"ATTRACT", :"CAPTIVATE", :"DARKPULSE", :"DOUBLETEAM", :"DRAINPUNCH", :"ENDURE", :"EXPLOSION", :"FACADE", :"FLING", :"FOCUSBLAST", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GUNKSHOT", :"HIDDENPOWER", :"HYPERBEAM", :"MIMIC", :"NATURALGIFT", :"PAINSPLIT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"RAINDANCE", :"RECYCLE", :"REST", :"RETURN", :"ROCKPOLISH", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SMACKDOWN", :"SNORE", :"SOLARBEAM", :"SPITE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"THIEF", :"THUNDERBOLT", :"TOXIC", :"VENOSHOCK"
end

GameData::SpeciesMetrics.define :"GARBODOR" do |m|
  m.back_sprite 5, 0
  m.front_sprite -1, 16
  m.shadow_sprite 0, 0, 3
end