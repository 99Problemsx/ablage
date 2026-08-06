#=============================================================================
# Yveltal - DARK Type
#=============================================================================

GameData::Species.define :"YVELTAL" do |pkmn|
  pkmn.name "Yveltal"
  pkmn.types :"DARK", :"FLYING"
  pkmn.base_stats hp: 126, attack: 131, defense: 95,
                  sp_atk: 99, sp_def: 131, speed: 98
  pkmn.abilities :"DARKAURA"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Red"
  pkmn.shape :"Winged"
  pkmn.base_exp 340
  pkmn.catch_rate 45
  pkmn.happiness 0
  pkmn.hatch_steps 30720
  pkmn.height 5.8
  pkmn.weight 203.0
  pkmn.category "Destruction"
  pkmn.pokedex_entry "When its life comes to an end, it absorbs the life energy of every living thing and turns into a cocoon once more."
  pkmn.evs hp: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"GUST"
    m.at 1, :"DOUBLETEAM"
    m.at 5, :"TAUNT"
    m.at 10, :"SNARL"
    m.at 15, :"DISABLE"
    m.at 20, :"SUCKERPUNCH"
    m.at 25, :"TAILWIND"
    m.at 30, :"ROOST"
    m.at 35, :"AIRSLASH"
    m.at 40, :"DARKPULSE"
    m.at 45, :"PSYCHIC"
    m.at 50, :"OBLIVIONWING"
    m.at 55, :"PHANTOMFORCE"
    m.at 60, :"FOULPLAY"
    m.at 65, :"DRAGONRUSH"
    m.at 70, :"HURRICANE"
    m.at 75, :"FOCUSBLAST"
    m.at 80, :"SKYATTACK"
    m.at 85, :"HYPERBEAM"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AIRSLASH", :"BLOCK", :"BODYSLAM", :"CONFIDE", :"CUT", :"DARKPULSE", :"DEFOG", :"DOUBLETEAM", :"DRAGONCLAW", :"DREAMEATER", :"DUALWINGBEAT", :"EMBARGO", :"ENDURE", :"FACADE", :"FLY", :"FOCUSBLAST", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"HEATWAVE", :"HIDDENPOWER", :"HONECLAWS", :"HURRICANE", :"HYPERBEAM", :"HYPERVOICE", :"KNOCKOFF", :"LASERFOCUS", :"LASHOUT", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"PHANTOMFORCE", :"PROTECT", :"PSYCHIC", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSLIDE", :"ROOST", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHADOWCLAW", :"SKYATTACK", :"SKYDROP", :"SLEEPTALK", :"SNARL", :"SNORE", :"STEELWING", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"TAUNT", :"THIEF", :"TORMENT", :"TOXIC", :"UTURN", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"YVELTAL" do |m|
  m.back_sprite 19, 48
  m.front_sprite 3, 10
  m.shadow_sprite 0, 0, -1
end