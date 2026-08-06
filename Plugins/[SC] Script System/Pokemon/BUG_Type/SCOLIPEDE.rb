#=============================================================================
# Scolipede - BUG Type
#=============================================================================

GameData::Species.define :"SCOLIPEDE" do |pkmn|
  pkmn.name "Scolipede"
  pkmn.types :"BUG", :"POISON"
  pkmn.base_stats hp: 60, attack: 90, defense: 89,
                  sp_atk: 112, sp_def: 55, speed: 69
  pkmn.abilities :"POISONPOINT", :"SWARM"
  pkmn.hidden_abilities :"QUICKFEET"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Red"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 214
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 2.5
  pkmn.weight 200.5
  pkmn.category "Megapede"
  pkmn.pokedex_entry "Highly aggressive, it uses the claws near its neck to dig into its opponents and poison them."
  pkmn.evs speed: 3
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"MEGAHORN"
    m.at 1, :"DEFENSECURL"
    m.at 1, :"ROLLOUT"
    m.at 1, :"POISONSTING"
    m.at 1, :"SCREECH"
    m.at 5, :"POISONSTING"
    m.at 8, :"SCREECH"
    m.at 12, :"PURSUIT"
    m.at 15, :"PROTECT"
    m.at 19, :"POISONTAIL"
    m.at 23, :"BUGBITE"
    m.at 28, :"VENOSHOCK"
    m.at 30, :"BATONPASS"
    m.at 33, :"AGILITY"
    m.at 39, :"STEAMROLLER"
    m.at 44, :"TOXIC"
    m.at 50, :"ROCKCLIMB"
    m.at 55, :"DOUBLEEDGE"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"BUGBITE", :"BULLDOZE", :"CAPTIVATE", :"CUT", :"DIG", :"DOUBLETEAM", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GIGAIMPACT", :"GYROBALL", :"HIDDENPOWER", :"HYPERBEAM", :"IRONDEFENSE", :"IRONTAIL", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SLUDGEBOMB", :"SNATCH", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"SWORDSDANCE", :"TOXIC", :"VENOSHOCK", :"XSCISSOR"
end

GameData::SpeciesMetrics.define :"SCOLIPEDE" do |m|
  m.back_sprite 2, 0
  m.front_sprite -3, 9
  m.shadow_sprite 0, 0, 3
end

# Form 1 - Mega Scolipede
GameData::Species.define :"SCOLIPEDE_1" do |pkmn|
  pkmn.species :"SCOLIPEDE"
  pkmn.form 1
  pkmn.name "Scolipede"
  pkmn.form_name "Mega Scolipede"
  pkmn.types :"BUG", :"POISON"
  pkmn.base_stats hp: 60, attack: 140, defense: 149,
                  sp_atk: 75, sp_def: 99, speed: 62
  pkmn.abilities :"POISONPOINT", :"SWARM"
  pkmn.hidden_abilities :"QUICKFEET"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Red"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 214
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 3.2
  pkmn.weight 230.5
  pkmn.category "Megapede"
  pkmn.pokedex_entry "Its deadly venom gives off a faint glow. The venom affects Scolipede's mind, honing its viciousness."
  pkmn.evs speed: 3
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"MEGAHORN"
    m.at 1, :"DEFENSECURL"
    m.at 1, :"ROLLOUT"
    m.at 1, :"POISONSTING"
    m.at 1, :"SCREECH"
    m.at 5, :"POISONSTING"
    m.at 8, :"SCREECH"
    m.at 12, :"PURSUIT"
    m.at 15, :"PROTECT"
    m.at 19, :"POISONTAIL"
    m.at 23, :"BUGBITE"
    m.at 28, :"VENOSHOCK"
    m.at 30, :"BATONPASS"
    m.at 33, :"AGILITY"
    m.at 39, :"STEAMROLLER"
    m.at 44, :"TOXIC"
    m.at 50, :"ROCKCLIMB"
    m.at 55, :"DOUBLEEDGE"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"BUGBITE", :"BULLDOZE", :"CAPTIVATE", :"CUT", :"DIG", :"DOUBLETEAM", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GIGAIMPACT", :"GYROBALL", :"HIDDENPOWER", :"HYPERBEAM", :"IRONDEFENSE", :"IRONTAIL", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SLUDGEBOMB", :"SNATCH", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"SWORDSDANCE", :"TOXIC", :"VENOSHOCK", :"XSCISSOR"
end

GameData::SpeciesMetrics.define :"SCOLIPEDE_1" do |m|
  m.back_sprite 2, 0
  m.front_sprite -3, 9
  m.shadow_sprite 0, 0, 3
end