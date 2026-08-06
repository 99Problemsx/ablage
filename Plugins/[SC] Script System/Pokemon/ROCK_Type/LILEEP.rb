#=============================================================================
# Lileep - ROCK Type
#=============================================================================

GameData::Species.define :"LILEEP" do |pkmn|
  pkmn.name "Lileep"
  pkmn.types :"ROCK", :"GRASS"
  pkmn.base_stats hp: 66, attack: 41, defense: 77,
                  sp_atk: 23, sp_def: 61, speed: 87
  pkmn.abilities :"SUCTIONCUPS"
  pkmn.hidden_abilities :"STORMDRAIN"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Erratic"
  pkmn.color :"Purple"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 71
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 7710
  pkmn.height 1.0
  pkmn.weight 23.8
  pkmn.category "Sea Lily"
  pkmn.pokedex_entry "It disguises itself as seaweed by making its tentacles sway. Unsuspecting prey that come too close are swallowed whole. It became extinct 100 million years ago."
  pkmn.evs special_defense: 1
  pkmn.egg_groups :"Water3"

  pkmn.moves do |m|
    m.at 1, :"ASTONISH"
    m.at 1, :"CONSTRICT"
    m.at 8, :"ACID"
    m.at 15, :"INGRAIN"
    m.at 22, :"CONFUSERAY"
    m.at 29, :"AMNESIA"
    m.at 36, :"GASTROACID"
    m.at 43, :"ANCIENTPOWER"
    m.at 50, :"ENERGYBALL"
    m.at 57, :"STOCKPILE"
    m.at 57, :"SPITUP"
    m.at 57, :"SWALLOW"
    m.at 64, :"WRINGOUT"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"ATTRACT", :"BIND", :"BODYSLAM", :"BULLETSEED", :"CAPTIVATE", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHPOWER", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GASTROACID", :"GIGADRAIN", :"GRASSKNOT", :"HIDDENPOWER", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAINSPLIT", :"PROTECT", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SLUDGEBOMB", :"SMACKDOWN", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"STRINGSHOT", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"TOXIC", :"WORRYSEED"
  pkmn.egg_moves :"BARRIER", :"CURSE", :"ENDURE", :"MEGADRAIN", :"MIRRORCOAT", :"RECOVER", :"STEALTHROCK", :"TICKLE", :"WRINGOUT"
end

GameData::SpeciesMetrics.define :"LILEEP" do |m|
  m.back_sprite 5, 0
  m.front_sprite 0, 16
  m.shadow_sprite 0, 0, 2
end