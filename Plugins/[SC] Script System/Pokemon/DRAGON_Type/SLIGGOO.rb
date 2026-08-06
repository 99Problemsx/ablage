#=============================================================================
# Sliggoo - DRAGON Type
#=============================================================================

GameData::Species.define :"SLIGGOO" do |pkmn|
  pkmn.name "Sliggoo"
  pkmn.types :"DRAGON"
  pkmn.base_stats hp: 68, attack: 75, defense: 53,
                  sp_atk: 60, sp_def: 83, speed: 113
  pkmn.abilities :"SAPSIPPER", :"HYDRATION"
  pkmn.hidden_abilities :"GOOEY"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Purple"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 158
  pkmn.catch_rate 45
  pkmn.happiness 35
  pkmn.hatch_steps 10240
  pkmn.height 0.8
  pkmn.weight 17.5
  pkmn.category "Soft Tissue"
  pkmn.pokedex_entry "This Pokémon's mucous can dissolve anything. Toothless, it sprays mucous on its prey. Once they're nicely dissolved, it slurps them up."
  pkmn.evs special_defense: 2
  pkmn.egg_groups :"Dragon"

  pkmn.moves do |m|
    m.at 0, :"ACIDSPRAY"
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
    m.at 56, :"MUDDYWATER"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"CAPTIVATE", :"CONFIDE", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONPULSE", :"ENDURE", :"FACADE", :"FRUSTRATION", :"HIDDENPOWER", :"ICEBEAM", :"INFESTATION", :"IRONTAIL", :"MIMIC", :"MUDDYWATER", :"MUDSHOT", :"NATURALGIFT", :"OUTRAGE", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSLIDE", :"ROUND", :"SECRETPOWER", :"SHOCKWAVE", :"SKITTERSMACK", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"THUNDERBOLT", :"TOXIC", :"WATERPULSE", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"SLIGGOO" do |m|
  m.back_sprite -2, 14
  m.front_sprite 2, 2
end

# Form 1 - Hisuian
GameData::Species.define :"SLIGGOO_1" do |pkmn|
  pkmn.species :"SLIGGOO"
  pkmn.form 1
  pkmn.name "Sliggoo"
  pkmn.form_name "Hisuian"
  pkmn.types :"STEEL", :"DRAGON"
  pkmn.base_stats hp: 58, attack: 75, defense: 83,
                  sp_atk: 40, sp_def: 83, speed: 113
  pkmn.abilities :"SAPSIPPER", :"SHELLARMOR"
  pkmn.hidden_abilities :"GOOEY"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Purple"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 158
  pkmn.catch_rate 45
  pkmn.happiness 35
  pkmn.hatch_steps 10240
  pkmn.height 0.7
  pkmn.weight 68.5
  pkmn.category "Snail"
  pkmn.pokedex_entry "A creature given to melancholy. I suspect its metallic shell developed as a result of the mucus on its skin reacting with the iron in Hisui's water."
  pkmn.evs special_defense: 2
  pkmn.egg_groups :"Dragon"

  pkmn.moves do |m|
    m.at 0, :"SHELTER"
    m.at 1, :"ACIDARMOR"
    m.at 1, :"DRAGONBREATH"
    m.at 1, :"TACKLE"
    m.at 1, :"WATERGUN"
    m.at 1, :"ABSORB"
    m.at 15, :"PROTECT"
    m.at 20, :"FLAIL"
    m.at 25, :"WATERPULSE"
    m.at 30, :"RAINDANCE"
    m.at 35, :"DRAGONPULSE"
    m.at 43, :"CURSE"
    m.at 49, :"IRONHEAD"
    m.at 56, :"MUDDYWATER"
  end
  pkmn.tutor_moves :"ACIDSPRAY", :"BLIZZARD", :"BODYSLAM", :"CHARM", :"CHILLINGWATER", :"CURSE", :"DRACOMETEOR", :"DRAGONPULSE", :"ENDURE", :"FACADE", :"FLASHCANNON", :"GYROBALL", :"HEAVYSLAM", :"ICEBEAM", :"ICESPINNER", :"IRONHEAD", :"MUDDYWATER", :"MUDSHOT", :"OUTRAGE", :"PROTECT", :"RAINDANCE", :"REST", :"ROCKSLIDE", :"ROCKTOMB", :"SANDSTORM", :"SKITTERSMACK", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"STEELBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"TAKEDOWN", :"THUNDER", :"THUNDERBOLT", :"WATERPULSE"
end

GameData::SpeciesMetrics.define :"SLIGGOO_1" do |m|
  m.back_sprite 0, 52
  m.front_sprite -1, 22
  m.shadow_sprite 0, 0, 2
end