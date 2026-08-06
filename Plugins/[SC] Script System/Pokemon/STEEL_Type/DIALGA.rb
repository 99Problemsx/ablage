#=============================================================================
# Dialga - STEEL Type
#=============================================================================

GameData::Species.define :"DIALGA" do |pkmn|
  pkmn.name "Dialga"
  pkmn.types :"STEEL", :"DRAGON"
  pkmn.base_stats hp: 100, attack: 120, defense: 120,
                  sp_atk: 90, sp_def: 150, speed: 100
  pkmn.abilities :"PRESSURE"
  pkmn.hidden_abilities :"TELEPATHY"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"White"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 306
  pkmn.catch_rate 30
  pkmn.happiness 0
  pkmn.hatch_steps 30840
  pkmn.height 5.4
  pkmn.weight 683.0
  pkmn.category "Temporal"
  pkmn.pokedex_entry "It has the power to control time. It appears in Sinnoh-region myths as an ancient deity."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"DRAGONBREATH"
    m.at 1, :"SCARYFACE"
    m.at 6, :"METALCLAW"
    m.at 10, :"ANCIENTPOWER"
    m.at 15, :"SLASH"
    m.at 19, :"POWERGEM"
    m.at 24, :"METALBURST"
    m.at 28, :"DRAGONCLAW"
    m.at 33, :"EARTHPOWER"
    m.at 37, :"AURASPHERE"
    m.at 42, :"IRONTAIL"
    m.at 46, :"ROAROFTIME"
    m.at 50, :"FLASHCANNON"
  end
  pkmn.tutor_moves :"AERIALACE", :"ANCIENTPOWER", :"BLIZZARD", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CUT", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONCLAW", :"DRAGONPULSE", :"DRAGONTAIL", :"EARTHPOWER", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FLASH", :"FLASHCANNON", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"GRAVITY", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"INCINERATE", :"IRONDEFENSE", :"IRONHEAD", :"IRONTAIL", :"MAGNETRISE", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OUTRAGE", :"OVERHEAT", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SHADOWCLAW", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"TRICKROOM", :"TWISTER"
end

GameData::SpeciesMetrics.define :"DIALGA" do |m|
  m.back_sprite 1, 0
  m.front_sprite -2, 6
  m.shadow_sprite 0, 0, 3
end

# Form 1 - Origin Forme
GameData::Species.define :"DIALGA_1" do |pkmn|
  pkmn.species :"DIALGA"
  pkmn.form 1
  pkmn.name "Dialga"
  pkmn.form_name "Origin Forme"
  pkmn.types :"STEEL", :"DRAGON"
  pkmn.base_stats hp: 100, attack: 100, defense: 120,
                  sp_atk: 90, sp_def: 150, speed: 120
  pkmn.abilities :"PRESSURE"
  pkmn.hidden_abilities :"TELEPATHY"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"White"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 306
  pkmn.catch_rate 30
  pkmn.happiness 0
  pkmn.hatch_steps 30840
  pkmn.height 7.0
  pkmn.weight 848.7
  pkmn.category "Temporal"
  pkmn.pokedex_entry "Radiant light caused Dialga to take on a form bearing a striking resemblance to the creator Pokémon. Dialga now wields such colossal strength that one must conclude this is its true form."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"DRAGONBREATH"
    m.at 1, :"SCARYFACE"
    m.at 6, :"METALCLAW"
    m.at 10, :"ANCIENTPOWER"
    m.at 15, :"SLASH"
    m.at 19, :"POWERGEM"
    m.at 24, :"METALBURST"
    m.at 28, :"DRAGONCLAW"
    m.at 33, :"EARTHPOWER"
    m.at 37, :"AURASPHERE"
    m.at 42, :"IRONTAIL"
    m.at 46, :"ROAROFTIME"
    m.at 50, :"FLASHCANNON"
  end
  pkmn.tutor_moves :"AERIALACE", :"ANCIENTPOWER", :"BLIZZARD", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CUT", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONCLAW", :"DRAGONPULSE", :"DRAGONTAIL", :"EARTHPOWER", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FLASH", :"FLASHCANNON", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"GRAVITY", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"INCINERATE", :"IRONDEFENSE", :"IRONHEAD", :"IRONTAIL", :"MAGNETRISE", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OUTRAGE", :"OVERHEAT", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SHADOWCLAW", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"TRICKROOM", :"TWISTER"
end

GameData::SpeciesMetrics.define :"DIALGA_1" do |m|
  m.back_sprite 0, 24
  m.front_sprite 1, 3
  m.shadow_sprite 0, 0, 2
end