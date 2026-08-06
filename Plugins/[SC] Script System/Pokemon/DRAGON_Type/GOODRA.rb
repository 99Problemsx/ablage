#=============================================================================
# Goodra - DRAGON Type
#=============================================================================

GameData::Species.define :"GOODRA" do |pkmn|
  pkmn.name "Goodra"
  pkmn.types :"DRAGON"
  pkmn.base_stats hp: 90, attack: 100, defense: 70,
                  sp_atk: 80, sp_def: 110, speed: 150
  pkmn.abilities :"SAPSIPPER", :"HYDRATION"
  pkmn.hidden_abilities :"GOOEY"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Purple"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 300
  pkmn.catch_rate 45
  pkmn.happiness 35
  pkmn.hatch_steps 10240
  pkmn.height 2.0
  pkmn.weight 150.5
  pkmn.category "Dragon"
  pkmn.pokedex_entry "It gets picked on because it's meek. But then, whoever teased it gets to feel the full force of its horns and a good swatting from its thick tail."
  pkmn.evs special_defense: 3
  pkmn.egg_groups :"Dragon"

  pkmn.moves do |m|
    m.at 0, :"AQUATAIL"
    m.at 1, :"ACIDSPRAY"
    m.at 1, :"POISONTAIL"
    m.at 1, :"TEARFULLOOK"
    m.at 1, :"FEINT"
    m.at 1, :"ABSORB"
    m.at 1, :"TACKLE"
    m.at 1, :"WATERGUN"
    m.at 1, :"DRAGONBREATH"
    m.at 15, :"PROTECT"
    m.at 20, :"FLAIL"
    m.at 25, :"WATERPULSE"
    m.at 30, :"RAINDANCE"
    m.at 35, :"DRAGONPULSE"
    m.at 43, :"CURSE"
    m.at 49, :"BODYSLAM"
    m.at 58, :"MUDDYWATER"
    m.at 67, :"POWERWHIP"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ASSURANCE", :"ATTRACT", :"BLIZZARD", :"BODYPRESS", :"BODYSLAM", :"BREAKINGSWIPE", :"BRUTALSWING", :"BULLDOZE", :"CAPTIVATE", :"CONFIDE", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONPULSE", :"DRAGONTAIL", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HIDDENPOWER", :"HYDROPUMP", :"HYPERBEAM", :"ICEBEAM", :"INCINERATE", :"INFESTATION", :"IRONTAIL", :"LASERFOCUS", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDDYWATER", :"MUDSHOT", :"NATURALGIFT", :"OUTRAGE", :"POWERWHIP", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROUND", :"SECRETPOWER", :"SHOCKWAVE", :"SKITTERSMACK", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SNORE", :"STOMPINGTANTRUM", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SURF", :"SWAGGER", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"TOXIC", :"WATERPULSE", :"WEATHERBALL", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"GOODRA" do |m|
  m.back_sprite -5, 44
  m.front_sprite 5, 7
end

# Form 1 - Hisuian
GameData::Species.define :"GOODRA_1" do |pkmn|
  pkmn.species :"GOODRA"
  pkmn.form 1
  pkmn.name "Goodra"
  pkmn.form_name "Hisuian"
  pkmn.types :"STEEL", :"DRAGON"
  pkmn.base_stats hp: 80, attack: 100, defense: 100,
                  sp_atk: 60, sp_def: 110, speed: 150
  pkmn.abilities :"SAPSIPPER", :"SHELLARMOR"
  pkmn.hidden_abilities :"GOOEY"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Purple"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 300
  pkmn.catch_rate 45
  pkmn.happiness 35
  pkmn.hatch_steps 10240
  pkmn.height 1.7
  pkmn.weight 334.1
  pkmn.category "Shell Bunker"
  pkmn.pokedex_entry "Able to freely control the hardness of its metallic shell. It loathes solitude and is extremely clingy—it will fume and run riot if those dearest to it ever leave its side."
  pkmn.evs special_defense: 3
  pkmn.egg_groups :"Dragon"

  pkmn.moves do |m|
    m.at 0, :"IRONTAIL"
    m.at 1, :"SHELTER"
    m.at 1, :"ACIDSPRAY"
    m.at 1, :"FEINT"
    m.at 1, :"TEARFULLOOK"
    m.at 1, :"DRAGONBREATH"
    m.at 1, :"TACKLE"
    m.at 1, :"ABSORB"
    m.at 1, :"WATERGUN"
    m.at 15, :"PROTECT"
    m.at 20, :"FLAIL"
    m.at 25, :"WATERPULSE"
    m.at 30, :"RAINDANCE"
    m.at 35, :"DRAGONPULSE"
    m.at 43, :"CURSE"
    m.at 49, :"BODYSLAM"
    m.at 49, :"IRONHEAD"
    m.at 58, :"MUDDYWATER"
    m.at 67, :"HEAVYSLAM"
  end
  pkmn.tutor_moves :"ACIDSPRAY", :"BLIZZARD", :"BODYPRESS", :"BODYSLAM", :"BREAKINGSWIPE", :"BULLDOZE", :"CHARM", :"CHILLINGWATER", :"CURSE", :"DRACOMETEOR", :"DRAGONCHEER", :"DRAGONCLAW", :"DRAGONPULSE", :"DRAGONTAIL", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREPUNCH", :"FLAMETHROWER", :"FLASHCANNON", :"GIGAIMPACT", :"GYROBALL", :"HEAVYSLAM", :"HYDROPUMP", :"HYPERBEAM", :"ICEBEAM", :"ICESPINNER", :"IRONHEAD", :"KNOCKOFF", :"LASHOUT", :"MUDDYWATER", :"MUDSHOT", :"OUTRAGE", :"PROTECT", :"RAINDANCE", :"REST", :"ROCKSLIDE", :"ROCKTOMB", :"SANDSTORM", :"SCARYFACE", :"SKITTERSMACK", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"STEELBEAM", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUNNYDAY", :"SURF", :"TAKEDOWN", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"WATERPULSE", :"WEATHERBALL"
end

GameData::SpeciesMetrics.define :"GOODRA_1" do |m|
  m.back_sprite 1, 38
  m.front_sprite -7, 11
  m.shadow_sprite 0, 0, 2
end