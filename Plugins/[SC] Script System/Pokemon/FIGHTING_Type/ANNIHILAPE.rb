#=============================================================================
# Annihilape - FIGHTING Type
#=============================================================================

GameData::Species.define :"ANNIHILAPE" do |pkmn|
  pkmn.name "Annihilape"
  pkmn.types :"FIGHTING", :"GHOST"
  pkmn.base_stats hp: 110, attack: 115, defense: 80,
                  sp_atk: 90, sp_def: 50, speed: 90
  pkmn.abilities :"VITALSPIRIT", :"INNERFOCUS"
  pkmn.hidden_abilities :"DEFIANT"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 268
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.2
  pkmn.weight 56.0
  pkmn.category "Rage Monkey"
  pkmn.pokedex_entry "When its anger rose beyond a critical point, this Pokémon gained power that is unfettered by the limits of its physical body."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 0, :"SHADOWPUNCH"
    m.at 1, :"SCRATCH"
    m.at 1, :"LEER"
    m.at 1, :"COUNTER"
    m.at 1, :"FOCUSENERGY"
    m.at 1, :"FLING"
    m.at 5, :"FURYSWIPES"
    m.at 8, :"LOWKICK"
    m.at 12, :"SEISMICTOSS"
    m.at 17, :"SWAGGER"
    m.at 22, :"CROSSCHOP"
    m.at 26, :"ASSURANCE"
    m.at 30, :"THRASH"
    m.at 35, :"RAGEFIST"
    m.at 39, :"CLOSECOMBAT"
    m.at 44, :"SCREECH"
    m.at 48, :"STOMPINGTANTRUM"
    m.at 53, :"OUTRAGE"
    m.at 57, :"FINALGAMBIT"
  end
  pkmn.tutor_moves :"ACROBATICS", :"BODYSLAM", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CLOSECOMBAT", :"COACHING", :"CURSE", :"DIG", :"DOUBLEEDGE", :"DRAINPUNCH", :"EARTHQUAKE", :"ENCORE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"GIGAIMPACT", :"GUNKSHOT", :"HELPINGHAND", :"HYPERBEAM", :"ICEPUNCH", :"LASHOUT", :"LOWKICK", :"LOWSWEEP", :"METRONOME", :"NIGHTSHADE", :"OUTRAGE", :"OVERHEAT", :"PHANTOMFORCE", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"REVERSAL", :"ROCKSLIDE", :"ROCKTOMB", :"SCARYFACE", :"SEEDBOMB", :"SHADOWBALL", :"SHADOWCLAW", :"SLEEPTALK", :"SMACKDOWN", :"SPITE", :"STEALTHROCK", :"STOMPINGTANTRUM", :"STONEEDGE", :"SUBSTITUTE", :"SUNNYDAY", :"SWIFT", :"TAKEDOWN", :"TAUNT", :"THIEF", :"THROATCHOP", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"UPROAR", :"UTURN", :"VACUUMWAVE"
end

GameData::SpeciesMetrics.define :"ANNIHILAPE" do |m|
  m.back_sprite 0, 42
  m.front_sprite 0, 15
  m.shadow_sprite 0, 0, 2
end