#=============================================================================
# Relicanth - WATER Type
#=============================================================================

GameData::Species.define :"RELICANTH" do |pkmn|
  pkmn.name "Relicanth"
  pkmn.types :"WATER", :"ROCK"
  pkmn.base_stats hp: 100, attack: 90, defense: 130,
                  sp_atk: 55, sp_def: 45, speed: 65
  pkmn.abilities :"SWIFTSWIM", :"ROCKHEAD"
  pkmn.hidden_abilities :"STURDY"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Gray"
  pkmn.shape :"Finned"
  pkmn.base_exp 170
  pkmn.catch_rate 25
  pkmn.happiness 70
  pkmn.hatch_steps 10280
  pkmn.height 1.0
  pkmn.weight 23.4
  pkmn.category "Longevity"
  pkmn.pokedex_entry "A Pokémon that was once believed to be extinct. The species has not changed its form for 100 million years. It walks on the seafloor using its pectoral fins."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Water1", :"Water2"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"HARDEN"
    m.at 8, :"WATERGUN"
    m.at 15, :"ROCKTOMB"
    m.at 22, :"YAWN"
    m.at 29, :"TAKEDOWN"
    m.at 36, :"MUDSPORT"
    m.at 43, :"ANCIENTPOWER"
    m.at 50, :"DOUBLEEDGE"
    m.at 57, :"DIVE"
    m.at 64, :"REST"
    m.at 71, :"HYDROPUMP"
    m.at 78, :"HEADSMASH"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"AQUATAIL", :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BOUNCE", :"BRINE", :"BULLDOZE", :"CALMMIND", :"CAPTIVATE", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"TOXIC", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL", :"ZENHEADBUTT"
  pkmn.egg_moves :"AMNESIA", :"AQUATAIL", :"BRINE", :"MAGNITUDE", :"MUDDYWATER", :"MUDSHOT", :"MUDSLAP", :"SKULLBASH", :"SLEEPTALK", :"SNORE", :"WATERSPORT", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"RELICANTH" do |m|
  m.back_sprite -7, 0
  m.front_sprite 0, 0
  m.shadow_sprite 0, 0, 3
end