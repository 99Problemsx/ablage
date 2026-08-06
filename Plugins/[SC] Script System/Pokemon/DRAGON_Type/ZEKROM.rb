#=============================================================================
# Zekrom - DRAGON Type
#=============================================================================

GameData::Species.define :"ZEKROM" do |pkmn|
  pkmn.name "Zekrom"
  pkmn.types :"DRAGON", :"ELECTRIC"
  pkmn.base_stats hp: 100, attack: 150, defense: 120,
                  sp_atk: 90, sp_def: 120, speed: 100
  pkmn.abilities :"TERAVOLT"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Black"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 306
  pkmn.catch_rate 45
  pkmn.happiness 0
  pkmn.hatch_steps 30840
  pkmn.height 2.9
  pkmn.weight 345.0
  pkmn.category "Deep Black"
  pkmn.pokedex_entry "This Pokémon appears in legends. In its tail, it has a giant generator that creates electricity."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"THUNDERFANG"
    m.at 1, :"DRAGONRAGE"
    m.at 8, :"IMPRISON"
    m.at 15, :"ANCIENTPOWER"
    m.at 22, :"THUNDERBOLT"
    m.at 29, :"DRAGONBREATH"
    m.at 36, :"SLASH"
    m.at 43, :"ZENHEADBUTT"
    m.at 50, :"FUSIONBOLT"
    m.at 54, :"DRAGONCLAW"
    m.at 64, :"IMPRISON"
    m.at 71, :"CRUNCH"
    m.at 78, :"THUNDER"
    m.at 85, :"OUTRAGE"
    m.at 92, :"HYPERVOICE"
    m.at 100, :"BOLTSTRIKE"
  end
  pkmn.tutor_moves :"CHARGEBEAM", :"CUT", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONCLAW", :"DRAGONPULSE", :"DRAGONTAIL", :"EARTHPOWER", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FLASH", :"FLASHCANNON", :"FLING", :"FLY", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"HYPERVOICE", :"LIGHTSCREEN", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROOST", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SHADOWCLAW", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SWAGGER", :"TAILWIND", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"VOLTSWITCH", :"WILDCHARGE", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"ZEKROM" do |m|
  m.back_sprite 0, 0
  m.front_sprite 3, 6
  m.shadow_sprite 0, 0, 3
end