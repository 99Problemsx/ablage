#=============================================================================
# Oshawott - WATER Type
#=============================================================================

GameData::Species.define :"OSHAWOTT" do |pkmn|
  pkmn.name "Oshawott"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 55, attack: 55, defense: 45,
                  sp_atk: 45, sp_def: 63, speed: 45
  pkmn.abilities :"TORRENT"
  pkmn.hidden_abilities :"SHELLARMOR"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 62
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.5
  pkmn.weight 5.9
  pkmn.category "Sea Otter"
  pkmn.pokedex_entry "The scalchop on its stomach is made from the same elements as claws. It detaches the scalchop for use as a blade."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 5, :"TAILWHIP"
    m.at 7, :"WATERGUN"
    m.at 11, :"WATERSPORT"
    m.at 13, :"FOCUSENERGY"
    m.at 17, :"RAZORSHELL"
    m.at 19, :"FURYCUTTER"
    m.at 23, :"WATERPULSE"
    m.at 25, :"REVENGE"
    m.at 29, :"AQUAJET"
    m.at 31, :"ENCORE"
    m.at 35, :"AQUATAIL"
    m.at 37, :"RETALIATE"
    m.at 41, :"SWORDSDANCE"
    m.at 43, :"HYDROPUMP"
  end
  pkmn.tutor_moves :"AERIALACE", :"AQUATAIL", :"ATTRACT", :"BLIZZARD", :"CAPTIVATE", :"COVET", :"CUT", :"DIG", :"DIVE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLING", :"FRUSTRATION", :"GRASSKNOT", :"HAIL", :"HELPINGHAND", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"IRONTAIL", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKSMASH", :"ROUND", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"SWORDSDANCE", :"TAUNT", :"TOXIC", :"WATERFALL", :"WATERPLEDGE", :"XSCISSOR"
  pkmn.egg_moves :"AIRSLASH", :"ASSURANCE", :"BRINE", :"COPYCAT", :"DETECT", :"NIGHTSLASH", :"SCREECH", :"TRUMPCARD"
end

GameData::SpeciesMetrics.define :"OSHAWOTT" do |m|
  m.back_sprite 0, 0
  m.front_sprite 2, 31
  m.shadow_sprite 0, 0, 1
end