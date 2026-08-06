#=============================================================================
# Swalot - POISON Type
#=============================================================================

GameData::Species.define :"SWALOT" do |pkmn|
  pkmn.name "Swalot"
  pkmn.types :"POISON"
  pkmn.base_stats hp: 100, attack: 73, defense: 83,
                  sp_atk: 55, sp_def: 73, speed: 83
  pkmn.abilities :"LIQUIDOOZE", :"STICKYHOLD"
  pkmn.hidden_abilities :"GLUTTONY"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fluctuating"
  pkmn.color :"Purple"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 163
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.7
  pkmn.weight 80.0
  pkmn.category "Poison Bag"
  pkmn.pokedex_entry "Its powerful stomach acid is capable of digesting almost anything. The one thing in the whole world a Swalot can't digest is its own stomach."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"POUND"
    m.at 1, :"YAWN"
    m.at 1, :"POISONGAS"
    m.at 1, :"SLUDGE"
    m.at 6, :"YAWN"
    m.at 9, :"POISONGAS"
    m.at 14, :"SLUDGE"
    m.at 17, :"AMNESIA"
    m.at 23, :"ENCORE"
    m.at 26, :"BODYSLAM"
    m.at 30, :"TOXIC"
    m.at 38, :"ACIDSPRAY"
    m.at 45, :"STOCKPILE"
    m.at 45, :"SPITUP"
    m.at 45, :"SWALLOW"
    m.at 52, :"SLUDGEBOMB"
    m.at 59, :"GASTROACID"
    m.at 66, :"WRINGOUT"
    m.at 73, :"GUNKSHOT"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLOCK", :"BODYSLAM", :"BULLDOZE", :"BULLETSEED", :"CAPTIVATE", :"COUNTER", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"DYNAMICPUNCH", :"EARTHQUAKE", :"ENDURE", :"EXPLOSION", :"FACADE", :"FIREPUNCH", :"FRUSTRATION", :"GASTROACID", :"GIGADRAIN", :"GIGAIMPACT", :"GUNKSHOT", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAINSPLIT", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSMASH", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWBALL", :"SHOCKWAVE", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SNATCH", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"THUNDERPUNCH", :"TOXIC", :"VENOSHOCK", :"WATERPULSE"
end

GameData::SpeciesMetrics.define :"SWALOT" do |m|
  m.back_sprite -1, 0
  m.front_sprite -3, 15
  m.shadow_sprite 0, 0, 3
end