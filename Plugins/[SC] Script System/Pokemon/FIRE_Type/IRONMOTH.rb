#=============================================================================
# Iron Moth - FIRE Type
#=============================================================================

GameData::Species.define :"IRONMOTH" do |pkmn|
  pkmn.name "Iron Moth"
  pkmn.types :"FIRE", :"POISON"
  pkmn.base_stats hp: 80, attack: 70, defense: 60,
                  sp_atk: 110, sp_def: 140, speed: 110
  pkmn.abilities :"QUARKDRIVE"
  pkmn.flags :"Paradox"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Yellow"
  pkmn.shape :"MultiWinged"
  pkmn.base_exp 285
  pkmn.catch_rate 30
  pkmn.happiness 0
  pkmn.hatch_steps 12800
  pkmn.height 1.2
  pkmn.weight 36.0
  pkmn.category "Paradox"
  pkmn.pokedex_entry "This Pokémon resembles an unknown object described in a paranormal magazine as a UFO sent to observe humanity."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at -1, :"ELECTRICTERRAIN"
    m.at 1, :"WHIRLWIND"
    m.at 1, :"EMBER"
    m.at 1, :"ACIDSPRAY"
    m.at 1, :"GUST"
    m.at 7, :"STRUGGLEBUG"
    m.at 14, :"FIRESPIN"
    m.at 21, :"TAKEDOWN"
    m.at 28, :"LUNGE"
    m.at 35, :"SCREECH"
    m.at 42, :"DISCHARGE"
    m.at 49, :"SLUDGEWAVE"
    m.at 56, :"FIERYDANCE"
    m.at 63, :"METALSOUND"
    m.at 70, :"MORNINGSUN"
    m.at 77, :"HURRICANE"
    m.at 84, :"BUGBUZZ"
    m.at 91, :"OVERHEAT"
  end
  pkmn.tutor_moves :"ACIDSPRAY", :"ACROBATICS", :"AGILITY", :"AIRSLASH", :"BUGBUZZ", :"CHARGEBEAM", :"CONFUSERAY", :"DAZZLINGGLEAM", :"ELECTRICTERRAIN", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FIREBLAST", :"FIRESPIN", :"FLAMECHARGE", :"FLAMETHROWER", :"FLAREBLITZ", :"FLASHCANNON", :"GIGAIMPACT", :"HEATWAVE", :"HELPINGHAND", :"HURRICANE", :"HYPERBEAM", :"LIGHTSCREEN", :"LUNGE", :"METALSOUND", :"METEORBEAM", :"OVERHEAT", :"POUNCE", :"PROTECT", :"PSYCHIC", :"REST", :"SLEEPTALK", :"SLUDGEWAVE", :"SOLARBEAM", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SWIFT", :"TAKEDOWN", :"TOXIC", :"TOXICSPIKES", :"UTURN", :"VENOSHOCK"
end

GameData::SpeciesMetrics.define :"IRONMOTH" do |m|
  m.back_sprite 0, 43
  m.front_sprite 0, 0
  m.shadow_sprite 0, 0, 2
end