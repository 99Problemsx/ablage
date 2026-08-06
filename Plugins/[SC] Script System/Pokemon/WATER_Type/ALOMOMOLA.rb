#=============================================================================
# Alomomola - WATER Type
#=============================================================================

GameData::Species.define :"ALOMOMOLA" do |pkmn|
  pkmn.name "Alomomola"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 165, attack: 75, defense: 80,
                  sp_atk: 65, sp_def: 40, speed: 45
  pkmn.abilities :"HYDRATION", :"HEALER"
  pkmn.hidden_abilities :"REGENERATOR"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Pink"
  pkmn.shape :"Finned"
  pkmn.base_exp 165
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 10280
  pkmn.height 1.2
  pkmn.weight 31.6
  pkmn.category "Caring"
  pkmn.pokedex_entry "Floating in the open sea is how they live. When they find a wounded Pokémon, they embrace it and bring it to shore."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Water1", :"Water2"

  pkmn.moves do |m|
    m.at 1, :"POUND"
    m.at 1, :"WATERSPORT"
    m.at 5, :"AQUARING"
    m.at 9, :"AQUAJET"
    m.at 13, :"DOUBLESLAP"
    m.at 17, :"HEALPULSE"
    m.at 21, :"PROTECT"
    m.at 25, :"WATERPULSE"
    m.at 29, :"WAKEUPSLAP"
    m.at 33, :"SOAK"
    m.at 37, :"WISH"
    m.at 41, :"BRINE"
    m.at 45, :"SAFEGUARD"
    m.at 49, :"HELPINGHAND"
    m.at 53, :"WIDEGUARD"
    m.at 57, :"HEALINGWISH"
    m.at 61, :"HYDROPUMP"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLIZZARD", :"BOUNCE", :"CALMMIND", :"CAPTIVATE", :"DIVE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FRUSTRATION", :"HAIL", :"HELPINGHAND", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"KNOCKOFF", :"LIGHTSCREEN", :"MAGICCOAT", :"MIMIC", :"NATURALGIFT", :"PAINSPLIT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SCALD", :"SECRETPOWER", :"SHADOWBALL", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"TOXIC", :"WATERFALL"
  pkmn.egg_moves :"ENDURE", :"MIRRORCOAT", :"MIST", :"PAINSPLIT", :"REFRESH", :"TICKLE"
end

GameData::SpeciesMetrics.define :"ALOMOMOLA" do |m|
  m.back_sprite -2, 0
  m.front_sprite 0, 4
  m.shadow_sprite 0, 0, 1
end