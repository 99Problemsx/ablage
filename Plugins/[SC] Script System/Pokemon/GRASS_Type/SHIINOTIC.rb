#=============================================================================
# Shiinotic - GRASS Type
#=============================================================================

GameData::Species.define :"SHIINOTIC" do |pkmn|
  pkmn.name "Shiinotic"
  pkmn.types :"GRASS", :"FAIRY"
  pkmn.base_stats hp: 60, attack: 45, defense: 80,
                  sp_atk: 30, sp_def: 90, speed: 100
  pkmn.abilities :"ILLUMINATE", :"EFFECTSPORE"
  pkmn.hidden_abilities :"RAINDISH"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Purple"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 142
  pkmn.catch_rate 75
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.0
  pkmn.weight 11.5
  pkmn.category "Illuminating"
  pkmn.pokedex_entry "It puts its prey to sleep and siphons off their vitality through the tip of its arms. If one of its kind is weakened, it helps by sending it vitality."
  pkmn.evs special_defense: 2
  pkmn.egg_groups :"Grass"

  pkmn.moves do |m|
    m.at 1, :"ABSORB"
    m.at 1, :"ASTONISH"
    m.at 1, :"CONFUSERAY"
    m.at 1, :"INGRAIN"
    m.at 12, :"MEGADRAIN"
    m.at 16, :"SLEEPPOWDER"
    m.at 20, :"MOONLIGHT"
    m.at 27, :"STRENGTHSAP"
    m.at 32, :"GIGADRAIN"
    m.at 38, :"DAZZLINGGLEAM"
    m.at 44, :"SPORE"
    m.at 50, :"MOONBLAST"
    m.at 56, :"DREAMEATER"
  end
  pkmn.tutor_moves :"AFTERYOU", :"AMNESIA", :"ATTRACT", :"CAPTIVATE", :"CHARGEBEAM", :"CONFIDE", :"DAZZLINGGLEAM", :"DOUBLETEAM", :"DRAININGKISS", :"DRAINPUNCH", :"DREAMEATER", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"HIDDENPOWER", :"HYPERBEAM", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGICROOM", :"MIMIC", :"NATURALGIFT", :"NATUREPOWER", :"POLLENPUFF", :"PROTECT", :"RAINDANCE", :"RECYCLE", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SIGNALBEAM", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SYNTHESIS", :"THUNDERWAVE", :"TOXIC", :"WEATHERBALL", :"WONDERROOM", :"WORRYSEED", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"SHIINOTIC" do |m|
  m.back_sprite 5, 41
  m.front_sprite 0, 16
  m.shadow_sprite 0, 0, -1
end