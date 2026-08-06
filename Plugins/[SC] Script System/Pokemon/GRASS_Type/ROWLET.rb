#=============================================================================
# Rowlet - GRASS Type
#=============================================================================

GameData::Species.define :"ROWLET" do |pkmn|
  pkmn.name "Rowlet"
  pkmn.types :"GRASS", :"FLYING"
  pkmn.base_stats hp: 68, attack: 55, defense: 55,
                  sp_atk: 42, sp_def: 50, speed: 50
  pkmn.abilities :"OVERGROW"
  pkmn.hidden_abilities :"LONGREACH"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Brown"
  pkmn.shape :"Winged"
  pkmn.base_exp 64
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 0.3
  pkmn.weight 1.5
  pkmn.category "Grass Quill"
  pkmn.pokedex_entry "It sends its feathers, which are as sharp as blades, flying in attack. Its legs are strong, so its kicks are also formidable."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"GROWL"
    m.at 3, :"LEAFAGE"
    m.at 6, :"ASTONISH"
    m.at 9, :"PECK"
    m.at 12, :"SHADOWSNEAK"
    m.at 15, :"RAZORLEAF"
    m.at 18, :"SYNTHESIS"
    m.at 21, :"PLUCK"
    m.at 24, :"NASTYPLOT"
    m.at 27, :"SUCKERPUNCH"
    m.at 30, :"LEAFBLADE"
    m.at 33, :"FEATHERDANCE"
    m.at 36, :"BRAVEBIRD"
  end
  pkmn.tutor_moves :"ATTRACT", :"BATONPASS", :"BRAVEBIRD", :"CAPTIVATE", :"CONFIDE", :"COVET", :"DEFOG", :"DOUBLETEAM", :"DUALWINGBEAT", :"ECHOEDVOICE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FALSESWIPE", :"FRUSTRATION", :"GIGADRAIN", :"GRASSKNOT", :"GRASSPLEDGE", :"GRASSYGLIDE", :"HIDDENPOWER", :"LEAFBLADE", :"LIGHTSCREEN", :"MIMIC", :"NASTYPLOT", :"NATURALGIFT", :"NATUREPOWER", :"PROTECT", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWCLAW", :"SKYATTACK", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STEELWING", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"SYNTHESIS", :"TOXIC", :"WORKUP", :"WORRYSEED", :"TERABLAST"
  pkmn.egg_moves :"CONFUSERAY", :"DEFOG", :"DOUBLETEAM", :"KNOCKOFF"
end

GameData::SpeciesMetrics.define :"ROWLET" do |m|
  m.back_sprite 3, 23
  m.front_sprite -1, 32
end