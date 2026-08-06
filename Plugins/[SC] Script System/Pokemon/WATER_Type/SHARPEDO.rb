#=============================================================================
# Sharpedo - WATER Type
#=============================================================================

GameData::Species.define :"SHARPEDO" do |pkmn|
  pkmn.name "Sharpedo"
  pkmn.types :"WATER", :"DARK"
  pkmn.base_stats hp: 70, attack: 120, defense: 40,
                  sp_atk: 95, sp_def: 95, speed: 40
  pkmn.abilities :"ROUGHSKIN"
  pkmn.hidden_abilities :"SPEEDBOOST"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Finned"
  pkmn.base_exp 161
  pkmn.catch_rate 60
  pkmn.happiness 35
  pkmn.hatch_steps 5140
  pkmn.height 1.8
  pkmn.weight 88.8
  pkmn.category "Brutal"
  pkmn.pokedex_entry "The vicious and sly gangster of the sea. Its skin is specially textured to minimize drag in water. Its speed tops out at over 75 miles per hour."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Water2"

  pkmn.moves do |m|
    m.at 1, :"FEINT"
    m.at 1, :"LEER"
    m.at 1, :"BITE"
    m.at 1, :"RAGE"
    m.at 1, :"FOCUSENERGY"
    m.at 6, :"RAGE"
    m.at 8, :"FOCUSENERGY"
    m.at 11, :"SCARYFACE"
    m.at 16, :"ICEFANG"
    m.at 18, :"SCREECH"
    m.at 21, :"SWAGGER"
    m.at 26, :"ASSURANCE"
    m.at 28, :"CRUNCH"
    m.at 30, :"SLASH"
    m.at 34, :"AQUAJET"
    m.at 40, :"TAUNT"
    m.at 45, :"AGILITY"
    m.at 50, :"SKULLBASH"
    m.at 56, :"NIGHTSLASH"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BOUNCE", :"BRINE", :"BULLDOZE", :"CAPTIVATE", :"DARKPULSE", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"HAIL", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SNARL", :"SNORE", :"SPITE", :"STRENGTH", :"SUBSTITUTE", :"SUPERFANG", :"SURF", :"SWAGGER", :"SWIFT", :"TAUNT", :"THIEF", :"TORMENT", :"TOXIC", :"UPROAR", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"SHARPEDO" do |m|
  m.back_sprite -2, 0
  m.front_sprite 3, -4
  m.shadow_sprite 0, 0, 2
end