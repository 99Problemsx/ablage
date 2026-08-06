#=============================================================================
# Florges - FAIRY Type
#=============================================================================

GameData::Species.define :"FLORGES" do |pkmn|
  pkmn.name "Florges"
  pkmn.form_name "Red Flower"
  pkmn.types :"FAIRY"
  pkmn.base_stats hp: 78, attack: 65, defense: 68,
                  sp_atk: 75, sp_def: 112, speed: 154
  pkmn.abilities :"FLOWERVEIL"
  pkmn.hidden_abilities :"SYMBIOSIS"
  pkmn.flags :"InheritFormFromMother"
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Medium"
  pkmn.color :"White"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 276
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.1
  pkmn.weight 10.0
  pkmn.category "Garden"
  pkmn.pokedex_entry "It claims exquisite flower gardens as its territory, and it obtains power from basking in the energy emitted by flowering plants."
  pkmn.evs special_defense: 3
  pkmn.egg_groups :"Fairy"

  pkmn.moves do |m|
    m.at 1, :"DISARMINGVOICE"
    m.at 1, :"LUCKYCHANT"
    m.at 1, :"WISH"
    m.at 1, :"MAGICALLEAF"
    m.at 1, :"FLOWERSHIELD"
    m.at 1, :"GRASSKNOT"
    m.at 1, :"GRASSYTERRAIN"
    m.at 1, :"PETALBLIZZARD"
    m.at 1, :"MISTYTERRAIN"
    m.at 1, :"MOONBLAST"
    m.at 1, :"PETALDANCE"
    m.at 1, :"AROMATHERAPY"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ALLYSWITCH", :"ATTRACT", :"CALMMIND", :"CAPTIVATE", :"CONFIDE", :"COVET", :"DAZZLINGGLEAM", :"DEFOG", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"LIGHTSCREEN", :"MAGICCOAT", :"MIMIC", :"NATURALGIFT", :"NATUREPOWER", :"PROTECT", :"PSYCHIC", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SYNTHESIS", :"TOXIC", :"WORRYSEED", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"FLORGES" do |m|
  m.back_sprite 5, 54
  m.front_sprite 5, 16
end