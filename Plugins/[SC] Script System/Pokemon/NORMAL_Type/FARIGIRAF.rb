#=============================================================================
# Farigiraf - NORMAL Type
#=============================================================================

GameData::Species.define :"FARIGIRAF" do |pkmn|
  pkmn.name "Farigiraf"
  pkmn.types :"NORMAL", :"PSYCHIC"
  pkmn.base_stats hp: 120, attack: 90, defense: 70,
                  sp_atk: 60, sp_def: 110, speed: 70
  pkmn.abilities :"CUDCHEW", :"ARMORTAIL"
  pkmn.hidden_abilities :"SAPSIPPER"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 260
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 3.2
  pkmn.weight 160.0
  pkmn.category "Long Neck"
  pkmn.pokedex_entry "Now that the brain waves from the head and tail are synced up, the psychic power of this Pokémon is 10 times stronger than Girafarig’s."
  pkmn.evs hp: 3
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"POWERSWAP"
    m.at 1, :"GUARDSWAP"
    m.at 1, :"TACKLE"
    m.at 1, :"GROWL"
    m.at 1, :"ASTONISH"
    m.at 5, :"CONFUSION"
    m.at 10, :"ASSURANCE"
    m.at 14, :"STOMP"
    m.at 19, :"PSYBEAM"
    m.at 23, :"AGILITY"
    m.at 28, :"DOUBLEHIT"
    m.at 32, :"TWINBEAM"
    m.at 37, :"CRUNCH"
    m.at 41, :"BATONPASS"
    m.at 46, :"NASTYPLOT"
    m.at 50, :"PSYCHIC"
  end
  pkmn.tutor_moves :"AGILITY", :"AMNESIA", :"BATONPASS", :"BODYSLAM", :"BULLDOZE", :"CALMMIND", :"CHARGEBEAM", :"CONFUSERAY", :"CRUNCH", :"CURSE", :"DAZZLINGGLEAM", :"DOUBLEEDGE", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"EXPANDINGFORCE", :"FACADE", :"FOULPLAY", :"FUTURESIGHT", :"GIGAIMPACT", :"GRASSKNOT", :"GRAVITY", :"HELPINGHAND", :"HIGHHORSEPOWER", :"HYPERBEAM", :"HYPERVOICE", :"IMPRISON", :"IRONHEAD", :"LIGHTSCREEN", :"LOWKICK", :"NASTYPLOT", :"NIGHTSHADE", :"PROTECT", :"PSYBEAM", :"PSYCHIC", :"PSYCHICFANGS", :"PSYCHICNOISE", :"PSYCHICTERRAIN", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"REFLECT", :"REST", :"ROAR", :"SHADOWBALL", :"SKILLSWAP", :"SLEEPTALK", :"STOMPINGTANTRUM", :"STOREDPOWER", :"SUBSTITUTE", :"SUNNYDAY", :"SWIFT", :"TAKEDOWN", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TRAILBLAZE", :"TRICK", :"TRICKROOM", :"UPROAR", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"FARIGIRAF" do |m|
  m.back_sprite -4, 43
  m.front_sprite -13, 9
  m.shadow_sprite 0, 0, 2
end