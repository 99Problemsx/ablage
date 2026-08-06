#=============================================================================
# Cyclizar - DRAGON Type
#=============================================================================

GameData::Species.define :"CYCLIZAR" do |pkmn|
  pkmn.name "Cyclizar"
  pkmn.types :"DRAGON", :"NORMAL"
  pkmn.base_stats hp: 70, attack: 95, defense: 65,
                  sp_atk: 121, sp_def: 85, speed: 65
  pkmn.abilities :"SHEDSKIN"
  pkmn.hidden_abilities :"REGENERATOR"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 175
  pkmn.catch_rate 190
  pkmn.happiness 50
  pkmn.hatch_steps 7680
  pkmn.height 1.6
  pkmn.weight 63.0
  pkmn.category "Mount"
  pkmn.pokedex_entry "Apparently Cyclizar has been allowing people to ride on its back since ancient times. Depictions of this have been found in 10,000-year-old murals."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"GROWL"
    m.at 1, :"TACKLE"
    m.at 7, :"RAPIDSPIN"
    m.at 11, :"TAUNT"
    m.at 14, :"BREAKINGSWIPE"
    m.at 18, :"QUICKATTACK"
    m.at 23, :"BITE"
    m.at 27, :"UTURN"
    m.at 31, :"SHEDTAIL"
    m.at 36, :"DRAGONCLAW"
    m.at 40, :"SHIFTGEAR"
    m.at 45, :"DRAGONPULSE"
    m.at 51, :"DOUBLEEDGE"
    m.at 57, :"DRAGONRUSH"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AGILITY", :"BODYSLAM", :"BREAKINGSWIPE", :"CRUNCH", :"DOUBLEEDGE", :"DRACOMETEOR", :"DRAGONCHEER", :"DRAGONCLAW", :"DRAGONPULSE", :"DRAGONTAIL", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREFANG", :"GIGAIMPACT", :"HYPERBEAM", :"HYPERVOICE", :"ICESPINNER", :"IRONHEAD", :"KNOCKOFF", :"MUDSHOT", :"MUDSLAP", :"OUTRAGE", :"OVERHEAT", :"PROTECT", :"RAINDANCE", :"REST", :"SCALESHOT", :"SLEEPTALK", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERCELLSLAM", :"TAKEDOWN", :"TAUNT", :"TEMPERFLARE", :"THIEF", :"THUNDERBOLT", :"THUNDERFANG", :"TRAILBLAZE", :"UPROAR", :"UTURN", :"WILDCHARGE"
  pkmn.egg_moves :"AQUATAIL", :"IRONTAIL", :"KNOCKOFF", :"POWERWHIP"
end

GameData::SpeciesMetrics.define :"CYCLIZAR" do |m|
  m.back_sprite 0, 59
  m.front_sprite 2, 18
  m.shadow_sprite 0, 0, 2
end