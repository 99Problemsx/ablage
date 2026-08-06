#=============================================================================
# Cutiefly - BUG Type
#=============================================================================

GameData::Species.define :"CUTIEFLY" do |pkmn|
  pkmn.name "Cutiefly"
  pkmn.types :"BUG", :"FAIRY"
  pkmn.base_stats hp: 40, attack: 45, defense: 40,
                  sp_atk: 84, sp_def: 55, speed: 40
  pkmn.abilities :"HONEYGATHER", :"SHIELDDUST"
  pkmn.hidden_abilities :"SWEETVEIL"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 61
  pkmn.catch_rate 190
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.1
  pkmn.weight 0.2
  pkmn.category "Bee Fly"
  pkmn.pokedex_entry "It feeds on the nectar and pollen of flowers. Because it's able to sense auras, it can identify which flowers are about to bloom."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Bug", :"Fairy"

  pkmn.moves do |m|
    m.at 1, :"ABSORB"
    m.at 1, :"FAIRYWIND"
    m.at 6, :"STUNSPORE"
    m.at 12, :"SWEETSCENT"
    m.at 18, :"DRAININGKISS"
    m.at 24, :"STRUGGLEBUG"
    m.at 30, :"AROMATHERAPY"
    m.at 36, :"SWITCHEROO"
    m.at 42, :"DAZZLINGGLEAM"
    m.at 48, :"BUGBUZZ"
    m.at 54, :"QUIVERDANCE"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AFTERYOU", :"ALLYSWITCH", :"ATTRACT", :"BATONPASS", :"BUGBITE", :"BUGBUZZ", :"CALMMIND", :"CAPTIVATE", :"CHARM", :"CONFIDE", :"COVET", :"DAZZLINGGLEAM", :"DEFOG", :"DOUBLETEAM", :"DRAININGKISS", :"DREAMEATER", :"DUALWINGBEAT", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FAKETEARS", :"FRUSTRATION", :"HELPINGHAND", :"HIDDENPOWER", :"IMPRISON", :"INFESTATION", :"LASTRESORT", :"LEECHLIFE", :"LIGHTSCREEN", :"MAGICROOM", :"MIMIC", :"NATURALGIFT", :"PLAYROUGH", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"REFLECT", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNORE", :"SPEEDSWAP", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"TELEKINESIS", :"THIEF", :"TOXIC", :"TRICK", :"UTURN", :"WONDERROOM", :"TERABLAST"
  pkmn.egg_moves :"AROMATICMIST", :"MOONBLAST", :"STICKYWEB"
end

GameData::SpeciesMetrics.define :"CUTIEFLY" do |m|
  m.back_sprite -6, 37
  m.front_sprite 0, -1
  m.shadow_sprite 0, 0, -2
end