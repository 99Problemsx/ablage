#=============================================================================
# Sinistcha - GRASS Type
#=============================================================================

GameData::Species.define :"SINISTCHA" do |pkmn|
  pkmn.name "Sinistcha"
  pkmn.form_name "Unremarkable Form"
  pkmn.types :"GRASS", :"GHOST"
  pkmn.base_stats hp: 71, attack: 60, defense: 106,
                  sp_atk: 70, sp_def: 121, speed: 80
  pkmn.abilities :"HOSPITALITY"
  pkmn.hidden_abilities :"HEATPROOF"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"Head"
  pkmn.base_exp 178
  pkmn.catch_rate 60
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.2
  pkmn.weight 4.9
  pkmn.category "Matcha"
  pkmn.pokedex_entry "It pretends to be tea, trying to fool people into drinking it so it can drain their life-force. Its ruse is generally unsuccessful."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Mineral", :"Amorphous"

  pkmn.moves do |m|
    m.at 0, :"MATCHAGOTCHA"
    m.at 1, :"ASTONISH"
    m.at 1, :"WITHDRAW"
    m.at 1, :"STUNSPORE"
    m.at 6, :"ABSORB"
    m.at 12, :"LIFEDEW"
    m.at 18, :"FOULPLAY"
    m.at 24, :"MEGADRAIN"
    m.at 30, :"HEX"
    m.at 36, :"RAGEPOWDER"
    m.at 42, :"GIGADRAIN"
    m.at 48, :"SHADOWBALL"
    m.at 54, :"MEMENTO"
    m.at 60, :"LEAFSTORM"
  end
  pkmn.tutor_moves :"CALMMIND", :"CURSE", :"ENDURE", :"ENERGYBALL", :"FOULPLAY", :"GIGADRAIN", :"GRASSYTERRAIN", :"HEX", :"HYPERBEAM", :"IMPRISON", :"IRONDEFENSE", :"LEAFSTORM", :"MAGICALLEAF", :"NASTYPLOT", :"NIGHTSHADE", :"PAINSPLIT", :"PHANTOMFORCE", :"POLTERGEIST", :"PROTECT", :"PSYCHUP", :"REFLECT", :"REST", :"SCALD", :"SHADOWBALL", :"SLEEPTALK", :"SOLARBEAM", :"SPITE", :"SUBSTITUTE", :"TRICKROOM", :"UPROAR"
end

GameData::SpeciesMetrics.define :"SINISTCHA" do |m|
  m.back_sprite 0, 49
  m.front_sprite 0, 10
  m.shadow_sprite 0, 0, 2
end

# Form 1 - Masterpiece Form
GameData::Species.define :"SINISTCHA_1" do |pkmn|
  pkmn.species :"SINISTCHA"
  pkmn.form 1
  pkmn.name "Sinistcha"
  pkmn.form_name "Masterpiece Form"
  pkmn.types :"GRASS", :"GHOST"
  pkmn.base_stats hp: 71, attack: 60, defense: 106,
                  sp_atk: 70, sp_def: 121, speed: 80
  pkmn.abilities :"HOSPITALITY"
  pkmn.hidden_abilities :"HEATPROOF"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"Head"
  pkmn.base_exp 178
  pkmn.catch_rate 60
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.2
  pkmn.weight 4.9
  pkmn.category "Matcha"
  pkmn.pokedex_entry "It lives inside a superb teacup that was crafted by a potter of great renown. Collectors positively adore this Pokémon."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Mineral", :"Amorphous"

  pkmn.moves do |m|
    m.at 0, :"MATCHAGOTCHA"
    m.at 1, :"ASTONISH"
    m.at 1, :"WITHDRAW"
    m.at 1, :"STUNSPORE"
    m.at 6, :"ABSORB"
    m.at 12, :"LIFEDEW"
    m.at 18, :"FOULPLAY"
    m.at 24, :"MEGADRAIN"
    m.at 30, :"HEX"
    m.at 36, :"RAGEPOWDER"
    m.at 42, :"GIGADRAIN"
    m.at 48, :"SHADOWBALL"
    m.at 54, :"MEMENTO"
    m.at 60, :"LEAFSTORM"
  end
  pkmn.tutor_moves :"CALMMIND", :"CURSE", :"ENDURE", :"ENERGYBALL", :"FOULPLAY", :"GIGADRAIN", :"GRASSYTERRAIN", :"HEX", :"HYPERBEAM", :"IMPRISON", :"IRONDEFENSE", :"LEAFSTORM", :"MAGICALLEAF", :"NASTYPLOT", :"NIGHTSHADE", :"PAINSPLIT", :"PHANTOMFORCE", :"POLTERGEIST", :"PROTECT", :"PSYCHUP", :"REFLECT", :"REST", :"SCALD", :"SHADOWBALL", :"SLEEPTALK", :"SOLARBEAM", :"SPITE", :"SUBSTITUTE", :"TRICKROOM", :"UPROAR"
end

GameData::SpeciesMetrics.define :"SINISTCHA_1" do |m|
  m.back_sprite 0, 49
  m.front_sprite 0, 10
  m.shadow_sprite 0, 0, 2
end