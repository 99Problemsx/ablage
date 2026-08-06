#=============================================================================
# Bunnelby - NORMAL Type
#=============================================================================

GameData::Species.define :"BUNNELBY" do |pkmn|
  pkmn.name "Bunnelby"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 38, attack: 36, defense: 38,
                  sp_atk: 57, sp_def: 32, speed: 36
  pkmn.abilities :"PICKUP", :"CHEEKPOUCH"
  pkmn.hidden_abilities :"HUGEPOWER"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 47
  pkmn.catch_rate 255
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 0.4
  pkmn.weight 5.0
  pkmn.category "Digging"
  pkmn.pokedex_entry "It has ears like shovels. Digging holes strengthens its ears so much that they can sever thick roots effortlessly."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"MUDSLAP"
    m.at 1, :"LEER"
    m.at 3, :"TACKLE"
    m.at 6, :"LASERFOCUS"
    m.at 9, :"QUICKATTACK"
    m.at 12, :"MUDSHOT"
    m.at 15, :"FLAIL"
    m.at 18, :"DOUBLEKICK"
    m.at 21, :"BULLDOZE"
    m.at 24, :"DIG"
    m.at 27, :"BOUNCE"
    m.at 30, :"TAKEDOWN"
    m.at 33, :"SWORDSDANCE"
    m.at 36, :"EARTHQUAKE"
    m.at 39, :"SUPERFANG"
  end
  pkmn.tutor_moves :"AGILITY", :"ATTRACT", :"BOUNCE", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"CONFIDE", :"CUT", :"DIG", :"DOUBLETEAM", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLING", :"FRUSTRATION", :"GRASSKNOT", :"HIDDENPOWER", :"IRONHEAD", :"IRONTAIL", :"LASTRESORT", :"MIMIC", :"MUDSHOT", :"NATURALGIFT", :"NATUREPOWER", :"PAYBACK", :"POWERUPPUNCH", :"PROTECT", :"RECYCLE", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SLEEPTALK", :"SLUDGEBOMB", :"SMACKDOWN", :"SNORE", :"SPIKES", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUPERFANG", :"SURF", :"SWAGGER", :"SWORDSDANCE", :"THIEF", :"TORMENT", :"TOXIC", :"UTURN", :"WILDCHARGE", :"WORKUP", :"TERABLAST"
  pkmn.egg_moves :"DEFENSECURL", :"ROLLOUT"
end

GameData::SpeciesMetrics.define :"BUNNELBY" do |m|
  m.back_sprite 2, 11
  m.front_sprite 0, 5
end