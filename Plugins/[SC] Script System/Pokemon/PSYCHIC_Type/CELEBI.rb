#=============================================================================
# Celebi - PSYCHIC Type
#=============================================================================

GameData::Species.define :"CELEBI" do |pkmn|
  pkmn.name "Celebi"
  pkmn.types :"PSYCHIC", :"GRASS"
  pkmn.base_stats hp: 100, attack: 100, defense: 100,
                  sp_atk: 100, sp_def: 100, speed: 100
  pkmn.abilities :"NATURALCURE"
  pkmn.flags :"Mythical"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Green"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 270
  pkmn.catch_rate 45
  pkmn.happiness 100
  pkmn.hatch_steps 30840
  pkmn.height 0.6
  pkmn.weight 5.0
  pkmn.category "Time Travel"
  pkmn.pokedex_entry "This Pokémon came from the future by crossing over time. It is thought that so long as Celebi appears, a bright and shining future awaits us."
  pkmn.evs hp: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"LEECHSEED"
    m.at 1, :"CONFUSION"
    m.at 1, :"RECOVER"
    m.at 1, :"HEALBELL"
    m.at 10, :"SAFEGUARD"
    m.at 19, :"MAGICALLEAF"
    m.at 28, :"ANCIENTPOWER"
    m.at 37, :"BATONPASS"
    m.at 46, :"NATURALGIFT"
    m.at 55, :"HEALBLOCK"
    m.at 64, :"FUTURESIGHT"
    m.at 73, :"HEALINGWISH"
    m.at 82, :"LEAFSTORM"
    m.at 91, :"PERISHSONG"
  end
  pkmn.tutor_moves :"AERIALACE", :"ANCIENTPOWER", :"CALMMIND", :"CHARGEBEAM", :"CUT", :"DEFENSECURL", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"EARTHPOWER", :"ECHOEDVOICE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FLING", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"LASTRESORT", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGICROOM", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWBALL", :"SHOCKWAVE", :"SIGNALBEAM", :"SILVERWIND", :"SKILLSWAP", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"SYNTHESIS", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"TRICKROOM", :"UPROAR", :"UTURN", :"WATERPULSE", :"WONDERROOM", :"WORRYSEED", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"CELEBI" do |m|
  m.back_sprite 0, 0
  m.front_sprite 0, 3
  m.shadow_sprite 0, 0, 1
end