#=============================================================================
# Cacturne - GRASS Type
#=============================================================================

GameData::Species.define :"CACTURNE" do |pkmn|
  pkmn.name "Cacturne"
  pkmn.types :"GRASS", :"DARK"
  pkmn.base_stats hp: 70, attack: 115, defense: 60,
                  sp_atk: 55, sp_def: 115, speed: 60
  pkmn.abilities :"SANDVEIL"
  pkmn.hidden_abilities :"WATERABSORB"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 166
  pkmn.catch_rate 60
  pkmn.happiness 35
  pkmn.hatch_steps 5140
  pkmn.height 1.3
  pkmn.weight 77.4
  pkmn.category "Scarecrow"
  pkmn.pokedex_entry "After spending thousands of years in harsh deserts, its blood transformed into the same substances as sand. It is nocturnal, so it hunts at night."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Grass", :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"REVENGE"
    m.at 1, :"POISONSTING"
    m.at 1, :"LEER"
    m.at 1, :"ABSORB"
    m.at 1, :"GROWTH"
    m.at 5, :"ABSORB"
    m.at 9, :"GROWTH"
    m.at 13, :"LEECHSEED"
    m.at 17, :"SANDATTACK"
    m.at 21, :"PINMISSILE"
    m.at 25, :"INGRAIN"
    m.at 29, :"FEINTATTACK"
    m.at 35, :"SPIKES"
    m.at 41, :"SUCKERPUNCH"
    m.at 47, :"PAYBACK"
    m.at 53, :"NEEDLEARM"
    m.at 59, :"COTTONSPORE"
    m.at 65, :"SANDSTORM"
    m.at 71, :"DESTINYBOND"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLOCK", :"BODYSLAM", :"BRICKBREAK", :"BULLETSEED", :"CAPTIVATE", :"COUNTER", :"CUT", :"DARKPULSE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"DYNAMICPUNCH", :"EMBARGO", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FOULPLAY", :"FRUSTRATION", :"FURYCUTTER", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"LOWKICK", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"REST", :"RETALIATE", :"RETURN", :"ROLEPLAY", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SEEDBOMB", :"SEISMICTOSS", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SPITE", :"STRENGTH", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"THUNDERPUNCH", :"TOXIC", :"VENOSHOCK", :"WORRYSEED"
end

GameData::SpeciesMetrics.define :"CACTURNE" do |m|
  m.back_sprite 7, 0
  m.front_sprite 0, 9
  m.shadow_sprite 0, 0, 3
end