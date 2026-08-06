#=============================================================================
# Feraligatr - WATER Type
#=============================================================================

GameData::Species.define :"FERALIGATR" do |pkmn|
  pkmn.name "Feraligatr"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 85, attack: 105, defense: 100,
                  sp_atk: 78, sp_def: 79, speed: 83
  pkmn.abilities :"TORRENT"
  pkmn.hidden_abilities :"SHEERFORCE"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 239
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 2.3
  pkmn.weight 88.8
  pkmn.category "Big Jaw"
  pkmn.pokedex_entry "It opens its huge mouth to intimidate enemies. In battle, it runs using its thick and powerful hind legs to charge the foe with incredible speed."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Monster", :"Water1"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"LEER"
    m.at 1, :"WATERGUN"
    m.at 1, :"RAGE"
    m.at 6, :"WATERGUN"
    m.at 8, :"RAGE"
    m.at 13, :"BITE"
    m.at 15, :"SCARYFACE"
    m.at 21, :"ICEFANG"
    m.at 24, :"FLAIL"
    m.at 30, :"AGILITY"
    m.at 32, :"CRUNCH"
    m.at 37, :"CHIPAWAY"
    m.at 45, :"SLASH"
    m.at 50, :"SCREECH"
    m.at 58, :"THRASH"
    m.at 63, :"AQUATAIL"
    m.at 71, :"SUPERPOWER"
    m.at 76, :"HYDROPUMP"
  end
  pkmn.tutor_moves :"AERIALACE", :"ANCIENTPOWER", :"AQUATAIL", :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BLOCK", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"CUT", :"DIG", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAGONCLAW", :"DRAGONPULSE", :"DRAGONTAIL", :"DYNAMICPUNCH", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"HYDROCANNON", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"IRONTAIL", :"LOWKICK", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OUTRAGE", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SCALD", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"SPITE", :"STRENGTH", :"SUBSTITUTE", :"SUPERPOWER", :"SURF", :"SWAGGER", :"SWORDSDANCE", :"TOXIC", :"UPROAR", :"WATERFALL", :"WATERPLEDGE", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"FERALIGATR" do |m|
  m.back_sprite 2, 0
  m.front_sprite -6, 9
  m.shadow_sprite 0, 0, 3
end

# Form 1 - Mega Feraligatr
GameData::Species.define :"FERALIGATR_1" do |pkmn|
  pkmn.species :"FERALIGATR"
  pkmn.form 1
  pkmn.name "Feraligatr"
  pkmn.form_name "Mega Feraligatr"
  pkmn.types :"WATER", :"DRAGON"
  pkmn.base_stats hp: 85, attack: 160, defense: 125,
                  sp_atk: 89, sp_def: 93, speed: 78
  pkmn.abilities :"TORRENT"
  pkmn.hidden_abilities :"SHEERFORCE"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 239
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 2.3
  pkmn.weight 108.8
  pkmn.category "Big Jaw"
  pkmn.pokedex_entry "With its arms and hoodlike fin, this Pokémon forms a gigantic set of jaws with a bite 10 times as powerful as Mega Feraligatr's actual jaws."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Monster", :"Water1"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"LEER"
    m.at 1, :"WATERGUN"
    m.at 1, :"RAGE"
    m.at 6, :"WATERGUN"
    m.at 8, :"RAGE"
    m.at 13, :"BITE"
    m.at 15, :"SCARYFACE"
    m.at 21, :"ICEFANG"
    m.at 24, :"FLAIL"
    m.at 30, :"AGILITY"
    m.at 32, :"CRUNCH"
    m.at 37, :"CHIPAWAY"
    m.at 45, :"SLASH"
    m.at 50, :"SCREECH"
    m.at 58, :"THRASH"
    m.at 63, :"AQUATAIL"
    m.at 71, :"SUPERPOWER"
    m.at 76, :"HYDROPUMP"
  end
  pkmn.tutor_moves :"AERIALACE", :"ANCIENTPOWER", :"AQUATAIL", :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BLOCK", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CAPTIVATE", :"COUNTER", :"CUT", :"DIG", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAGONCLAW", :"DRAGONPULSE", :"DRAGONTAIL", :"DYNAMICPUNCH", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"HYDROCANNON", :"HYPERBEAM", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"IRONTAIL", :"LOWKICK", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OUTRAGE", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SCALD", :"SECRETPOWER", :"SEISMICTOSS", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"SPITE", :"STRENGTH", :"SUBSTITUTE", :"SUPERPOWER", :"SURF", :"SWAGGER", :"SWORDSDANCE", :"TOXIC", :"UPROAR", :"WATERFALL", :"WATERPLEDGE", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"FERALIGATR_1" do |m|
  m.back_sprite 2, 0
  m.front_sprite -6, 9
  m.shadow_sprite 0, 0, 3
end