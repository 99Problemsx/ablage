#=============================================================================
# Dipplin - GRASS Type
#=============================================================================

GameData::Species.define :"DIPPLIN" do |pkmn|
  pkmn.name "Dipplin"
  pkmn.types :"GRASS", :"DRAGON"
  pkmn.base_stats hp: 80, attack: 80, defense: 110,
                  sp_atk: 40, sp_def: 95, speed: 90
  pkmn.abilities :"SUPERSWEETSYRUP", :"GLUTTONY"
  pkmn.hidden_abilities :"STICKYHOLD"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Erratic"
  pkmn.color :"Green"
  pkmn.shape :"Head"
  pkmn.base_exp 170
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.4
  pkmn.weight 4.4
  pkmn.category "Candy Apple"
  pkmn.pokedex_entry "The head sticking out belongs to the fore-wyrm, while the tail belongs to the core-wyrm. The two share one apple and help each other out."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Grass", :"Dragon"

  pkmn.moves do |m|
    m.at -1, :"INFESTATION"
    m.at 0, :"DOUBLEHIT"
    m.at 1, :"SWEETSCENT"
    m.at 1, :"RECYCLE"
    m.at 1, :"WITHDRAW"
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
  end
  pkmn.tutor_moves :"BODYSLAM", :"BUGBITE", :"BULLETSEED", :"DRACOMETEOR", :"DRAGONCHEER", :"DRAGONPULSE", :"DRAGONTAIL", :"ENDURE", :"ENERGYBALL", :"FACADE", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSYGLIDE", :"GRASSYTERRAIN", :"GYROBALL", :"HYPERBEAM", :"LEAFSTORM", :"OUTRAGE", :"POLLENPUFF", :"POUNCE", :"PROTECT", :"REFLECT", :"REST", :"SEEDBOMB", :"SLEEPTALK", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"TAKEDOWN"
end

GameData::SpeciesMetrics.define :"DIPPLIN" do |m|
  m.back_sprite -6, 43
  m.front_sprite 0, 23
  m.shadow_sprite 0, 0, 0
end