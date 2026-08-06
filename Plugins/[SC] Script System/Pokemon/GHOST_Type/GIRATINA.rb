#=============================================================================
# Giratina - GHOST Type
#=============================================================================

GameData::Species.define :"GIRATINA" do |pkmn|
  pkmn.name "Giratina"
  pkmn.form_name "Altered Forme"
  pkmn.types :"GHOST", :"DRAGON"
  pkmn.base_stats hp: 150, attack: 100, defense: 120,
                  sp_atk: 90, sp_def: 100, speed: 120
  pkmn.abilities :"PRESSURE"
  pkmn.hidden_abilities :"TELEPATHY"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Black"
  pkmn.shape :"Multiped"
  pkmn.base_exp 306
  pkmn.catch_rate 3
  pkmn.happiness 0
  pkmn.hatch_steps 30840
  pkmn.height 4.5
  pkmn.weight 750.0
  pkmn.category "Renegade"
  pkmn.pokedex_entry "A Pokémon that is said to live in a world on the reverse side of ours. It appears in an ancient cemetery."
  pkmn.evs hp: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"DRAGONBREATH"
    m.at 1, :"SCARYFACE"
    m.at 6, :"OMINOUSWIND"
    m.at 10, :"ANCIENTPOWER"
    m.at 15, :"SLASH"
    m.at 19, :"SHADOWSNEAK"
    m.at 24, :"DESTINYBOND"
    m.at 28, :"DRAGONCLAW"
    m.at 33, :"EARTHPOWER"
    m.at 37, :"AURASPHERE"
    m.at 42, :"SHADOWCLAW"
    m.at 46, :"SHADOWFORCE"
    m.at 50, :"HEX"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"ANCIENTPOWER", :"AQUATAIL", :"BULLDOZE", :"CALMMIND", :"CHARGEBEAM", :"CUT", :"DARKPULSE", :"DEFOG", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONCLAW", :"DRAGONPULSE", :"DRAGONTAIL", :"DREAMEATER", :"EARTHPOWER", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLY", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"GRAVITY", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"HYPERVOICE", :"ICYWIND", :"IRONHEAD", :"IRONTAIL", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"OUTRAGE", :"PAINSPLIT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKSMASH", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SHADOWCLAW", :"SHOCKWAVE", :"SILVERWIND", :"SLEEPTALK", :"SNORE", :"SPITE", :"STEELWING", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TELEKINESIS", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"TWISTER", :"WILLOWISP"
end

GameData::SpeciesMetrics.define :"GIRATINA" do |m|
  m.back_sprite -6, 0
  m.front_sprite -3, 7
  m.shadow_sprite 0, 0, 3
end

# Form 1 - Altered Forme
GameData::Species.define :"GIRATINA_1" do |pkmn|
  pkmn.species :"GIRATINA"
  pkmn.form 1
  pkmn.name "Giratina"
  pkmn.form_name "Altered Forme"
  pkmn.types :"GHOST", :"DRAGON"
  pkmn.base_stats hp: 150, attack: 100, defense: 120,
                  sp_atk: 90, sp_def: 100, speed: 120
  pkmn.abilities :"PRESSURE"
  pkmn.hidden_abilities :"TELEPATHY"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Black"
  pkmn.shape :"Multiped"
  pkmn.base_exp 306
  pkmn.catch_rate 3
  pkmn.happiness 0
  pkmn.hatch_steps 30840
  pkmn.height 4.5
  pkmn.weight 750.0
  pkmn.category "Renegade"
  pkmn.pokedex_entry "A Pokémon that is said to live in a world on the reverse side of ours. It appears in an ancient cemetery."
  pkmn.evs hp: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"DRAGONBREATH"
    m.at 1, :"SCARYFACE"
    m.at 6, :"OMINOUSWIND"
    m.at 10, :"ANCIENTPOWER"
    m.at 15, :"SLASH"
    m.at 19, :"SHADOWSNEAK"
    m.at 24, :"DESTINYBOND"
    m.at 28, :"DRAGONCLAW"
    m.at 33, :"EARTHPOWER"
    m.at 37, :"AURASPHERE"
    m.at 42, :"SHADOWCLAW"
    m.at 46, :"SHADOWFORCE"
    m.at 50, :"HEX"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"ANCIENTPOWER", :"AQUATAIL", :"BULLDOZE", :"CALMMIND", :"CHARGEBEAM", :"CUT", :"DARKPULSE", :"DEFOG", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONCLAW", :"DRAGONPULSE", :"DRAGONTAIL", :"DREAMEATER", :"EARTHPOWER", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLY", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"GRAVITY", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"HYPERVOICE", :"ICYWIND", :"IRONHEAD", :"IRONTAIL", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"OUTRAGE", :"PAINSPLIT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKCLIMB", :"ROCKSMASH", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SHADOWCLAW", :"SHOCKWAVE", :"SILVERWIND", :"SLEEPTALK", :"SNORE", :"SPITE", :"STEELWING", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TELEKINESIS", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"TWISTER", :"WILLOWISP"
end

GameData::SpeciesMetrics.define :"GIRATINA_1" do |m|
  m.back_sprite -6, 0
  m.front_sprite -2, -8
  m.shadow_sprite 0, 0, 3
end