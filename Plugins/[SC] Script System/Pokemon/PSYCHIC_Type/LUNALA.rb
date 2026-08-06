#=============================================================================
# Lunala - PSYCHIC Type
#=============================================================================

GameData::Species.define :"LUNALA" do |pkmn|
  pkmn.name "Lunala"
  pkmn.types :"PSYCHIC", :"GHOST"
  pkmn.base_stats hp: 137, attack: 113, defense: 89,
                  sp_atk: 97, sp_def: 137, speed: 107
  pkmn.abilities :"SHADOWSHIELD"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Purple"
  pkmn.shape :"Winged"
  pkmn.base_exp 340
  pkmn.catch_rate 45
  pkmn.happiness 0
  pkmn.hatch_steps 30720
  pkmn.height 4.0
  pkmn.weight 120.0
  pkmn.category "Moone"
  pkmn.pokedex_entry "Said to live in another world, this Pokémon devours light, drawing the moonless dark veil of night over the brightness of day."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 0, :"MOONGEISTBEAM"
    m.at 1, :"COSMICPOWER"
    m.at 1, :"TELEPORT"
    m.at 1, :"CONFUSION"
    m.at 1, :"HYPNOSIS"
    m.at 7, :"NIGHTSHADE"
    m.at 14, :"CONFUSERAY"
    m.at 21, :"AIRSLASH"
    m.at 28, :"SHADOWBALL"
    m.at 35, :"MOONLIGHT"
    m.at 42, :"NIGHTDAZE"
    m.at 49, :"MAGICCOAT"
    m.at 56, :"MOONBLAST"
    m.at 63, :"PHANTOMFORCE"
    m.at 70, :"DREAMEATER"
    m.at 77, :"WIDEGUARD"
    m.at 84, :"HYPERBEAM"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AGILITY", :"AIRSLASH", :"BLIZZARD", :"CALMMIND", :"CHARGEBEAM", :"CONFIDE", :"COSMICPOWER", :"DAZZLINGGLEAM", :"DEFOG", :"DOUBLETEAM", :"DREAMEATER", :"DUALWINGBEAT", :"ENDURE", :"EXPANDINGFORCE", :"FACADE", :"FLY", :"FOCUSBLAST", :"FRUSTRATION", :"FUTURESIGHT", :"GIGAIMPACT", :"HEATWAVE", :"HELPINGHAND", :"HEX", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGICROOM", :"METEORBEAM", :"MIMIC", :"NATURALGIFT", :"PHANTOMFORCE", :"POLTERGEIST", :"PROTECT", :"PSYCHIC", :"PSYCHOCUT", :"PSYCHUP", :"PSYSHOCK", :"REFLECT", :"REST", :"RETURN", :"ROAR", :"ROOST", :"ROUND", :"SAFEGUARD", :"SCARYFACE", :"SECRETPOWER", :"SHADOWBALL", :"SHADOWCLAW", :"SHOCKWAVE", :"SIGNALBEAM", :"SKYATTACK", :"SKYDROP", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SPITE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"TELEKINESIS", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"TRICKROOM", :"WILLOWISP", :"WONDERROOM", :"WORKUP", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"LUNALA" do |m|
  m.back_sprite 10, 64
  m.front_sprite 0, 0
  m.shadow_sprite 0, 0, -2
end