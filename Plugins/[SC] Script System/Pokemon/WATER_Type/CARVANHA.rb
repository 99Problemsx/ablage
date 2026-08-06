#=============================================================================
# Carvanha - WATER Type
#=============================================================================

GameData::Species.define :"CARVANHA" do |pkmn|
  pkmn.name "Carvanha"
  pkmn.types :"WATER", :"DARK"
  pkmn.base_stats hp: 45, attack: 90, defense: 20,
                  sp_atk: 65, sp_def: 65, speed: 20
  pkmn.abilities :"ROUGHSKIN"
  pkmn.hidden_abilities :"SPEEDBOOST"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Red"
  pkmn.shape :"Finned"
  pkmn.base_exp 61
  pkmn.catch_rate 225
  pkmn.happiness 35
  pkmn.hatch_steps 5140
  pkmn.height 0.8
  pkmn.weight 20.8
  pkmn.category "Savage"
  pkmn.pokedex_entry "Carvanha attack ships in swarms, making them sink. Although it is said to be a very vicious Pokémon, it timidly flees as soon as it finds itself alone."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Water2"

  pkmn.moves do |m|
    m.at 1, :"LEER"
    m.at 1, :"BITE"
    m.at 6, :"RAGE"
    m.at 8, :"FOCUSENERGY"
    m.at 11, :"SCARYFACE"
    m.at 16, :"ICEFANG"
    m.at 18, :"SCREECH"
    m.at 21, :"SWAGGER"
    m.at 26, :"ASSURANCE"
    m.at 28, :"CRUNCH"
    m.at 31, :"AQUAJET"
    m.at 36, :"AGILITY"
    m.at 38, :"TAKEDOWN"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"ATTRACT", :"BLIZZARD", :"BOUNCE", :"BRINE", :"CAPTIVATE", :"DARKPULSE", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FRUSTRATION", :"FURYCUTTER", :"HAIL", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROUND", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SNARL", :"SNORE", :"SPITE", :"SUBSTITUTE", :"SUPERFANG", :"SURF", :"SWAGGER", :"SWIFT", :"TAUNT", :"THIEF", :"TORMENT", :"TOXIC", :"UPROAR", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL", :"ZENHEADBUTT"
  pkmn.egg_moves :"ANCIENTPOWER", :"BRINE", :"DOUBLEEDGE", :"HYDROPUMP", :"SWIFT", :"THRASH"
end

GameData::SpeciesMetrics.define :"CARVANHA" do |m|
  m.back_sprite -1, 0
  m.front_sprite 1, 7
  m.shadow_sprite 0, 0, 2
end