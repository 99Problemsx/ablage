#=============================================================================
# Xerneas - FAIRY Type
#=============================================================================

GameData::Species.define :"XERNEAS" do |pkmn|
  pkmn.name "Xerneas"
  pkmn.form_name "Neutral Mode"
  pkmn.types :"FAIRY"
  pkmn.base_stats hp: 126, attack: 131, defense: 95,
                  sp_atk: 99, sp_def: 131, speed: 98
  pkmn.abilities :"FAIRYAURA"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 340
  pkmn.catch_rate 45
  pkmn.happiness 0
  pkmn.hatch_steps 30720
  pkmn.height 3.0
  pkmn.weight 215.0
  pkmn.category "Life"
  pkmn.pokedex_entry "Legends say it can share eternal life. It slept for a thousand years in the form of a tree before its revival."
  pkmn.evs hp: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"GRAVITY"
    m.at 5, :"LIGHTSCREEN"
    m.at 10, :"AURORABEAM"
    m.at 15, :"NATUREPOWER"
    m.at 20, :"NIGHTSLASH"
    m.at 25, :"AROMATHERAPY"
    m.at 30, :"PSYCHUP"
    m.at 35, :"HORNLEECH"
    m.at 40, :"MISTYTERRAIN"
    m.at 45, :"INGRAIN"
    m.at 50, :"TAKEDOWN"
    m.at 55, :"GEOMANCY"
    m.at 60, :"MOONBLAST"
    m.at 65, :"HEALPULSE"
    m.at 70, :"MEGAHORN"
    m.at 75, :"CLOSECOMBAT"
    m.at 80, :"OUTRAGE"
    m.at 85, :"GIGAIMPACT"
  end
  pkmn.tutor_moves :"BLOCK", :"BODYSLAM", :"CALMMIND", :"CLOSECOMBAT", :"CONFIDE", :"CUT", :"DAZZLINGGLEAM", :"DEFOG", :"DOUBLETEAM", :"DRAININGKISS", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLASH", :"FLASHCANNON", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GRAVITY", :"HAIL", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"LASERFOCUS", :"LIGHTSCREEN", :"MEGAHORN", :"MIMIC", :"MISTYEXPLOSION", :"MISTYTERRAIN", :"NATURALGIFT", :"NATUREPOWER", :"OUTRAGE", :"PLAYROUGH", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SMARTSTRIKE", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TERRAINPULSE", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"WONDERROOM", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"XERNEAS" do |m|
  m.back_sprite 6, 40
  m.front_sprite -4, 5
end