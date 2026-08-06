#=============================================================================
# Flabébé - FAIRY Type
#=============================================================================

GameData::Species.define :"FLABEBE" do |pkmn|
  pkmn.name "Flabébé"
  pkmn.form_name "Red Flower"
  pkmn.types :"FAIRY"
  pkmn.base_stats hp: 44, attack: 38, defense: 39,
                  sp_atk: 42, sp_def: 61, speed: 79
  pkmn.abilities :"FLOWERVEIL"
  pkmn.hidden_abilities :"SYMBIOSIS"
  pkmn.flags :"InheritFormFromMother"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Medium"
  pkmn.color :"White"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 61
  pkmn.catch_rate 225
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.1
  pkmn.weight 0.1
  pkmn.category "Single Bloom"
  pkmn.pokedex_entry "When it finds a flower it likes, it dwells on that flower its whole life long. It floats in the wind's embrace with an untroubled heart."
  pkmn.evs special_defense: 1
  pkmn.egg_groups :"Fairy"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"VINEWHIP"
    m.at 6, :"FAIRYWIND"
    m.at 10, :"LUCKYCHANT"
    m.at 15, :"RAZORLEAF"
    m.at 20, :"WISH"
    m.at 22, :"MAGICALLEAF"
    m.at 24, :"GRASSYTERRAIN"
    m.at 28, :"PETALBLIZZARD"
    m.at 33, :"AROMATHERAPY"
    m.at 37, :"MISTYTERRAIN"
    m.at 41, :"MOONBLAST"
    m.at 45, :"PETALDANCE"
    m.at 48, :"SOLARBEAM"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ALLYSWITCH", :"ATTRACT", :"CALMMIND", :"CAPTIVATE", :"CONFIDE", :"COVET", :"DAZZLINGGLEAM", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGADRAIN", :"GRASSKNOT", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"MAGICCOAT", :"MIMIC", :"NATURALGIFT", :"NATUREPOWER", :"PROTECT", :"PSYCHIC", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SYNTHESIS", :"TOXIC", :"WORRYSEED", :"TERABLAST"
  pkmn.egg_moves :"CAMOUFLAGE", :"CAPTIVATE", :"COPYCAT", :"TEARFULLOOK"
end

GameData::SpeciesMetrics.define :"FLABEBE" do |m|
  m.back_sprite 0, 30
  m.front_sprite 0, 15
  m.shadow_sprite 0, 0, -2
end