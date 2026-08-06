#=============================================================================
# Pumpkaboo - GHOST Type
#=============================================================================

GameData::Species.define :"PUMPKABOO" do |pkmn|
  pkmn.name "Pumpkaboo"
  pkmn.form_name "Small Size"
  pkmn.types :"GHOST", :"GRASS"
  pkmn.base_stats hp: 44, attack: 66, defense: 70,
                  sp_atk: 56, sp_def: 44, speed: 55
  pkmn.abilities :"PICKUP", :"FRISK"
  pkmn.flags :"InheritFormFromMother"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Head"
  pkmn.base_exp 67
  pkmn.catch_rate 120
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.3
  pkmn.weight 3.5
  pkmn.category "Pumpkin"
  pkmn.pokedex_entry "When taking spirits to the afterlife, small Pumpkaboo prefer the spirits of children to those of adults."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"TRICKORTREAT"
    m.at 1, :"ASTONISH"
    m.at 4, :"SHADOWSNEAK"
    m.at 8, :"CONFUSERAY"
    m.at 12, :"TRICKORTREAT"
    m.at 12, :"RAZORLEAF"
    m.at 16, :"LEECHSEED"
    m.at 20, :"BULLETSEED"
    m.at 24, :"TRICKORTREAT"
    m.at 24, :"SCARYFACE"
    m.at 28, :"WORRYSEED"
    m.at 32, :"SEEDBOMB"
    m.at 36, :"TRICKORTREAT"
    m.at 36, :"SHADOWBALL"
    m.at 40, :"TRICK"
    m.at 44, :"PAINSPLIT"
  end
  pkmn.tutor_moves :"ALLYSWITCH", :"ATTRACT", :"BULLETSEED", :"CAPTIVATE", :"CHARGEBEAM", :"CONFIDE", :"DARKPULSE", :"DOUBLETEAM", :"DREAMEATER", :"ENDURE", :"ENERGYBALL", :"EXPLOSION", :"FACADE", :"FIREBLAST", :"FLAMECHARGE", :"FLAMETHROWER", :"FLASH", :"FOULPLAY", :"FRUSTRATION", :"GIGADRAIN", :"GRASSKNOT", :"GRASSYGLIDE", :"GYROBALL", :"HEX", :"HIDDENPOWER", :"IMPRISON", :"INCINERATE", :"LIGHTSCREEN", :"MAGICCOAT", :"MIMIC", :"MYSTICALFIRE", :"NATURALGIFT", :"NATUREPOWER", :"PAINSPLIT", :"POLTERGEIST", :"PROTECT", :"PSYCHIC", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SCARYFACE", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWBALL", :"SKILLSWAP", :"SKITTERSMACK", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SOLARBEAM", :"SPITE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SYNTHESIS", :"TELEKINESIS", :"THIEF", :"TOXIC", :"TRICK", :"TRICKROOM", :"WILLOWISP", :"WORRYSEED", :"TERABLAST"
  pkmn.egg_moves :"CURSE", :"DESTINYBOND", :"DISABLE"
end

GameData::SpeciesMetrics.define :"PUMPKABOO" do |m|
  m.back_sprite -1, 47
  m.front_sprite 3, 22
  m.shadow_sprite 0, 0, -1
end

# Form 1 - Small Size
GameData::Species.define :"PUMPKABOO_1" do |pkmn|
  pkmn.species :"PUMPKABOO"
  pkmn.form 1
  pkmn.name "Pumpkaboo"
  pkmn.form_name "Small Size"
  pkmn.types :"GHOST", :"GRASS"
  pkmn.base_stats hp: 44, attack: 66, defense: 70,
                  sp_atk: 56, sp_def: 44, speed: 55
  pkmn.abilities :"PICKUP", :"FRISK"
  pkmn.flags :"InheritFormFromMother"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Head"
  pkmn.base_exp 67
  pkmn.catch_rate 120
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.3
  pkmn.weight 3.5
  pkmn.category "Pumpkin"
  pkmn.pokedex_entry "When taking spirits to the afterlife, small Pumpkaboo prefer the spirits of children to those of adults."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"TRICKORTREAT"
    m.at 1, :"ASTONISH"
    m.at 4, :"SHADOWSNEAK"
    m.at 8, :"CONFUSERAY"
    m.at 12, :"TRICKORTREAT"
    m.at 12, :"RAZORLEAF"
    m.at 16, :"LEECHSEED"
    m.at 20, :"BULLETSEED"
    m.at 24, :"TRICKORTREAT"
    m.at 24, :"SCARYFACE"
    m.at 28, :"WORRYSEED"
    m.at 32, :"SEEDBOMB"
    m.at 36, :"TRICKORTREAT"
    m.at 36, :"SHADOWBALL"
    m.at 40, :"TRICK"
    m.at 44, :"PAINSPLIT"
  end
  pkmn.tutor_moves :"ALLYSWITCH", :"ATTRACT", :"BULLETSEED", :"CAPTIVATE", :"CHARGEBEAM", :"CONFIDE", :"DARKPULSE", :"DOUBLETEAM", :"DREAMEATER", :"ENDURE", :"ENERGYBALL", :"EXPLOSION", :"FACADE", :"FIREBLAST", :"FLAMECHARGE", :"FLAMETHROWER", :"FLASH", :"FOULPLAY", :"FRUSTRATION", :"GIGADRAIN", :"GRASSKNOT", :"GRASSYGLIDE", :"GYROBALL", :"HEX", :"HIDDENPOWER", :"IMPRISON", :"INCINERATE", :"LIGHTSCREEN", :"MAGICCOAT", :"MIMIC", :"MYSTICALFIRE", :"NATURALGIFT", :"NATUREPOWER", :"PAINSPLIT", :"POLTERGEIST", :"PROTECT", :"PSYCHIC", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SCARYFACE", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWBALL", :"SKILLSWAP", :"SKITTERSMACK", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SOLARBEAM", :"SPITE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SYNTHESIS", :"TELEKINESIS", :"THIEF", :"TOXIC", :"TRICK", :"TRICKROOM", :"WILLOWISP", :"WORRYSEED", :"TERABLAST"
  pkmn.egg_moves :"CURSE", :"DESTINYBOND", :"DISABLE"
end

GameData::SpeciesMetrics.define :"PUMPKABOO_1" do |m|
  m.back_sprite -1, 47
  m.front_sprite 3, 22
  m.shadow_sprite 0, 0, -1
end

# Form 2 - Small Size
GameData::Species.define :"PUMPKABOO_2" do |pkmn|
  pkmn.species :"PUMPKABOO"
  pkmn.form 2
  pkmn.name "Pumpkaboo"
  pkmn.form_name "Small Size"
  pkmn.types :"GHOST", :"GRASS"
  pkmn.base_stats hp: 44, attack: 66, defense: 70,
                  sp_atk: 56, sp_def: 44, speed: 55
  pkmn.abilities :"PICKUP", :"FRISK"
  pkmn.flags :"InheritFormFromMother"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Head"
  pkmn.base_exp 67
  pkmn.catch_rate 120
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.3
  pkmn.weight 3.5
  pkmn.category "Pumpkin"
  pkmn.pokedex_entry "When taking spirits to the afterlife, small Pumpkaboo prefer the spirits of children to those of adults."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"TRICKORTREAT"
    m.at 1, :"ASTONISH"
    m.at 4, :"SHADOWSNEAK"
    m.at 8, :"CONFUSERAY"
    m.at 12, :"TRICKORTREAT"
    m.at 12, :"RAZORLEAF"
    m.at 16, :"LEECHSEED"
    m.at 20, :"BULLETSEED"
    m.at 24, :"TRICKORTREAT"
    m.at 24, :"SCARYFACE"
    m.at 28, :"WORRYSEED"
    m.at 32, :"SEEDBOMB"
    m.at 36, :"TRICKORTREAT"
    m.at 36, :"SHADOWBALL"
    m.at 40, :"TRICK"
    m.at 44, :"PAINSPLIT"
  end
  pkmn.tutor_moves :"ALLYSWITCH", :"ATTRACT", :"BULLETSEED", :"CAPTIVATE", :"CHARGEBEAM", :"CONFIDE", :"DARKPULSE", :"DOUBLETEAM", :"DREAMEATER", :"ENDURE", :"ENERGYBALL", :"EXPLOSION", :"FACADE", :"FIREBLAST", :"FLAMECHARGE", :"FLAMETHROWER", :"FLASH", :"FOULPLAY", :"FRUSTRATION", :"GIGADRAIN", :"GRASSKNOT", :"GRASSYGLIDE", :"GYROBALL", :"HEX", :"HIDDENPOWER", :"IMPRISON", :"INCINERATE", :"LIGHTSCREEN", :"MAGICCOAT", :"MIMIC", :"MYSTICALFIRE", :"NATURALGIFT", :"NATUREPOWER", :"PAINSPLIT", :"POLTERGEIST", :"PROTECT", :"PSYCHIC", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SCARYFACE", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWBALL", :"SKILLSWAP", :"SKITTERSMACK", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SOLARBEAM", :"SPITE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SYNTHESIS", :"TELEKINESIS", :"THIEF", :"TOXIC", :"TRICK", :"TRICKROOM", :"WILLOWISP", :"WORRYSEED", :"TERABLAST"
  pkmn.egg_moves :"CURSE", :"DESTINYBOND", :"DISABLE"
end

GameData::SpeciesMetrics.define :"PUMPKABOO_2" do |m|
  m.back_sprite -1, 47
  m.front_sprite 3, 22
  m.shadow_sprite 0, 0, -1
end

# Form 3 - Small Size
GameData::Species.define :"PUMPKABOO_3" do |pkmn|
  pkmn.species :"PUMPKABOO"
  pkmn.form 3
  pkmn.name "Pumpkaboo"
  pkmn.form_name "Small Size"
  pkmn.types :"GHOST", :"GRASS"
  pkmn.base_stats hp: 44, attack: 66, defense: 70,
                  sp_atk: 56, sp_def: 44, speed: 55
  pkmn.abilities :"PICKUP", :"FRISK"
  pkmn.flags :"InheritFormFromMother"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Head"
  pkmn.base_exp 67
  pkmn.catch_rate 120
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.3
  pkmn.weight 3.5
  pkmn.category "Pumpkin"
  pkmn.pokedex_entry "When taking spirits to the afterlife, small Pumpkaboo prefer the spirits of children to those of adults."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"TRICKORTREAT"
    m.at 1, :"ASTONISH"
    m.at 4, :"SHADOWSNEAK"
    m.at 8, :"CONFUSERAY"
    m.at 12, :"TRICKORTREAT"
    m.at 12, :"RAZORLEAF"
    m.at 16, :"LEECHSEED"
    m.at 20, :"BULLETSEED"
    m.at 24, :"TRICKORTREAT"
    m.at 24, :"SCARYFACE"
    m.at 28, :"WORRYSEED"
    m.at 32, :"SEEDBOMB"
    m.at 36, :"TRICKORTREAT"
    m.at 36, :"SHADOWBALL"
    m.at 40, :"TRICK"
    m.at 44, :"PAINSPLIT"
  end
  pkmn.tutor_moves :"ALLYSWITCH", :"ATTRACT", :"BULLETSEED", :"CAPTIVATE", :"CHARGEBEAM", :"CONFIDE", :"DARKPULSE", :"DOUBLETEAM", :"DREAMEATER", :"ENDURE", :"ENERGYBALL", :"EXPLOSION", :"FACADE", :"FIREBLAST", :"FLAMECHARGE", :"FLAMETHROWER", :"FLASH", :"FOULPLAY", :"FRUSTRATION", :"GIGADRAIN", :"GRASSKNOT", :"GRASSYGLIDE", :"GYROBALL", :"HEX", :"HIDDENPOWER", :"IMPRISON", :"INCINERATE", :"LIGHTSCREEN", :"MAGICCOAT", :"MIMIC", :"MYSTICALFIRE", :"NATURALGIFT", :"NATUREPOWER", :"PAINSPLIT", :"POLTERGEIST", :"PROTECT", :"PSYCHIC", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SCARYFACE", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWBALL", :"SKILLSWAP", :"SKITTERSMACK", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SOLARBEAM", :"SPITE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SYNTHESIS", :"TELEKINESIS", :"THIEF", :"TOXIC", :"TRICK", :"TRICKROOM", :"WILLOWISP", :"WORRYSEED", :"TERABLAST"
  pkmn.egg_moves :"CURSE", :"DESTINYBOND", :"DISABLE"
end

GameData::SpeciesMetrics.define :"PUMPKABOO_3" do |m|
  m.back_sprite -1, 47
  m.front_sprite 3, 22
  m.shadow_sprite 0, 0, -1
end