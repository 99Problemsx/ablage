#=============================================================================
# Dracovish - WATER Type
#=============================================================================

GameData::Species.define :"DRACOVISH" do |pkmn|
  pkmn.name "Dracovish"
  pkmn.types :"WATER", :"DRAGON"
  pkmn.base_stats hp: 90, attack: 90, defense: 100,
                  sp_atk: 75, sp_def: 70, speed: 80
  pkmn.abilities :"WATERABSORB", :"STRONGJAW"
  pkmn.hidden_abilities :"SANDRUSH"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Green"
  pkmn.shape :"HeadLegs"
  pkmn.base_exp 177
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 8960
  pkmn.height 2.3
  pkmn.weight 215.0
  pkmn.category "Fossil"
  pkmn.pokedex_entry "Powerful legs and jaws made it the apex predator of its time. Its own overhunting of its prey was what drove it to extinction."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"WATERGUN"
    m.at 7, :"PROTECT"
    m.at 14, :"BRUTALSWING"
    m.at 21, :"ANCIENTPOWER"
    m.at 28, :"BITE"
    m.at 35, :"DRAGONBREATH"
    m.at 42, :"STOMP"
    m.at 49, :"SUPERFANG"
    m.at 56, :"CRUNCH"
    m.at 63, :"FISHIOUSREND"
    m.at 70, :"DRAGONPULSE"
    m.at 77, :"DRAGONRUSH"
  end
  pkmn.tutor_moves :"BODYSLAM", :"BRINE", :"BRUTALSWING", :"BULLDOZE", :"CONFIDE", :"CRUNCH", :"DIVE", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONPULSE", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GIGAIMPACT", :"HIDDENPOWER", :"HYDROPUMP", :"HYPERBEAM", :"ICEFANG", :"IRONHEAD", :"LEECHLIFE", :"LIQUIDATION", :"LOWKICK", :"MEGAKICK", :"METEORBEAM", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PROTECT", :"PSYCHICFANGS", :"RAINDANCE", :"REST", :"RETURN", :"ROCKBLAST", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STOMPINGTANTRUM", :"STONEEDGE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"TOXIC", :"WATERFALL", :"WHIRLPOOL", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"DRACOVISH" do |m|
  m.back_sprite -1, 36
  m.front_sprite -2, 6
end