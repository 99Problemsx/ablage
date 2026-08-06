#=============================================================================
# Drampa - NORMAL Type
#=============================================================================

GameData::Species.define :"DRAMPA" do |pkmn|
  pkmn.name "Drampa"
  pkmn.types :"NORMAL", :"DRAGON"
  pkmn.base_stats hp: 78, attack: 60, defense: 85,
                  sp_atk: 36, sp_def: 135, speed: 91
  pkmn.abilities :"BERSERK", :"SAPSIPPER"
  pkmn.hidden_abilities :"CLOUDNINE"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"White"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 170
  pkmn.catch_rate 70
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 3.0
  pkmn.weight 185.0
  pkmn.category "Placid"
  pkmn.pokedex_entry "This Pokémon is friendly to people and loves children most of all. It comes from deep in the mountains to play with children it likes in town."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Monster", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"PLAYNICE"
    m.at 1, :"ECHOEDVOICE"
    m.at 5, :"TWISTER"
    m.at 10, :"PROTECT"
    m.at 15, :"GLARE"
    m.at 20, :"SAFEGUARD"
    m.at 25, :"DRAGONBREATH"
    m.at 30, :"EXTRASENSORY"
    m.at 35, :"DRAGONPULSE"
    m.at 40, :"LIGHTSCREEN"
    m.at 45, :"FLY"
    m.at 50, :"HYPERVOICE"
    m.at 55, :"OUTRAGE"
  end
  pkmn.tutor_moves :"AMNESIA", :"ATTRACT", :"BLIZZARD", :"BLOCK", :"BREAKINGSWIPE", :"BULLDOZE", :"CALMMIND", :"CAPTIVATE", :"CONFIDE", :"DEFOG", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONCLAW", :"DRAGONDANCE", :"DRAGONPULSE", :"DRAGONTAIL", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FLING", :"FLY", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HEATWAVE", :"HELPINGHAND", :"HIDDENPOWER", :"HURRICANE", :"HYDROPUMP", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"ICYWIND", :"LASHOUT", :"LIGHTSCREEN", :"MIMIC", :"NATURALGIFT", :"NATUREPOWER", :"OUTRAGE", :"PLAYROUGH", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROOST", :"ROUND", :"SAFEGUARD", :"SCALESHOT", :"SECRETPOWER", :"SHADOWBALL", :"SHADOWCLAW", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNARL", :"SNORE", :"SOLARBEAM", :"STEELWING", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SURF", :"SWIFT", :"TAILWIND", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"UPROAR", :"WATERPULSE", :"WORKUP", :"TERABLAST"
  pkmn.egg_moves :"DRAGONRUSH", :"MIST", :"TICKLE"
end

GameData::SpeciesMetrics.define :"DRAMPA" do |m|
  m.back_sprite 0, 45
  m.front_sprite -5, 36
end

# Form 1 - Mega Drampa
GameData::Species.define :"DRAMPA_1" do |pkmn|
  pkmn.species :"DRAMPA"
  pkmn.form 1
  pkmn.name "Drampa"
  pkmn.form_name "Mega Drampa"
  pkmn.types :"NORMAL", :"DRAGON"
  pkmn.base_stats hp: 78, attack: 85, defense: 110,
                  sp_atk: 160, sp_def: 116, speed: 36
  pkmn.abilities :"BERSERK", :"SAPSIPPER"
  pkmn.hidden_abilities :"CLOUDNINE"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"White"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 170
  pkmn.catch_rate 70
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 3.0
  pkmn.weight 240.5
  pkmn.category "Placid"
  pkmn.pokedex_entry "Drampa's cells have been invigorated, allowing it to regain its youth. It manipulates the atmosphere to summon storms."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Monster", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"PLAYNICE"
    m.at 1, :"ECHOEDVOICE"
    m.at 5, :"TWISTER"
    m.at 10, :"PROTECT"
    m.at 15, :"GLARE"
    m.at 20, :"SAFEGUARD"
    m.at 25, :"DRAGONBREATH"
    m.at 30, :"EXTRASENSORY"
    m.at 35, :"DRAGONPULSE"
    m.at 40, :"LIGHTSCREEN"
    m.at 45, :"FLY"
    m.at 50, :"HYPERVOICE"
    m.at 55, :"OUTRAGE"
  end
  pkmn.tutor_moves :"AMNESIA", :"ATTRACT", :"BLIZZARD", :"BLOCK", :"BREAKINGSWIPE", :"BULLDOZE", :"CALMMIND", :"CAPTIVATE", :"CONFIDE", :"DEFOG", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONCLAW", :"DRAGONDANCE", :"DRAGONPULSE", :"DRAGONTAIL", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FLING", :"FLY", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HEATWAVE", :"HELPINGHAND", :"HIDDENPOWER", :"HURRICANE", :"HYDROPUMP", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"ICYWIND", :"LASHOUT", :"LIGHTSCREEN", :"MIMIC", :"NATURALGIFT", :"NATUREPOWER", :"OUTRAGE", :"PLAYROUGH", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETURN", :"ROAR", :"ROCKSLIDE", :"ROOST", :"ROUND", :"SAFEGUARD", :"SCALESHOT", :"SECRETPOWER", :"SHADOWBALL", :"SHADOWCLAW", :"SHOCKWAVE", :"SIGNALBEAM", :"SLEEPTALK", :"SNARL", :"SNORE", :"SOLARBEAM", :"STEELWING", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SURF", :"SWIFT", :"TAILWIND", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"UPROAR", :"WATERPULSE", :"WORKUP", :"TERABLAST"
  pkmn.egg_moves :"DRAGONRUSH", :"MIST", :"TICKLE"
end

GameData::SpeciesMetrics.define :"DRAMPA_1" do |m|
  m.back_sprite 0, 45
  m.front_sprite -5, 36
end