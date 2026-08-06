#=============================================================================
# Ursaluna - GROUND Type
#=============================================================================

GameData::Species.define :"URSALUNA" do |pkmn|
  pkmn.name "Ursaluna"
  pkmn.types :"GROUND", :"NORMAL"
  pkmn.base_stats hp: 130, attack: 140, defense: 105,
                  sp_atk: 50, sp_def: 45, speed: 80
  pkmn.abilities :"GUTS", :"BULLETPROOF"
  pkmn.hidden_abilities :"UNNERVE"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 275
  pkmn.catch_rate 20
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 2.4
  pkmn.weight 290.0
  pkmn.category "Peat"
  pkmn.pokedex_entry "It is believed that the swampy terrain of its ancient home region that gave Ursaluna its burly physique and newfound capacity to manipulate peat at will."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 0, :"HEADLONGRUSH"
    m.at 1, :"SCRATCH"
    m.at 1, :"LEER"
    m.at 1, :"LICK"
    m.at 1, :"FAKETEARS"
    m.at 1, :"COVET"
    m.at 8, :"FURYSWIPES"
    m.at 13, :"PAYBACK"
    m.at 17, :"SWEETSCENT"
    m.at 22, :"SLASH"
    m.at 25, :"PLAYNICE"
    m.at 29, :"PLAYROUGH"
    m.at 35, :"SCARYFACE"
    m.at 41, :"REST"
    m.at 41, :"SNORE"
    m.at 48, :"HIGHHORSEPOWER"
    m.at 56, :"THRASH"
    m.at 64, :"HAMMERARM"
  end
  pkmn.tutor_moves :"AERIALACE", :"AVALANCHE", :"BODYPRESS", :"BODYSLAM", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CHARM", :"CLOSECOMBAT", :"CRUNCH", :"CURSE", :"DIG", :"DOUBLEEDGE", :"DRAINPUNCH", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FAKETEARS", :"FIREPUNCH", :"FLING", :"FOCUSPUNCH", :"GIGAIMPACT", :"GUNKSHOT", :"HARDPRESS", :"HEAVYSLAM", :"HELPINGHAND", :"HIGHHORSEPOWER", :"HYPERBEAM", :"HYPERVOICE", :"ICEPUNCH", :"LOWKICK", :"METALCLAW", :"METRONOME", :"PLAYROUGH", :"PROTECT", :"RAINDANCE", :"REST", :"ROAR", :"ROCKSLIDE", :"ROCKTOMB", :"SCARYFACE", :"SEEDBOMB", :"SHADOWCLAW", :"SLEEPTALK", :"SMACKDOWN", :"STOMPINGTANTRUM", :"STONEEDGE", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERCELLSLAM", :"SWIFT", :"SWORDSDANCE", :"TAKEDOWN", :"TAUNT", :"THIEF", :"THROATCHOP", :"THUNDERPUNCH", :"TRAILBLAZE", :"UPROAR"
end

GameData::SpeciesMetrics.define :"URSALUNA" do |m|
  m.back_sprite 0, 46
  m.front_sprite 1, 20
  m.shadow_sprite 2, 0, 3
end

# Form 1 - Bloodmoon Ursaluna
GameData::Species.define :"URSALUNA_1" do |pkmn|
  pkmn.species :"URSALUNA"
  pkmn.form 1
  pkmn.name "Ursaluna"
  pkmn.form_name "Bloodmoon Ursaluna"
  pkmn.types :"GROUND", :"NORMAL"
  pkmn.base_stats hp: 113, attack: 70, defense: 120,
                  sp_atk: 52, sp_def: 135, speed: 65
  pkmn.abilities :"MINDSEYE"
  pkmn.hidden_abilities :"UNNERVE"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 275
  pkmn.catch_rate 20
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 2.7
  pkmn.weight 333.0
  pkmn.category "Peat"
  pkmn.pokedex_entry "It is believed that the swampy terrain of its ancient home region that gave Ursaluna its burly physique and newfound capacity to manipulate peat at will."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at -1, :"MOONLIGHT"
    m.at 1, :"HEADLONGRUSH"
    m.at 1, :"SCRATCH"
    m.at 1, :"LEER"
    m.at 1, :"LICK"
    m.at 8, :"FURYSWIPES"
    m.at 13, :"PAYBACK"
    m.at 17, :"HARDEN"
    m.at 22, :"SLASH"
    m.at 25, :"PLAYNICE"
    m.at 35, :"SCARYFACE"
    m.at 41, :"SNORE"
    m.at 41, :"REST"
    m.at 48, :"EARTHPOWER"
    m.at 56, :"MOONBLAST"
    m.at 64, :"HAMMERARM"
    m.at 70, :"BLOODMOON"
  end
  pkmn.tutor_moves :"AVALANCHE", :"BODYPRESS", :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"CALMMIND", :"CRUNCH", :"DIG", :"DOUBLEEDGE", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"GIGAIMPACT", :"GUNKSHOT", :"HARDPRESS", :"HEAVYSLAM", :"HELPINGHAND", :"HIGHHORSEPOWER", :"HYPERBEAM", :"HYPERVOICE", :"ICEPUNCH", :"LOWKICK", :"METALCLAW", :"MUDSHOT", :"PROTECT", :"RAINDANCE", :"REST", :"ROAR", :"ROCKSLIDE", :"ROCKTOMB", :"SCARYFACE", :"SEEDBOMB", :"SHADOWCLAW", :"SLEEPTALK", :"SMACKDOWN", :"SNARL", :"STOMPINGTANTRUM", :"STONEEDGE", :"SUBSTITUTE", :"SUNNYDAY", :"SWIFT", :"SWORDSDANCE", :"TAKEDOWN", :"TAUNT", :"THIEF", :"THUNDERPUNCH", :"TRAILBLAZE", :"UPROAR", :"VACUUMWAVE"
end

GameData::SpeciesMetrics.define :"URSALUNA_1" do |m|
  m.back_sprite 0, 59
  m.front_sprite -6, 14
  m.shadow_sprite 2, 0, 3
end