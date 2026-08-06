#=============================================================================
# Whirlipede - BUG Type
#=============================================================================

GameData::Species.define :"WHIRLIPEDE" do |pkmn|
  pkmn.name "Whirlipede"
  pkmn.types :"BUG", :"POISON"
  pkmn.base_stats hp: 40, attack: 55, defense: 99,
                  sp_atk: 47, sp_def: 40, speed: 79
  pkmn.abilities :"POISONPOINT", :"SWARM"
  pkmn.hidden_abilities :"QUICKFEET"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Gray"
  pkmn.shape :"Head"
  pkmn.base_exp 126
  pkmn.catch_rate 120
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 1.2
  pkmn.weight 58.5
  pkmn.category "Curlipede"
  pkmn.pokedex_entry "It is usually motionless, but when attacked, it rotates at high speed and then crashes into its opponent."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"DEFENSECURL"
    m.at 1, :"ROLLOUT"
    m.at 1, :"POISONSTING"
    m.at 1, :"SCREECH"
    m.at 5, :"POISONSTING"
    m.at 8, :"SCREECH"
    m.at 12, :"PURSUIT"
    m.at 15, :"PROTECT"
    m.at 19, :"POISONTAIL"
    m.at 22, :"IRONDEFENSE"
    m.at 23, :"BUGBITE"
    m.at 28, :"VENOSHOCK"
    m.at 32, :"AGILITY"
    m.at 37, :"STEAMROLLER"
    m.at 41, :"TOXIC"
    m.at 46, :"ROCKCLIMB"
    m.at 50, :"DOUBLEEDGE"
  end
  pkmn.tutor_moves :"ATTRACT", :"BUGBITE", :"CAPTIVATE", :"DOUBLETEAM", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GYROBALL", :"HIDDENPOWER", :"IRONDEFENSE", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"REST", :"RETURN", :"ROCKSMASH", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SOLARBEAM", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TOXIC", :"VENOSHOCK"
end

GameData::SpeciesMetrics.define :"WHIRLIPEDE" do |m|
  m.back_sprite 4, 0
  m.front_sprite 1, 27
  m.shadow_sprite 0, 0, 2
end