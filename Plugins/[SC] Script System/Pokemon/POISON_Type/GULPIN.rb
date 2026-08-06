#=============================================================================
# Gulpin - POISON Type
#=============================================================================

GameData::Species.define :"GULPIN" do |pkmn|
  pkmn.name "Gulpin"
  pkmn.types :"POISON"
  pkmn.base_stats hp: 70, attack: 43, defense: 53,
                  sp_atk: 40, sp_def: 43, speed: 53
  pkmn.abilities :"LIQUIDOOZE", :"STICKYHOLD"
  pkmn.hidden_abilities :"GLUTTONY"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fluctuating"
  pkmn.color :"Green"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 60
  pkmn.catch_rate 225
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.4
  pkmn.weight 10.3
  pkmn.category "Stomach"
  pkmn.pokedex_entry "This Pokémon's stomach fluid can even digest scrap iron. In one gulp, it can swallow something that is as large as itself."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"POUND"
    m.at 6, :"YAWN"
    m.at 9, :"POISONGAS"
    m.at 14, :"SLUDGE"
    m.at 17, :"AMNESIA"
    m.at 23, :"ENCORE"
    m.at 28, :"TOXIC"
    m.at 34, :"ACIDSPRAY"
    m.at 39, :"STOCKPILE"
    m.at 39, :"SPITUP"
    m.at 39, :"SWALLOW"
    m.at 44, :"SLUDGEBOMB"
    m.at 49, :"GASTROACID"
    m.at 54, :"WRINGOUT"
    m.at 59, :"GUNKSHOT"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BULLETSEED", :"CAPTIVATE", :"COUNTER", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"DYNAMICPUNCH", :"ENDURE", :"EXPLOSION", :"FACADE", :"FIREPUNCH", :"FRUSTRATION", :"GASTROACID", :"GIGADRAIN", :"GUNKSHOT", :"HEADBUTT", :"HIDDENPOWER", :"ICEBEAM", :"ICEPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAINSPLIT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSMASH", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWBALL", :"SHOCKWAVE", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SNATCH", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"THUNDERPUNCH", :"TOXIC", :"VENOSHOCK", :"WATERPULSE"
  pkmn.egg_moves :"ACIDARMOR", :"CURSE", :"DESTINYBOND", :"GUNKSHOT", :"MUDSLAP", :"PAINSPLIT", :"SMOG"
end

GameData::SpeciesMetrics.define :"GULPIN" do |m|
  m.back_sprite -1, 0
  m.front_sprite 1, 25
  m.shadow_sprite 0, 0, 2
end