#=============================================================================
# Luvdisc - WATER Type
#=============================================================================

GameData::Species.define :"LUVDISC" do |pkmn|
  pkmn.name "Luvdisc"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 43, attack: 30, defense: 55,
                  sp_atk: 97, sp_def: 40, speed: 65
  pkmn.abilities :"SWIFTSWIM"
  pkmn.hidden_abilities :"HYDRATION"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female75Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Pink"
  pkmn.shape :"Finned"
  pkmn.base_exp 116
  pkmn.catch_rate 225
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.6
  pkmn.weight 8.7
  pkmn.category "Rendezvous"
  pkmn.pokedex_entry "Luvdisc make the branches of Corsola their nests. There is a custom from long ago of giving a Luvdisc as a gift to express one's feelings of love."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Water2"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 4, :"CHARM"
    m.at 7, :"WATERGUN"
    m.at 9, :"AGILITY"
    m.at 14, :"TAKEDOWN"
    m.at 17, :"LUCKYCHANT"
    m.at 22, :"WATERPULSE"
    m.at 27, :"ATTRACT"
    m.at 31, :"FLAIL"
    m.at 37, :"SWEETKISS"
    m.at 40, :"HYDROPUMP"
    m.at 46, :"AQUARING"
    m.at 51, :"CAPTIVATE"
    m.at 55, :"SAFEGUARD"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLIZZARD", :"BOUNCE", :"BRINE", :"CAPTIVATE", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FRUSTRATION", :"HAIL", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"SWIFT", :"TOXIC", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL"
  pkmn.egg_moves :"AQUAJET", :"AQUARING", :"BRINE", :"CAPTIVATE", :"HEALPULSE", :"MUDSPORT", :"SPLASH", :"SUPERSONIC", :"WATERSPORT"
end

GameData::SpeciesMetrics.define :"LUVDISC" do |m|
  m.back_sprite -3, 0
  m.front_sprite 0, 0
  m.shadow_sprite 0, 0, 1
end