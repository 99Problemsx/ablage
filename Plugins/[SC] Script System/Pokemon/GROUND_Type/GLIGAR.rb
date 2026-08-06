#=============================================================================
# Gligar - GROUND Type
#=============================================================================

GameData::Species.define :"GLIGAR" do |pkmn|
  pkmn.name "Gligar"
  pkmn.types :"GROUND", :"FLYING"
  pkmn.base_stats hp: 65, attack: 75, defense: 105,
                  sp_atk: 85, sp_def: 35, speed: 65
  pkmn.abilities :"HYPERCUTTER", :"SANDVEIL"
  pkmn.hidden_abilities :"IMMUNITY"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Purple"
  pkmn.shape :"Winged"
  pkmn.base_exp 86
  pkmn.catch_rate 60
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.1
  pkmn.weight 64.8
  pkmn.category "FlyScorpion"
  pkmn.pokedex_entry "It glides without making a single sound. It grasps the face of its foe using its hind and large front claws, then stabs with its poison barb."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"POISONSTING"
    m.at 4, :"SANDATTACK"
    m.at 7, :"HARDEN"
    m.at 10, :"KNOCKOFF"
    m.at 13, :"QUICKATTACK"
    m.at 16, :"FURYCUTTER"
    m.at 19, :"FEINTATTACK"
    m.at 22, :"ACROBATICS"
    m.at 27, :"SLASH"
    m.at 30, :"UTURN"
    m.at 35, :"SCREECH"
    m.at 40, :"XSCISSOR"
    m.at 45, :"SKYUPPERCUT"
    m.at 50, :"SWORDSDANCE"
    m.at 55, :"GUILLOTINE"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AQUATAIL", :"ATTRACT", :"BRICKBREAK", :"BUGBITE", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"CUT", :"DARKPULSE", :"DEFOG", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLING", :"FRUSTRATION", :"FURYCUTTER", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"IRONTAIL", :"KNOCKOFF", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROOST", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"STEALTHROCK", :"STEELWING", :"STONEEDGE", :"STRENGTH", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TAILWIND", :"TAUNT", :"THIEF", :"TORMENT", :"TOXIC", :"UTURN", :"VENOSHOCK", :"XSCISSOR"
  pkmn.egg_moves :"AGILITY", :"BATONPASS", :"COUNTER", :"CROSSPOISON", :"DOUBLEEDGE", :"FEINT", :"METALCLAW", :"NIGHTSLASH", :"POISONTAIL", :"POWERTRICK", :"RAZORWIND", :"ROCKCLIMB", :"SANDTOMB", :"WINGATTACK"
end

GameData::SpeciesMetrics.define :"GLIGAR" do |m|
  m.back_sprite 2, 0
  m.front_sprite -2, 0
  m.shadow_sprite 0, 0, 2
end