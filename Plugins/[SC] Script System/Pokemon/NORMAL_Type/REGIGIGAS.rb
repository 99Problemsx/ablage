#=============================================================================
# Regigigas - NORMAL Type
#=============================================================================

GameData::Species.define :"REGIGIGAS" do |pkmn|
  pkmn.name "Regigigas"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 110, attack: 160, defense: 110,
                  sp_atk: 100, sp_def: 80, speed: 110
  pkmn.abilities :"SLOWSTART"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"White"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 302
  pkmn.catch_rate 3
  pkmn.happiness 0
  pkmn.hatch_steps 30840
  pkmn.height 3.7
  pkmn.weight 420.0
  pkmn.category "Colossal"
  pkmn.pokedex_entry "There is an enduring legend that states this Pokémon towed continents with ropes."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"FIREPUNCH"
    m.at 1, :"ICEPUNCH"
    m.at 1, :"THUNDERPUNCH"
    m.at 1, :"DIZZYPUNCH"
    m.at 1, :"KNOCKOFF"
    m.at 1, :"CONFUSERAY"
    m.at 1, :"FORESIGHT"
    m.at 25, :"REVENGE"
    m.at 40, :"WIDEGUARD"
    m.at 50, :"ZENHEADBUTT"
    m.at 65, :"PAYBACK"
    m.at 75, :"CRUSHGRIP"
    m.at 90, :"HEAVYSLAM"
    m.at 100, :"GIGAIMPACT"
  end
  pkmn.tutor_moves :"AERIALACE", :"ANCIENTPOWER", :"AVALANCHE", :"BLOCK", :"BRICKBREAK", :"BULLDOZE", :"DOUBLETEAM", :"DRAINPUNCH", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"GRAVITY", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEPUNCH", :"ICYWIND", :"IRONHEAD", :"KNOCKOFF", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"PSYCHUP", :"RAINDANCE", :"RETALIATE", :"RETURN", :"ROCKCLIMB", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHOCKWAVE", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"REGIGIGAS" do |m|
  m.back_sprite 0, 0
  m.front_sprite -4, 7
  m.shadow_sprite 0, 0, 3
end