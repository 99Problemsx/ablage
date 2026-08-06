#=============================================================================
# Trubbish - POISON Type
#=============================================================================

GameData::Species.define :"TRUBBISH" do |pkmn|
  pkmn.name "Trubbish"
  pkmn.types :"POISON"
  pkmn.base_stats hp: 50, attack: 50, defense: 62,
                  sp_atk: 65, sp_def: 40, speed: 62
  pkmn.abilities :"STENCH", :"STICKYHOLD"
  pkmn.hidden_abilities :"AFTERMATH"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 66
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.6
  pkmn.weight 31.0
  pkmn.category "Trash Bag"
  pkmn.pokedex_entry "The combination of garbage bags and industrial waste caused the chemical reaction that crated this Pokémon."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"POUND"
    m.at 1, :"POISONGAS"
    m.at 3, :"RECYCLE"
    m.at 7, :"TOXICSPIKES"
    m.at 12, :"ACIDSPRAY"
    m.at 14, :"DOUBLESLAP"
    m.at 18, :"SLUDGE"
    m.at 23, :"STOCKPILE"
    m.at 23, :"SWALLOW"
    m.at 25, :"TAKEDOWN"
    m.at 29, :"SLUDGEBOMB"
    m.at 34, :"CLEARSMOG"
    m.at 36, :"TOXIC"
    m.at 40, :"AMNESIA"
    m.at 45, :"GUNKSHOT"
    m.at 47, :"EXPLOSION"
  end
  pkmn.tutor_moves :"ATTRACT", :"CAPTIVATE", :"DARKPULSE", :"DOUBLETEAM", :"DRAINPUNCH", :"ENDURE", :"EXPLOSION", :"FACADE", :"FRUSTRATION", :"GIGADRAIN", :"GUNKSHOT", :"HIDDENPOWER", :"MIMIC", :"NATURALGIFT", :"PAINSPLIT", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"RECYCLE", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SNORE", :"SPITE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"THIEF", :"TOXIC", :"VENOSHOCK"
  pkmn.egg_moves :"CURSE", :"HAZE", :"MUDSPORT", :"ROCKBLAST", :"ROLLOUT", :"SANDATTACK", :"SELFDESTRUCT", :"SPIKES"
end

GameData::SpeciesMetrics.define :"TRUBBISH" do |m|
  m.back_sprite -1, 0
  m.front_sprite 4, 31
  m.shadow_sprite 0, 0, 2
end