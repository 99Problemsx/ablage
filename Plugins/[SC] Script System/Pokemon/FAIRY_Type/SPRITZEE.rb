#=============================================================================
# Spritzee - FAIRY Type
#=============================================================================

GameData::Species.define :"SPRITZEE" do |pkmn|
  pkmn.name "Spritzee"
  pkmn.types :"FAIRY"
  pkmn.base_stats hp: 78, attack: 52, defense: 60,
                  sp_atk: 23, sp_def: 63, speed: 65
  pkmn.abilities :"HEALER"
  pkmn.hidden_abilities :"AROMAVEIL"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Pink"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 68
  pkmn.catch_rate 200
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.2
  pkmn.weight 0.5
  pkmn.category "Perfume"
  pkmn.pokedex_entry "It emits a scent that enraptures those who smell it. This fragrance changes depending on what it has eaten."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Fairy"

  pkmn.moves do |m|
    m.at 1, :"FAIRYWIND"
    m.at 1, :"SWEETSCENT"
    m.at 3, :"SWEETKISS"
    m.at 6, :"ECHOEDVOICE"
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
  end
  pkmn.tutor_moves :"AFTERYOU", :"ALLYSWITCH", :"ATTRACT", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"CHARM", :"CONFIDE", :"COVET", :"DAZZLINGGLEAM", :"DOUBLETEAM", :"DRAININGKISS", :"DREAMEATER", :"ECHOEDVOICE", :"ENCORE", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FAKETEARS", :"FLASH", :"FLASHCANNON", :"FRUSTRATION", :"GYROBALL", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"LIGHTSCREEN", :"MAGICCOAT", :"MIMIC", :"MISTYEXPLOSION", :"MISTYTERRAIN", :"NASTYPLOT", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SKILLSWAP", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TELEKINESIS", :"THUNDERBOLT", :"TORMENT", :"TOXIC", :"TRICKROOM", :"TERABLAST"
  pkmn.egg_moves :"AFTERYOU", :"DISABLE", :"WISH"
end

GameData::SpeciesMetrics.define :"SPRITZEE" do |m|
  m.back_sprite 0, 57
  m.front_sprite 1, 20
end