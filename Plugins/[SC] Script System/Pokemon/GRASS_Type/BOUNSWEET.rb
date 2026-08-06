#=============================================================================
# Bounsweet - GRASS Type
#=============================================================================

GameData::Species.define :"BOUNSWEET" do |pkmn|
  pkmn.name "Bounsweet"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 42, attack: 30, defense: 38,
                  sp_atk: 32, sp_def: 30, speed: 38
  pkmn.abilities :"LEAFGUARD", :"OBLIVIOUS"
  pkmn.hidden_abilities :"SWEETVEIL"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Purple"
  pkmn.shape :"HeadLegs"
  pkmn.base_exp 42
  pkmn.catch_rate 235
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.3
  pkmn.weight 3.2
  pkmn.category "Fruit"
  pkmn.pokedex_entry "Because of its sweet, delicious aroma, bird Pokémon are always after it, but it's not intelligent enough to care."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Grass"

  pkmn.moves do |m|
    m.at 1, :"SPLASH"
    m.at 4, :"PLAYNICE"
    m.at 8, :"RAPIDSPIN"
    m.at 12, :"RAZORLEAF"
    m.at 16, :"SWEETSCENT"
    m.at 20, :"MAGICALLEAF"
    m.at 24, :"FLAIL"
    m.at 28, :"TEETERDANCE"
    m.at 32, :"AROMATICMIST"
    m.at 36, :"AROMATHERAPY"
  end
  pkmn.tutor_moves :"ATTRACT", :"BOUNCE", :"CAPTIVATE", :"CHARM", :"CONFIDE", :"COVET", :"DAZZLINGGLEAM", :"DOUBLETEAM", :"DRAININGKISS", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FRUSTRATION", :"GIGADRAIN", :"GRASSKNOT", :"GRASSYGLIDE", :"HELPINGHAND", :"HIDDENPOWER", :"LIGHTSCREEN", :"MAGICALLEAF", :"MIMIC", :"NATURALGIFT", :"NATUREPOWER", :"PLAYROUGH", :"PROTECT", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SYNTHESIS", :"TOXIC", :"WORRYSEED", :"ZENHEADBUTT", :"TERABLAST"
  pkmn.egg_moves :"ACUPRESSURE", :"ENDEAVOR", :"SYNTHESIS"
end

GameData::SpeciesMetrics.define :"BOUNSWEET" do |m|
  m.back_sprite 4, 3
  m.front_sprite 1, 1
end