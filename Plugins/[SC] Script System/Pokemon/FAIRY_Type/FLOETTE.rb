#=============================================================================
# Floette - FAIRY Type
#=============================================================================

GameData::Species.define :"FLOETTE" do |pkmn|
  pkmn.name "Floette"
  pkmn.form_name "Red Flower"
  pkmn.types :"FAIRY"
  pkmn.base_stats hp: 54, attack: 45, defense: 47,
                  sp_atk: 52, sp_def: 75, speed: 98
  pkmn.abilities :"FLOWERVEIL"
  pkmn.hidden_abilities :"SYMBIOSIS"
  pkmn.flags :"InheritFormFromMother"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Medium"
  pkmn.color :"White"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 130
  pkmn.catch_rate 120
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.2
  pkmn.weight 0.9
  pkmn.category "Single Bloom"
  pkmn.pokedex_entry "It flutters around fields of flowers and cares for flowers that are starting to wilt. It draws out the power of flowers to battle."
  pkmn.evs special_defense: 2
  pkmn.egg_groups :"Fairy"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"VINEWHIP"
    m.at 1, :"FAIRYWIND"
    m.at 6, :"FAIRYWIND"
    m.at 10, :"LUCKYCHANT"
    m.at 15, :"RAZORLEAF"
    m.at 20, :"WISH"
    m.at 25, :"MAGICALLEAF"
    m.at 27, :"GRASSYTERRAIN"
    m.at 33, :"PETALBLIZZARD"
    m.at 38, :"AROMATHERAPY"
    m.at 43, :"MISTYTERRAIN"
    m.at 46, :"MOONBLAST"
    m.at 51, :"PETALDANCE"
    m.at 58, :"SOLARBEAM"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ALLYSWITCH", :"ATTRACT", :"CALMMIND", :"CAPTIVATE", :"CONFIDE", :"COVET", :"DAZZLINGGLEAM", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGADRAIN", :"GRASSKNOT", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"MAGICCOAT", :"MIMIC", :"NATURALGIFT", :"NATUREPOWER", :"PROTECT", :"PSYCHIC", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SYNTHESIS", :"TOXIC", :"WORRYSEED", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"FLOETTE" do |m|
  m.back_sprite -4, 32
  m.front_sprite 4, 7
  m.shadow_sprite 0, 0, -2
end

# Form 6 - Mega Floette
GameData::Species.define :"FLOETTE_6" do |pkmn|
  pkmn.species :"FLOETTE"
  pkmn.form 6
  pkmn.name "Floette"
  pkmn.form_name "Mega Floette"
  pkmn.types :"FAIRY"
  pkmn.base_stats hp: 74, attack: 85, defense: 87,
                  sp_atk: 155, sp_def: 148, speed: 102
  pkmn.abilities :"FLOWERVEIL"
  pkmn.hidden_abilities :"SYMBIOSIS"
  pkmn.flags :"InheritFormFromMother"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Medium"
  pkmn.color :"White"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 130
  pkmn.catch_rate 120
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.2
  pkmn.weight 100.8
  pkmn.category "Single Bloom"
  pkmn.pokedex_entry "The Eternal Flower has absorbed all the energy from Mega Evolution. The flower now attacks enemies on its own."
  pkmn.evs special_defense: 2
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"VINEWHIP"
    m.at 1, :"FAIRYWIND"
    m.at 6, :"FAIRYWIND"
    m.at 10, :"LUCKYCHANT"
    m.at 15, :"RAZORLEAF"
    m.at 20, :"WISH"
    m.at 25, :"MAGICALLEAF"
    m.at 27, :"GRASSYTERRAIN"
    m.at 33, :"PETALBLIZZARD"
    m.at 38, :"AROMATHERAPY"
    m.at 43, :"MISTYTERRAIN"
    m.at 46, :"MOONBLAST"
    m.at 50, :"LIGHTOFRUIN"
    m.at 51, :"PETALDANCE"
    m.at 58, :"SOLARBEAM"
  end
  pkmn.tutor_moves :"BATONPASS", :"CALMMIND", :"CHARM", :"CHILLINGWATER", :"COPYCAT", :"DAZZLINGGLEAM", :"DISARMINGVOICE", :"DRAININGKISS", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"FACADE", :"GIGADRAIN", :"GRASSKNOT", :"HELPINGHAND", :"LIGHTSCREEN", :"METRONOME", :"POLLENPUFF", :"PROTECT", :"PSYCHIC", :"RAINDANCE", :"REST", :"SEEDBOMB", :"SKILLSWAP", :"SLEEPTALK", :"STOREDPOWER", :"SUBSTITUTE", :"SUNNYDAY", :"SWIFT", :"TEARFULLOOK", :"TRAILBLAZE", :"TRICK"
end

GameData::SpeciesMetrics.define :"FLOETTE_6" do |m|
  m.back_sprite -4, 32
  m.front_sprite 4, 7
  m.shadow_sprite 0, 0, -2
end