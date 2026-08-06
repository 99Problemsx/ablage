#=============================================================================
# Morelull - GRASS Type
#=============================================================================

GameData::Species.define :"MORELULL" do |pkmn|
  pkmn.name "Morelull"
  pkmn.types :"GRASS", :"FAIRY"
  pkmn.base_stats hp: 40, attack: 35, defense: 55,
                  sp_atk: 15, sp_def: 65, speed: 75
  pkmn.abilities :"ILLUMINATE", :"EFFECTSPORE"
  pkmn.hidden_abilities :"RAINDISH"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Purple"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 57
  pkmn.catch_rate 190
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.2
  pkmn.weight 1.5
  pkmn.category "Illuminating"
  pkmn.pokedex_entry "It scatters its shining spores around itself. Even though they're dangerous, nighttime tours of forests where Morelull live are popular."
  pkmn.evs special_defense: 1
  pkmn.egg_groups :"Grass"

  pkmn.moves do |m|
    m.at 1, :"ABSORB"
    m.at 1, :"ASTONISH"
    m.at 4, :"CONFUSERAY"
    m.at 8, :"INGRAIN"
    m.at 12, :"MEGADRAIN"
    m.at 16, :"SLEEPPOWDER"
    m.at 20, :"MOONLIGHT"
    m.at 25, :"STRENGTHSAP"
    m.at 28, :"GIGADRAIN"
    m.at 32, :"DAZZLINGGLEAM"
    m.at 36, :"SPORE"
    m.at 40, :"MOONBLAST"
    m.at 44, :"DREAMEATER"
  end
  pkmn.tutor_moves :"AFTERYOU", :"AMNESIA", :"ATTRACT", :"CAPTIVATE", :"CONFIDE", :"DAZZLINGGLEAM", :"DOUBLETEAM", :"DRAININGKISS", :"DREAMEATER", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FRUSTRATION", :"GIGADRAIN", :"GRASSKNOT", :"HIDDENPOWER", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGICROOM", :"MIMIC", :"NATURALGIFT", :"NATUREPOWER", :"POLLENPUFF", :"PROTECT", :"RECYCLE", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SIGNALBEAM", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SYNTHESIS", :"THUNDERWAVE", :"TOXIC", :"WONDERROOM", :"WORRYSEED", :"TERABLAST"
  pkmn.egg_moves :"GROWTH", :"LEECHSEED", :"POISONPOWDER", :"STUNSPORE"
end

GameData::SpeciesMetrics.define :"MORELULL" do |m|
  m.back_sprite 8, 40
  m.front_sprite 2, 25
end