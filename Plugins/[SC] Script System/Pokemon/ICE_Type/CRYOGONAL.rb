#=============================================================================
# Cryogonal - ICE Type
#=============================================================================

GameData::Species.define :"CRYOGONAL" do |pkmn|
  pkmn.name "Cryogonal"
  pkmn.types :"ICE"
  pkmn.base_stats hp: 70, attack: 50, defense: 30,
                  sp_atk: 105, sp_def: 95, speed: 135
  pkmn.abilities :"LEVITATE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"Head"
  pkmn.base_exp 170
  pkmn.catch_rate 25
  pkmn.happiness 70
  pkmn.hatch_steps 6425
  pkmn.height 1.1
  pkmn.weight 148.0
  pkmn.category "Crystallizing"
  pkmn.pokedex_entry "They are born in snow clouds. They use chains made of ice crystals to capture prey."
  pkmn.evs special_defense: 2
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"BIND"
    m.at 5, :"ICESHARD"
    m.at 9, :"SHARPEN"
    m.at 13, :"RAPIDSPIN"
    m.at 17, :"ICYWIND"
    m.at 21, :"MIST"
    m.at 21, :"HAZE"
    m.at 25, :"AURORABEAM"
    m.at 29, :"ACIDARMOR"
    m.at 33, :"ICEBEAM"
    m.at 37, :"LIGHTSCREEN"
    m.at 37, :"REFLECT"
    m.at 41, :"SLASH"
    m.at 45, :"CONFUSERAY"
    m.at 49, :"RECOVER"
    m.at 53, :"SOLARBEAM"
    m.at 57, :"NIGHTSLASH"
    m.at 61, :"SHEERCOLD"
  end
  pkmn.tutor_moves :"ACROBATICS", :"ATTRACT", :"BIND", :"BLIZZARD", :"DOUBLETEAM", :"ENDURE", :"EXPLOSION", :"FACADE", :"FLASHCANNON", :"FROSTBREATH", :"FRUSTRATION", :"HAIL", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"IRONDEFENSE", :"KNOCKOFF", :"LIGHTSCREEN", :"MAGICCOAT", :"MIMIC", :"NATURALGIFT", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SWAGGER", :"TOXIC"
  pkmn.egg_moves :"AURORAVEIL", :"EXPLOSION", :"FROSTBREATH"
end

GameData::SpeciesMetrics.define :"CRYOGONAL" do |m|
  m.back_sprite -1, 0
  m.front_sprite 0, 8
  m.shadow_sprite 0, 0, 3
end