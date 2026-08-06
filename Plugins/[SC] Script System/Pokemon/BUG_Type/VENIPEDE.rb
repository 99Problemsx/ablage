#=============================================================================
# Venipede - BUG Type
#=============================================================================

GameData::Species.define :"VENIPEDE" do |pkmn|
  pkmn.name "Venipede"
  pkmn.types :"BUG", :"POISON"
  pkmn.base_stats hp: 30, attack: 45, defense: 59,
                  sp_atk: 57, sp_def: 30, speed: 39
  pkmn.abilities :"POISONPOINT", :"SWARM"
  pkmn.hidden_abilities :"QUICKFEET"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Red"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 52
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.4
  pkmn.weight 5.3
  pkmn.category "Centipede"
  pkmn.pokedex_entry "It discovers what is going on around it by using the feelers on its head and tail. It is brutally aggresive."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"DEFENSECURL"
    m.at 1, :"ROLLOUT"
    m.at 5, :"POISONSTING"
    m.at 8, :"SCREECH"
    m.at 12, :"PURSUIT"
    m.at 15, :"PROTECT"
    m.at 19, :"POISONTAIL"
    m.at 22, :"BUGBITE"
    m.at 26, :"VENOSHOCK"
    m.at 29, :"AGILITY"
    m.at 33, :"STEAMROLLER"
    m.at 36, :"TOXIC"
    m.at 40, :"ROCKCLIMB"
    m.at 43, :"DOUBLEEDGE"
  end
  pkmn.tutor_moves :"ATTRACT", :"BUGBITE", :"CAPTIVATE", :"DOUBLETEAM", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GYROBALL", :"HIDDENPOWER", :"IRONDEFENSE", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"REST", :"RETURN", :"ROCKSMASH", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SOLARBEAM", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TOXIC", :"VENOSHOCK"
  pkmn.egg_moves :"PINMISSILE", :"ROCKCLIMB", :"SPIKES", :"TAKEDOWN", :"TOXICSPIKES", :"TWINEEDLE"
end

GameData::SpeciesMetrics.define :"VENIPEDE" do |m|
  m.back_sprite -3, 0
  m.front_sprite 2, 34
  m.shadow_sprite 0, 0, 2
end