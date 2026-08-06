#=============================================================================
# Mimikyu - GHOST Type
#=============================================================================

GameData::Species.define :"MIMIKYU" do |pkmn|
  pkmn.name "Mimikyu"
  pkmn.form_name "Disguised Form"
  pkmn.types :"GHOST", :"FAIRY"
  pkmn.base_stats hp: 55, attack: 90, defense: 80,
                  sp_atk: 96, sp_def: 50, speed: 105
  pkmn.abilities :"DISGUISE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 167
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.2
  pkmn.weight 0.7
  pkmn.category "Disguise"
  pkmn.pokedex_entry "A lonely Pokémon, it conceals its terrifying appearance beneath an old rag so it can get closer to people and other Pokémon."
  pkmn.evs special_defense: 2
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"WOODHAMMER"
    m.at 1, :"SPLASH"
    m.at 1, :"ASTONISH"
    m.at 1, :"SCRATCH"
    m.at 1, :"COPYCAT"
    m.at 6, :"SHADOWSNEAK"
    m.at 12, :"DOUBLETEAM"
    m.at 18, :"BABYDOLLEYES"
    m.at 24, :"MIMIC"
    m.at 30, :"HONECLAWS"
    m.at 36, :"SLASH"
    m.at 42, :"SHADOWCLAW"
    m.at 48, :"CHARM"
    m.at 54, :"PLAYROUGH"
    m.at 60, :"PAINSPLIT"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ATTRACT", :"BEATUP", :"BULKUP", :"BURNINGJEALOUSY", :"CAPTIVATE", :"CHARGEBEAM", :"CHARM", :"CONFIDE", :"COVET", :"DARKPULSE", :"DAZZLINGGLEAM", :"DOUBLETEAM", :"DRAININGKISS", :"DRAINPUNCH", :"DREAMEATER", :"EMBARGO", :"ENDURE", :"FACADE", :"FLING", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"HEX", :"HIDDENPOWER", :"HYPERBEAM", :"INFESTATION", :"LASTRESORT", :"LEECHLIFE", :"LIGHTSCREEN", :"MAGICROOM", :"MIMIC", :"NATURALGIFT", :"PAINSPLIT", :"PAYBACK", :"PHANTOMFORCE", :"PLAYROUGH", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SCREECH", :"SECRETPOWER", :"SHADOWBALL", :"SHADOWCLAW", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SPITE", :"SUBSTITUTE", :"SWAGGER", :"SWORDSDANCE", :"TAUNT", :"TELEKINESIS", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"TRICK", :"TRICKROOM", :"WILLOWISP", :"WORKUP", :"XSCISSOR", :"TERABLAST"
  pkmn.egg_moves :"CURSE", :"DESTINYBOND", :"GRUDGE"
end

GameData::SpeciesMetrics.define :"MIMIKYU" do |m|
  m.back_sprite 0, 49
  m.front_sprite 7, 26
end