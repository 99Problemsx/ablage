#=============================================================================
# Pangoro - FIGHTING Type
#=============================================================================

GameData::Species.define :"PANGORO" do |pkmn|
  pkmn.name "Pangoro"
  pkmn.types :"FIGHTING", :"DARK"
  pkmn.base_stats hp: 95, attack: 124, defense: 78,
                  sp_atk: 58, sp_def: 69, speed: 71
  pkmn.abilities :"IRONFIST", :"MOLDBREAKER"
  pkmn.hidden_abilities :"SCRAPPY"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"White"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 173
  pkmn.catch_rate 65
  pkmn.happiness 50
  pkmn.hatch_steps 6400
  pkmn.height 2.1
  pkmn.weight 136.0
  pkmn.category "Daunting"
  pkmn.pokedex_entry "It charges ahead and bashes its opponents like a berserker, uncaring about any hits it might take. Its arms are mighty enough to snap a telephone pole."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Field", :"Humanlike"

  pkmn.moves do |m|
    m.at 0, :"NIGHTSLASH"
    m.at 1, :"BULLETPUNCH"
    m.at 1, :"TACKLE"
    m.at 1, :"LEER"
    m.at 1, :"ARMTHRUST"
    m.at 1, :"TAUNT"
    m.at 12, :"CIRCLETHROW"
    m.at 16, :"LOWSWEEP"
    m.at 20, :"WORKUP"
    m.at 24, :"SLASH"
    m.at 28, :"VITALTHROW"
    m.at 35, :"CRUNCH"
    m.at 40, :"BODYSLAM"
    m.at 46, :"PARTINGSHOT"
    m.at 52, :"ENTRAINMENT"
    m.at 58, :"HAMMERARM"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BEATUP", :"BLOCK", :"BODYSLAM", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"CLOSECOMBAT", :"COACHING", :"CONFIDE", :"COVET", :"CRUNCH", :"CUT", :"DARKESTLARIAT", :"DARKPULSE", :"DIG", :"DOUBLETEAM", :"DRAGONCLAW", :"DRAINPUNCH", :"DUALCHOP", :"EARTHQUAKE", :"ECHOEDVOICE", :"EMBARGO", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FIREPUNCH", :"FLING", :"FOCUSBLAST", :"FOCUSENERGY", :"FOCUSPUNCH", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GUNKSHOT", :"HELPINGHAND", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"HYPERVOICE", :"ICEPUNCH", :"INFESTATION", :"IRONHEAD", :"KNOCKOFF", :"LASERFOCUS", :"LASHOUT", :"LOWKICK", :"LOWSWEEP", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PAYBACK", :"POISONJAB", :"POWERUPPUNCH", :"PROTECT", :"QUASH", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"REVENGE", :"REVERSAL", :"ROAR", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SCARYFACE", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SLUDGEBOMB", :"SNARL", :"SNATCH", :"SNORE", :"SPITE", :"STOMPINGTANTRUM", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SURF", :"SWAGGER", :"SWORDSDANCE", :"TAUNT", :"THIEF", :"THROATCHOP", :"THUNDERPUNCH", :"TORMENT", :"TOXIC", :"UPROAR", :"WORKUP", :"XSCISSOR", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"PANGORO" do |m|
  m.back_sprite 0, 51
  m.front_sprite 6, 7
end