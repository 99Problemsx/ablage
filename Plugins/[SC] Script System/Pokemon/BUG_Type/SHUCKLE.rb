#=============================================================================
# Shuckle - BUG Type
#=============================================================================

GameData::Species.define :"SHUCKLE" do |pkmn|
  pkmn.name "Shuckle"
  pkmn.types :"BUG", :"ROCK"
  pkmn.base_stats hp: 20, attack: 10, defense: 230,
                  sp_atk: 5, sp_def: 10, speed: 230
  pkmn.abilities :"STURDY", :"GLUTTONY"
  pkmn.hidden_abilities :"CONTRARY"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Yellow"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 177
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.6
  pkmn.weight 20.5
  pkmn.category "Mold"
  pkmn.pokedex_entry "A Shuckle hides under rocks, keeping its body concealed inside its shell while eating stored berries. The berries mix with its body fluids to become a juice."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"WITHDRAW"
    m.at 1, :"CONSTRICT"
    m.at 1, :"BIDE"
    m.at 1, :"ROLLOUT"
    m.at 5, :"ENCORE"
    m.at 9, :"WRAP"
    m.at 12, :"STRUGGLEBUG"
    m.at 16, :"SAFEGUARD"
    m.at 20, :"REST"
    m.at 23, :"ROCKTHROW"
    m.at 27, :"GASTROACID"
    m.at 31, :"POWERTRICK"
    m.at 34, :"SHELLSMASH"
    m.at 38, :"ROCKSLIDE"
    m.at 42, :"BUGBITE"
    m.at 45, :"POWERSPLIT"
    m.at 45, :"GUARDSPLIT"
    m.at 49, :"STONEEDGE"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ANCIENTPOWER", :"ATTRACT", :"BIND", :"BODYSLAM", :"BUGBITE", :"BULLDOZE", :"CAPTIVATE", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FLASH", :"FRUSTRATION", :"GASTROACID", :"GYROBALL", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"KNOCKOFF", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SMACKDOWN", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"STRINGSHOT", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TOXIC", :"VENOSHOCK"
  pkmn.egg_moves :"ACID", :"ACUPRESSURE", :"FINALGAMBIT", :"HELPINGHAND", :"KNOCKOFF", :"MUDSLAP", :"ROCKBLAST", :"SANDTOMB", :"SWEETSCENT"
end

GameData::SpeciesMetrics.define :"SHUCKLE" do |m|
  m.back_sprite 1, 0
  m.front_sprite 2, 22
  m.shadow_sprite 0, 0, 2
end