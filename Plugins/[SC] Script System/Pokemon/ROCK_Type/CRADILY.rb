#=============================================================================
# Cradily - ROCK Type
#=============================================================================

GameData::Species.define :"CRADILY" do |pkmn|
  pkmn.name "Cradily"
  pkmn.types :"ROCK", :"GRASS"
  pkmn.base_stats hp: 86, attack: 81, defense: 97,
                  sp_atk: 43, sp_def: 81, speed: 107
  pkmn.abilities :"SUCTIONCUPS"
  pkmn.hidden_abilities :"STORMDRAIN"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Erratic"
  pkmn.color :"Green"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 173
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 7710
  pkmn.height 1.5
  pkmn.weight 60.4
  pkmn.category "Barnacle"
  pkmn.pokedex_entry "It drags its heavy body along the seafloor. It makes its nest in the shallows of warm seas. Cradily can be seen on beaches when the tide goes out."
  pkmn.evs special_defense: 2
  pkmn.egg_groups :"Water3"

  pkmn.moves do |m|
    m.at 1, :"ASTONISH"
    m.at 1, :"CONSTRICT"
    m.at 1, :"ACID"
    m.at 1, :"INGRAIN"
    m.at 8, :"ACID"
    m.at 15, :"INGRAIN"
    m.at 22, :"CONFUSERAY"
    m.at 29, :"AMNESIA"
    m.at 36, :"ANCIENTPOWER"
    m.at 46, :"GASTROACID"
    m.at 56, :"ENERGYBALL"
    m.at 66, :"STOCKPILE"
    m.at 66, :"SPITUP"
    m.at 66, :"SWALLOW"
    m.at 76, :"WRINGOUT"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"ATTRACT", :"BIND", :"BLOCK", :"BODYSLAM", :"BULLDOZE", :"BULLETSEED", :"CAPTIVATE", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GASTROACID", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAINSPLIT", :"PROTECT", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SMACKDOWN", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"STRINGSHOT", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"TOXIC", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"CRADILY" do |m|
  m.back_sprite 1, 0
  m.front_sprite -3, 5
  m.shadow_sprite 0, 0, 3
end