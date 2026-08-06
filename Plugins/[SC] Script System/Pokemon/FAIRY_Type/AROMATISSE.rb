#=============================================================================
# Aromatisse - FAIRY Type
#=============================================================================

GameData::Species.define :"AROMATISSE" do |pkmn|
  pkmn.name "Aromatisse"
  pkmn.types :"FAIRY"
  pkmn.base_stats hp: 101, attack: 72, defense: 72,
                  sp_atk: 29, sp_def: 99, speed: 89
  pkmn.abilities :"HEALER"
  pkmn.hidden_abilities :"AROMAVEIL"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Pink"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 162
  pkmn.catch_rate 140
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.8
  pkmn.weight 15.5
  pkmn.category "Fragrance"
  pkmn.pokedex_entry "It devises various scents, pleasant and unpleasant, and emits scents that its enemies dislike in order to gain an edge in battle."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Fairy"

  pkmn.moves do |m|
    m.at 1, :"AROMATICMIST"
    m.at 1, :"HEALPULSE"
    m.at 1, :"FAIRYWIND"
    m.at 1, :"SWEETSCENT"
    m.at 1, :"SWEETKISS"
    m.at 1, :"ECHOEDVOICE"
    m.at 9, :"DISARMINGVOICE"
    m.at 12, :"AROMATHERAPY"
    m.at 15, :"DRAININGKISS"
    m.at 18, :"ATTRACT"
    m.at 21, :"FLAIL"
    m.at 24, :"MISTYTERRAIN"
    m.at 27, :"PSYCHIC"
    m.at 30, :"CHARM"
    m.at 33, :"CALMMIND"
    m.at 36, :"MOONBLAST"
    m.at 39, :"SKILLSWAP"
    m.at 42, :"PSYCHUP"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ALLYSWITCH", :"ATTRACT", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"CHARM", :"CONFIDE", :"COVET", :"DAZZLINGGLEAM", :"DOUBLETEAM", :"DRAININGKISS", :"DRAINPUNCH", :"DREAMEATER", :"ECHOEDVOICE", :"ENCORE", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FAKETEARS", :"FLASH", :"FLASHCANNON", :"FRUSTRATION", :"GIGAIMPACT", :"GYROBALL", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"LIGHTSCREEN", :"MAGICCOAT", :"METRONOME", :"MIMIC", :"MISTYEXPLOSION", :"MISTYTERRAIN", :"NASTYPLOT", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SKILLSWAP", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TELEKINESIS", :"THUNDER", :"THUNDERBOLT", :"TORMENT", :"TOXIC", :"TRICKROOM", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"AROMATISSE" do |m|
  m.back_sprite 0, 27
  m.front_sprite 0, 5
  m.shadow_sprite 0, 0, 2
end