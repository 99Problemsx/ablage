#=============================================================================
# Eternatus - POISON Type
#=============================================================================

GameData::Species.define :"ETERNATUS" do |pkmn|
  pkmn.name "Eternatus"
  pkmn.types :"POISON", :"DRAGON"
  pkmn.base_stats hp: 140, attack: 85, defense: 95,
                  sp_atk: 130, sp_def: 145, speed: 95
  pkmn.abilities :"PRESSURE"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Purple"
  pkmn.shape :"Winged"
  pkmn.base_exp 345
  pkmn.catch_rate 255
  pkmn.happiness 0
  pkmn.hatch_steps 30720
  pkmn.height 20.0
  pkmn.weight 950.0
  pkmn.category "Gigantic"
  pkmn.pokedex_entry "The core on its chest absorbs energy emanating from the lands of the Galar region. This energy is what allows Eternatus to stay active."
  pkmn.evs hp: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"POISONTAIL"
    m.at 1, :"CONFUSERAY"
    m.at 1, :"DRAGONTAIL"
    m.at 1, :"AGILITY"
    m.at 8, :"TOXIC"
    m.at 16, :"VENOSHOCK"
    m.at 24, :"DRAGONDANCE"
    m.at 32, :"CROSSPOISON"
    m.at 40, :"DRAGONPULSE"
    m.at 48, :"FLAMETHROWER"
    m.at 56, :"DYNAMAXCANNON"
    m.at 64, :"COSMICPOWER"
    m.at 72, :"RECOVER"
    m.at 80, :"HYPERBEAM"
    m.at 88, :"ETERNABEAM"
  end
  pkmn.tutor_moves :"AGILITY", :"ASSURANCE", :"BRUTALSWING", :"CONFIDE", :"COSMICPOWER", :"CROSSPOISON", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONDANCE", :"DRAGONPULSE", :"ENDURE", :"FACADE", :"FLAMETHROWER", :"FLASHCANNON", :"FLY", :"FRUSTRATION", :"GIGAIMPACT", :"HIDDENPOWER", :"HYPERBEAM", :"LIGHTSCREEN", :"METEORBEAM", :"MIMIC", :"MYSTICALFIRE", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SCARYFACE", :"SCREECH", :"SECRETPOWER", :"SHADOWBALL", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SWAGGER", :"TOXIC", :"TOXICSPIKES", :"VENOMDRENCH", :"VENOSHOCK", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"ETERNATUS" do |m|
  m.back_sprite 6, 70
  m.front_sprite 0, 9
  m.shadow_sprite 0, 0, -1
end