#=============================================================================
# Ribombee - BUG Type
#=============================================================================

GameData::Species.define :"RIBOMBEE" do |pkmn|
  pkmn.name "Ribombee"
  pkmn.types :"BUG", :"FAIRY"
  pkmn.base_stats hp: 60, attack: 55, defense: 60,
                  sp_atk: 124, sp_def: 95, speed: 70
  pkmn.abilities :"HONEYGATHER", :"SHIELDDUST"
  pkmn.hidden_abilities :"SWEETVEIL"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"MultiWinged"
  pkmn.base_exp 162
  pkmn.catch_rate 75
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.2
  pkmn.weight 0.5
  pkmn.category "Bee Fly"
  pkmn.pokedex_entry "Rain makes pollen damp, so Ribombee hates rain. When it sees ominous clouds, it finds a hollow in a tree, where it waits stock-still."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Bug", :"Fairy"

  pkmn.moves do |m|
    m.at 0, :"POLLENPUFF"
    m.at 1, :"COVET"
    m.at 1, :"ABSORB"
    m.at 1, :"FAIRYWIND"
    m.at 1, :"STUNSPORE"
    m.at 1, :"SWEETSCENT"
    m.at 18, :"DRAININGKISS"
    m.at 24, :"STRUGGLEBUG"
    m.at 32, :"AROMATHERAPY"
    m.at 40, :"SWITCHEROO"
    m.at 48, :"DAZZLINGGLEAM"
    m.at 56, :"BUGBUZZ"
    m.at 64, :"QUIVERDANCE"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AFTERYOU", :"ALLYSWITCH", :"ATTRACT", :"BATONPASS", :"BUGBITE", :"BUGBUZZ", :"CALMMIND", :"CAPTIVATE", :"CHARM", :"CONFIDE", :"COVET", :"DAZZLINGGLEAM", :"DEFOG", :"DOUBLETEAM", :"DRAININGKISS", :"DREAMEATER", :"DUALWINGBEAT", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FAKETEARS", :"FRUSTRATION", :"GIGAIMPACT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"IMPRISON", :"INFESTATION", :"LASTRESORT", :"LEECHLIFE", :"LIGHTSCREEN", :"MAGICALLEAF", :"MAGICROOM", :"MIMIC", :"NATURALGIFT", :"NATUREPOWER", :"PLAYROUGH", :"POLLENPUFF", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"REFLECT", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SIGNALBEAM", :"SKILLSWAP", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SPEEDSWAP", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"TELEKINESIS", :"THIEF", :"TOXIC", :"TRICK", :"UTURN", :"WONDERROOM", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"RIBOMBEE" do |m|
  m.back_sprite -11, 44
  m.front_sprite 9, 9
end