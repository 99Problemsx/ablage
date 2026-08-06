#=============================================================================
# Sandygast - GHOST Type
#=============================================================================

GameData::Species.define :"SANDYGAST" do |pkmn|
  pkmn.name "Sandygast"
  pkmn.types :"GHOST", :"GROUND"
  pkmn.base_stats hp: 55, attack: 55, defense: 80,
                  sp_atk: 15, sp_def: 70, speed: 45
  pkmn.abilities :"WATERCOMPACTION"
  pkmn.hidden_abilities :"SANDVEIL"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 64
  pkmn.catch_rate 140
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 0.5
  pkmn.weight 70.0
  pkmn.category "Sand Heap"
  pkmn.pokedex_entry "It likes the shovel on its head, so Sandygast will get serious and fight any children who come to take it back."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"ABSORB"
    m.at 1, :"HARDEN"
    m.at 5, :"ASTONISH"
    m.at 10, :"SANDTOMB"
    m.at 15, :"MEGADRAIN"
    m.at 20, :"SANDATTACK"
    m.at 25, :"BULLDOZE"
    m.at 30, :"HYPNOSIS"
    m.at 35, :"GIGADRAIN"
    m.at 40, :"IRONDEFENSE"
    m.at 45, :"SHADOWBALL"
    m.at 50, :"EARTHPOWER"
    m.at 55, :"SHOREUP"
    m.at 60, :"SANDSTORM"
  end
  pkmn.tutor_moves :"AFTERYOU", :"AMNESIA", :"ATTRACT", :"BLOCK", :"BRINE", :"BULLDOZE", :"CAPTIVATE", :"CONFIDE", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FRUSTRATION", :"GIGADRAIN", :"GRAVITY", :"HIDDENPOWER", :"INFESTATION", :"IRONDEFENSE", :"MIMIC", :"MUDSHOT", :"NATURALGIFT", :"PAINSPLIT", :"POLTERGEIST", :"PROTECT", :"PSYCHIC", :"RECYCLE", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SANDSTORM", :"SANDTOMB", :"SCORCHINGSANDS", :"SECRETPOWER", :"SHADOWBALL", :"SKILLSWAP", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SPITE", :"STEALTHROCK", :"STONEEDGE", :"SUBSTITUTE", :"SWAGGER", :"TOXIC", :"TRICK", :"TERABLAST"
  pkmn.egg_moves :"ANCIENTPOWER", :"CURSE", :"DESTINYBOND", :"SPITUP", :"STOCKPILE", :"SWALLOW"
end

GameData::SpeciesMetrics.define :"SANDYGAST" do |m|
  m.back_sprite 0, 32
  m.front_sprite 0, 17
end