#=============================================================================
# Hydrapple - GRASS Type
#=============================================================================

GameData::Species.define :"HYDRAPPLE" do |pkmn|
  pkmn.name "Hydrapple"
  pkmn.types :"GRASS", :"DRAGON"
  pkmn.base_stats hp: 106, attack: 80, defense: 110,
                  sp_atk: 44, sp_def: 120, speed: 80
  pkmn.abilities :"SUPERSWEETSYRUP", :"REGENERATOR"
  pkmn.hidden_abilities :"STICKYHOLD"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Erratic"
  pkmn.color :"Green"
  pkmn.shape :"MultiBody"
  pkmn.base_exp 270
  pkmn.catch_rate 10
  pkmn.happiness 50
  pkmn.hatch_steps 2560
  pkmn.height 1.8
  pkmn.weight 93.0
  pkmn.category "Apple Hydra"
  pkmn.pokedex_entry "Seven syrpents live inside an apple made of syrup. The syrpent in the center is the commander."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Grass", :"Dragon"

  pkmn.moves do |m|
    m.at -1, :"YAWN"
    m.at -1, :"DOUBLEHIT"
    m.at -1, :"INFESTATION"
    m.at 0, :"FICKLEBEAM"
    m.at 1, :"WITHDRAW"
    m.at 1, :"SWEETSCENT"
    m.at 1, :"RECYCLE"
    m.at 1, :"ASTONISH"
    m.at 4, :"DRAGONTAIL"
    m.at 8, :"GROWTH"
    m.at 12, :"DRAGONBREATH"
    m.at 16, :"PROTECT"
    m.at 20, :"BULLETSEED"
    m.at 28, :"SYRUPBOMB"
    m.at 32, :"DRAGONPULSE"
    m.at 36, :"RECOVER"
    m.at 40, :"ENERGYBALL"
    m.at 44, :"SUBSTITUTE"
    m.at 54, :"POWERWHIP"
  end
  pkmn.tutor_moves :"BODYPRESS", :"BODYSLAM", :"BREAKINGSWIPE", :"BUGBITE", :"BULLETSEED", :"CURSE", :"DOUBLEEDGE", :"DRACOMETEOR", :"DRAGONCHEER", :"DRAGONPULSE", :"DRAGONTAIL", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSYGLIDE", :"GRASSYTERRAIN", :"GYROBALL", :"HEAVYSLAM", :"HYDROPUMP", :"HYPERBEAM", :"LEAFSTORM", :"MAGICALLEAF", :"NASTYPLOT", :"OUTRAGE", :"POLLENPUFF", :"POUNCE", :"PROTECT", :"RAINDANCE", :"REFLECT", :"REST", :"SEEDBOMB", :"SLEEPTALK", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"TAKEDOWN", :"UPROAR"
end

GameData::SpeciesMetrics.define :"HYDRAPPLE" do |m|
  m.back_sprite 0, 50
  m.front_sprite 2, 12
  m.shadow_sprite 0, 0, 3
end