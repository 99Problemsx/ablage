#=============================================================================
# Dewott - WATER Type
#=============================================================================

GameData::Species.define :"DEWOTT" do |pkmn|
  pkmn.name "Dewott"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 75, attack: 75, defense: 60,
                  sp_atk: 60, sp_def: 83, speed: 60
  pkmn.abilities :"TORRENT"
  pkmn.hidden_abilities :"SHELLARMOR"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 145
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.8
  pkmn.weight 24.5
  pkmn.category "Discipline"
  pkmn.pokedex_entry "Scalchop techniques differ from one Dewott to another. It never neglects maintaining its scalchops."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"TAILWHIP"
    m.at 1, :"WATERGUN"
    m.at 1, :"WATERSPORT"
    m.at 5, :"TAILWHIP"
    m.at 7, :"WATERGUN"
    m.at 11, :"WATERSPORT"
    m.at 13, :"FOCUSENERGY"
    m.at 17, :"RAZORSHELL"
    m.at 20, :"FURYCUTTER"
    m.at 25, :"WATERPULSE"
    m.at 28, :"REVENGE"
    m.at 33, :"AQUAJET"
    m.at 36, :"ENCORE"
    m.at 41, :"AQUATAIL"
    m.at 44, :"RETALIATE"
    m.at 49, :"SWORDSDANCE"
    m.at 52, :"HYDROPUMP"
  end
  pkmn.tutor_moves :"AERIALACE", :"AQUATAIL", :"ATTRACT", :"BLIZZARD", :"CAPTIVATE", :"COVET", :"CUT", :"DIG", :"DIVE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLING", :"FRUSTRATION", :"GRASSKNOT", :"HAIL", :"HELPINGHAND", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"IRONTAIL", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKSMASH", :"ROUND", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"SWORDSDANCE", :"TAUNT", :"TOXIC", :"WATERFALL", :"WATERPLEDGE", :"XSCISSOR"
end

GameData::SpeciesMetrics.define :"DEWOTT" do |m|
  m.back_sprite 2, 0
  m.front_sprite 3, 21
  m.shadow_sprite 0, 0, 2
end