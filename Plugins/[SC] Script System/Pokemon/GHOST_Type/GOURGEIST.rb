#=============================================================================
# Gourgeist - GHOST Type
#=============================================================================

GameData::Species.define :"GOURGEIST" do |pkmn|
  pkmn.name "Gourgeist"
  pkmn.form_name "Small Size"
  pkmn.types :"GHOST", :"GRASS"
  pkmn.base_stats hp: 55, attack: 85, defense: 122,
                  sp_atk: 99, sp_def: 58, speed: 75
  pkmn.abilities :"PICKUP", :"FRISK"
  pkmn.flags :"InheritFormFromMother"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 173
  pkmn.catch_rate 60
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.7
  pkmn.weight 9.5
  pkmn.category "Pumpkin"
  pkmn.pokedex_entry "Small Gourgeist pretend to be children to fool adults. Anyone who falls for the act gets carried away to the hereafter."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"EXPLOSION"
    m.at 1, :"MOONBLAST"
    m.at 1, :"TRICKORTREAT"
    m.at 1, :"ASTONISH"
    m.at 1, :"SHADOWSNEAK"
    m.at 1, :"CONFUSERAY"
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
    m.at 48, :"PHANTOMFORCE"
  end
  pkmn.tutor_moves :"ALLYSWITCH", :"ATTRACT", :"BRUTALSWING", :"BULLETSEED", :"CAPTIVATE", :"CHARGEBEAM", :"CONFIDE", :"DARKPULSE", :"DOUBLETEAM", :"DREAMEATER", :"ENDURE", :"ENERGYBALL", :"EXPLOSION", :"FACADE", :"FIREBLAST", :"FLAMECHARGE", :"FLAMETHROWER", :"FLASH", :"FOCUSBLAST", :"FOULPLAY", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSYGLIDE", :"GYROBALL", :"HEX", :"HIDDENPOWER", :"HYPERBEAM", :"IMPRISON", :"INCINERATE", :"LIGHTSCREEN", :"MAGICCOAT", :"MIMIC", :"MYSTICALFIRE", :"NASTYPLOT", :"NATURALGIFT", :"NATUREPOWER", :"PAINSPLIT", :"PHANTOMFORCE", :"POLTERGEIST", :"POWERWHIP", :"PROTECT", :"PSYCHIC", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SCARYFACE", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWBALL", :"SKILLSWAP", :"SKITTERSMACK", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SOLARBEAM", :"SPITE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SYNTHESIS", :"TELEKINESIS", :"THIEF", :"TOXIC", :"TRICK", :"TRICKROOM", :"WILLOWISP", :"WORRYSEED", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"GOURGEIST" do |m|
  m.back_sprite 0, 46
  m.front_sprite 3, 16
end

# Form 1 - Small Size
GameData::Species.define :"GOURGEIST_1" do |pkmn|
  pkmn.species :"GOURGEIST"
  pkmn.form 1
  pkmn.name "Gourgeist"
  pkmn.form_name "Small Size"
  pkmn.types :"GHOST", :"GRASS"
  pkmn.base_stats hp: 55, attack: 85, defense: 122,
                  sp_atk: 99, sp_def: 58, speed: 75
  pkmn.abilities :"PICKUP", :"FRISK"
  pkmn.flags :"InheritFormFromMother"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 173
  pkmn.catch_rate 60
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.7
  pkmn.weight 9.5
  pkmn.category "Pumpkin"
  pkmn.pokedex_entry "Small Gourgeist pretend to be children to fool adults. Anyone who falls for the act gets carried away to the hereafter."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"EXPLOSION"
    m.at 1, :"MOONBLAST"
    m.at 1, :"TRICKORTREAT"
    m.at 1, :"ASTONISH"
    m.at 1, :"SHADOWSNEAK"
    m.at 1, :"CONFUSERAY"
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
    m.at 48, :"PHANTOMFORCE"
  end
  pkmn.tutor_moves :"ALLYSWITCH", :"ATTRACT", :"BRUTALSWING", :"BULLETSEED", :"CAPTIVATE", :"CHARGEBEAM", :"CONFIDE", :"DARKPULSE", :"DOUBLETEAM", :"DREAMEATER", :"ENDURE", :"ENERGYBALL", :"EXPLOSION", :"FACADE", :"FIREBLAST", :"FLAMECHARGE", :"FLAMETHROWER", :"FLASH", :"FOCUSBLAST", :"FOULPLAY", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSYGLIDE", :"GYROBALL", :"HEX", :"HIDDENPOWER", :"HYPERBEAM", :"IMPRISON", :"INCINERATE", :"LIGHTSCREEN", :"MAGICCOAT", :"MIMIC", :"MYSTICALFIRE", :"NASTYPLOT", :"NATURALGIFT", :"NATUREPOWER", :"PAINSPLIT", :"PHANTOMFORCE", :"POLTERGEIST", :"POWERWHIP", :"PROTECT", :"PSYCHIC", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SCARYFACE", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWBALL", :"SKILLSWAP", :"SKITTERSMACK", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SOLARBEAM", :"SPITE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SYNTHESIS", :"TELEKINESIS", :"THIEF", :"TOXIC", :"TRICK", :"TRICKROOM", :"WILLOWISP", :"WORRYSEED", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"GOURGEIST_1" do |m|
  m.back_sprite 0, 46
  m.front_sprite 3, 16
end

# Form 2 - Small Size
GameData::Species.define :"GOURGEIST_2" do |pkmn|
  pkmn.species :"GOURGEIST"
  pkmn.form 2
  pkmn.name "Gourgeist"
  pkmn.form_name "Small Size"
  pkmn.types :"GHOST", :"GRASS"
  pkmn.base_stats hp: 55, attack: 85, defense: 122,
                  sp_atk: 99, sp_def: 58, speed: 75
  pkmn.abilities :"PICKUP", :"FRISK"
  pkmn.flags :"InheritFormFromMother"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 173
  pkmn.catch_rate 60
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.7
  pkmn.weight 9.5
  pkmn.category "Pumpkin"
  pkmn.pokedex_entry "Small Gourgeist pretend to be children to fool adults. Anyone who falls for the act gets carried away to the hereafter."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"EXPLOSION"
    m.at 1, :"MOONBLAST"
    m.at 1, :"TRICKORTREAT"
    m.at 1, :"ASTONISH"
    m.at 1, :"SHADOWSNEAK"
    m.at 1, :"CONFUSERAY"
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
    m.at 48, :"PHANTOMFORCE"
  end
  pkmn.tutor_moves :"ALLYSWITCH", :"ATTRACT", :"BRUTALSWING", :"BULLETSEED", :"CAPTIVATE", :"CHARGEBEAM", :"CONFIDE", :"DARKPULSE", :"DOUBLETEAM", :"DREAMEATER", :"ENDURE", :"ENERGYBALL", :"EXPLOSION", :"FACADE", :"FIREBLAST", :"FLAMECHARGE", :"FLAMETHROWER", :"FLASH", :"FOCUSBLAST", :"FOULPLAY", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSYGLIDE", :"GYROBALL", :"HEX", :"HIDDENPOWER", :"HYPERBEAM", :"IMPRISON", :"INCINERATE", :"LIGHTSCREEN", :"MAGICCOAT", :"MIMIC", :"MYSTICALFIRE", :"NASTYPLOT", :"NATURALGIFT", :"NATUREPOWER", :"PAINSPLIT", :"PHANTOMFORCE", :"POLTERGEIST", :"POWERWHIP", :"PROTECT", :"PSYCHIC", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SCARYFACE", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWBALL", :"SKILLSWAP", :"SKITTERSMACK", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SOLARBEAM", :"SPITE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SYNTHESIS", :"TELEKINESIS", :"THIEF", :"TOXIC", :"TRICK", :"TRICKROOM", :"WILLOWISP", :"WORRYSEED", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"GOURGEIST_2" do |m|
  m.back_sprite 0, 46
  m.front_sprite 3, 16
end

# Form 3 - Small Size
GameData::Species.define :"GOURGEIST_3" do |pkmn|
  pkmn.species :"GOURGEIST"
  pkmn.form 3
  pkmn.name "Gourgeist"
  pkmn.form_name "Small Size"
  pkmn.types :"GHOST", :"GRASS"
  pkmn.base_stats hp: 55, attack: 85, defense: 122,
                  sp_atk: 99, sp_def: 58, speed: 75
  pkmn.abilities :"PICKUP", :"FRISK"
  pkmn.flags :"InheritFormFromMother"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 173
  pkmn.catch_rate 60
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.7
  pkmn.weight 9.5
  pkmn.category "Pumpkin"
  pkmn.pokedex_entry "Small Gourgeist pretend to be children to fool adults. Anyone who falls for the act gets carried away to the hereafter."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"EXPLOSION"
    m.at 1, :"MOONBLAST"
    m.at 1, :"TRICKORTREAT"
    m.at 1, :"ASTONISH"
    m.at 1, :"SHADOWSNEAK"
    m.at 1, :"CONFUSERAY"
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
    m.at 48, :"PHANTOMFORCE"
  end
  pkmn.tutor_moves :"ALLYSWITCH", :"ATTRACT", :"BRUTALSWING", :"BULLETSEED", :"CAPTIVATE", :"CHARGEBEAM", :"CONFIDE", :"DARKPULSE", :"DOUBLETEAM", :"DREAMEATER", :"ENDURE", :"ENERGYBALL", :"EXPLOSION", :"FACADE", :"FIREBLAST", :"FLAMECHARGE", :"FLAMETHROWER", :"FLASH", :"FOCUSBLAST", :"FOULPLAY", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSYGLIDE", :"GYROBALL", :"HEX", :"HIDDENPOWER", :"HYPERBEAM", :"IMPRISON", :"INCINERATE", :"LIGHTSCREEN", :"MAGICCOAT", :"MIMIC", :"MYSTICALFIRE", :"NASTYPLOT", :"NATURALGIFT", :"NATUREPOWER", :"PAINSPLIT", :"PHANTOMFORCE", :"POLTERGEIST", :"POWERWHIP", :"PROTECT", :"PSYCHIC", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROLEPLAY", :"ROUND", :"SAFEGUARD", :"SCARYFACE", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWBALL", :"SKILLSWAP", :"SKITTERSMACK", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SOLARBEAM", :"SPITE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SYNTHESIS", :"TELEKINESIS", :"THIEF", :"TOXIC", :"TRICK", :"TRICKROOM", :"WILLOWISP", :"WORRYSEED", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"GOURGEIST_3" do |m|
  m.back_sprite 0, 46
  m.front_sprite 3, 16
end