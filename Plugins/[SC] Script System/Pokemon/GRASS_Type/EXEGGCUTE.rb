#=============================================================================
# Exeggcute - GRASS Type
#=============================================================================

GameData::Species.define :"EXEGGCUTE" do |pkmn|
  pkmn.name "Exeggcute"
  pkmn.types :"GRASS", :"PSYCHIC"
  pkmn.base_stats hp: 60, attack: 40, defense: 80,
                  sp_atk: 40, sp_def: 60, speed: 45
  pkmn.abilities :"CHLOROPHYLL"
  pkmn.hidden_abilities :"HARVEST"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Pink"
  pkmn.shape :"MultiBody"
  pkmn.base_exp 65
  pkmn.catch_rate 90
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.4
  pkmn.weight 2.5
  pkmn.category "Egg"
  pkmn.pokedex_entry "It consists of six eggs that care for each other. The eggs attract each other and spin around. When cracks increasingly appear, it is close to evolution."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Grass"

  pkmn.moves do |m|
    m.at 1, :"BARRAGE"
    m.at 1, :"UPROAR"
    m.at 1, :"HYPNOSIS"
    m.at 7, :"REFLECT"
    m.at 11, :"LEECHSEED"
    m.at 17, :"BULLETSEED"
    m.at 19, :"STUNSPORE"
    m.at 21, :"POISONPOWDER"
    m.at 23, :"SLEEPPOWDER"
    m.at 27, :"CONFUSION"
    m.at 33, :"WORRYSEED"
    m.at 37, :"NATURALGIFT"
    m.at 43, :"SOLARBEAM"
    m.at 47, :"EXTRASENSORY"
    m.at 53, :"BESTOW"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"ATTRACT", :"BLOCK", :"BULLETSEED", :"CAPTIVATE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"ENDURE", :"ENERGYBALL", :"EXPLOSION", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGADRAIN", :"GRASSKNOT", :"GRAVITY", :"HIDDENPOWER", :"LIGHTSCREEN", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"REFLECT", :"REST", :"RETURN", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SKILLSWAP", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"TELEKINESIS", :"THIEF", :"TOXIC", :"TRICKROOM", :"UPROAR", :"WORRYSEED"
  pkmn.egg_moves :"ANCIENTPOWER", :"BLOCK", :"CURSE", :"GIGADRAIN", :"INGRAIN", :"LEAFSTORM", :"LUCKYCHANT", :"MOONLIGHT", :"NATURALGIFT", :"NATUREPOWER", :"POWERSWAP", :"SKILLSWAP", :"SYNTHESIS"
end

GameData::SpeciesMetrics.define :"EXEGGCUTE" do |m|
  m.back_sprite 0, 0
  m.front_sprite 0, 28
  m.shadow_sprite 0, 0, 3
end