#=============================================================================
# Ho-Oh - FIRE Type
#=============================================================================

GameData::Species.define :"HOOH" do |pkmn|
  pkmn.name "Ho-Oh"
  pkmn.types :"FIRE", :"FLYING"
  pkmn.base_stats hp: 106, attack: 130, defense: 90,
                  sp_atk: 90, sp_def: 110, speed: 154
  pkmn.abilities :"PRESSURE"
  pkmn.hidden_abilities :"REGENERATOR"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Red"
  pkmn.shape :"Winged"
  pkmn.base_exp 306
  pkmn.catch_rate 3
  pkmn.happiness 0
  pkmn.hatch_steps 30840
  pkmn.height 3.8
  pkmn.weight 199.0
  pkmn.category "Rainbow"
  pkmn.pokedex_entry "Its feathers--which glow in seven colors depending on the angle at which light strikes them--are thought to bring joy. It is said to live at the foot of a rainbow."
  pkmn.evs special_defense: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"WHIRLWIND"
    m.at 1, :"WEATHERBALL"
    m.at 9, :"GUST"
    m.at 15, :"BRAVEBIRD"
    m.at 23, :"EXTRASENSORY"
    m.at 29, :"SUNNYDAY"
    m.at 37, :"FIREBLAST"
    m.at 43, :"SACREDFIRE"
    m.at 50, :"PUNISHMENT"
    m.at 57, :"ANCIENTPOWER"
    m.at 65, :"SAFEGUARD"
    m.at 71, :"RECOVER"
    m.at 79, :"FUTURESIGHT"
    m.at 85, :"NATURALGIFT"
    m.at 93, :"CALMMIND"
    m.at 99, :"SKYATTACK"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"ANCIENTPOWER", :"BULLDOZE", :"CALMMIND", :"CHARGEBEAM", :"DEFOG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"EARTHPOWER", :"EARTHQUAKE", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMECHARGE", :"FLAMETHROWER", :"FLASH", :"FLY", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"INCINERATE", :"IRONHEAD", :"LIGHTSCREEN", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"OVERHEAT", :"PLUCK", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROOST", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SKYATTACK", :"SKYDROP", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STEELWING", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"TWISTER", :"WILLOWISP", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"HOOH" do |m|
  m.back_sprite 3, 0
  m.front_sprite 0, -7
  m.shadow_sprite 0, 0, 2
end