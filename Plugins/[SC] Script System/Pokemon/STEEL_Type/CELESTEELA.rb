#=============================================================================
# Celesteela - STEEL Type
#=============================================================================

GameData::Species.define :"CELESTEELA" do |pkmn|
  pkmn.name "Celesteela"
  pkmn.types :"STEEL", :"FLYING"
  pkmn.base_stats hp: 97, attack: 101, defense: 103,
                  sp_atk: 61, sp_def: 107, speed: 101
  pkmn.abilities :"BEASTBOOST"
  pkmn.flags :"UltraBeast"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Green"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 285
  pkmn.catch_rate 45
  pkmn.happiness 0
  pkmn.hatch_steps 30720
  pkmn.height 9.2
  pkmn.weight 999.9
  pkmn.category "Launch"
  pkmn.pokedex_entry "One kind of Ultra Beast. Witnesses have seen it burn down a forest by expelling gas from its two arms."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"ABSORB"
    m.at 1, :"TACKLE"
    m.at 5, :"HARDEN"
    m.at 10, :"WIDEGUARD"
    m.at 15, :"MEGADRAIN"
    m.at 20, :"SMACKDOWN"
    m.at 25, :"INGRAIN"
    m.at 30, :"AUTOTOMIZE"
    m.at 35, :"GIGADRAIN"
    m.at 40, :"FLASHCANNON"
    m.at 45, :"METALSOUND"
    m.at 50, :"IRONDEFENSE"
    m.at 55, :"LEECHSEED"
    m.at 60, :"HEAVYSLAM"
    m.at 65, :"DOUBLEEDGE"
    m.at 70, :"SKULLBASH"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AIRSLASH", :"BLOCK", :"BODYSLAM", :"BRUTALSWING", :"BULLDOZE", :"CONFIDE", :"DOUBLETEAM", :"EARTHQUAKE", :"ENDURE", :"ENERGYBALL", :"EXPLOSION", :"FACADE", :"FIREBLAST", :"FLAMECHARGE", :"FLAMETHROWER", :"FLASHCANNON", :"FLY", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRAVITY", :"GYROBALL", :"HEAVYSLAM", :"HIDDENPOWER", :"HYPERBEAM", :"IRONDEFENSE", :"IRONHEAD", :"MAGNETRISE", :"MEGAHORN", :"METEORBEAM", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SELFDESTRUCT", :"SHOCKWAVE", :"SLEEPTALK", :"SMACKDOWN", :"SMARTSTRIKE", :"SNORE", :"SOLARBEAM", :"STEELBEAM", :"STEELROLLER", :"STOMPINGTANTRUM", :"STONEEDGE", :"SUBSTITUTE", :"SUPERPOWER", :"SWAGGER", :"TOXIC", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"CELESTEELA" do |m|
  m.back_sprite 0, 44
  m.front_sprite 3, 10
  m.shadow_sprite 0, 0, -1
end