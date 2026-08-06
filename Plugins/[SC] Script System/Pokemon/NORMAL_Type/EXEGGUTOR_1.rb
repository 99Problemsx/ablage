#=============================================================================
# EXEGGUTOR_1 - NORMAL Type
#=============================================================================

GameData::Species.define :"EXEGGUTOR_1" do |pkmn|

  pkmn.moves do |m|
    m.at -1, :"GROWTH"
    m.at 0, :"DRAGONHAMMER"
    m.at 1, :"WOODHAMMER"
    m.at 1, :"LEAFSTORM"
    m.at 1, :"SEEDBOMB"
    m.at 1, :"WORRYSEED"
    m.at 1, :"BULLETSEED"
    m.at 1, :"EXTRASENSORY"
    m.at 1, :"UPROAR"
    m.at 1, :"SYNTHESIS"
    m.at 1, :"GIGADRAIN"
    m.at 1, :"REFLECT"
    m.at 1, :"HYPNOSIS"
    m.at 1, :"CONFUSION"
    m.at 1, :"SOLARBEAM"
    m.at 1, :"LEECHSEED"
    m.at 1, :"MEGADRAIN"
    m.at 1, :"PSYSHOCK"
    m.at 1, :"ABSORB"
  end
  pkmn.tutor_moves :"TAKEDOWN", :"PROTECT", :"LOWKICK", :"PSYBEAM", :"THIEF", :"TRAILBLAZE", :"FACADE", :"BULLDOZE", :"MAGICALLEAF", :"STOREDPOWER", :"DRAGONTAIL", :"ENDURE", :"SUNNYDAY", :"PSYSHOCK", :"BULLETSEED", :"BRICKBREAK", :"ZENHEADBUTT", :"BODYSLAM", :"SLEEPTALK", :"SEEDBOMB", :"REFLECT", :"LIGHTSCREEN", :"GRASSKNOT", :"STOMPINGTANTRUM", :"REST", :"SWORDSDANCE", :"IMPRISON", :"SKILLSWAP", :"IRONHEAD", :"SUBSTITUTE", :"TRICK", :"GIGADRAIN", :"DRAGONPULSE", :"ENERGYBALL", :"PSYCHIC", :"FLAMETHROWER", :"CALMMIND", :"HELPINGHAND", :"GRASSYTERRAIN", :"PSYCHICTERRAIN", :"SLUDGEBOMB", :"EARTHQUAKE", :"GIGAIMPACT", :"OUTRAGE", :"LEAFSTORM", :"TRICKROOM", :"HYPERBEAM", :"SOLARBEAM", :"DRACOMETEOR", :"GRAVITY", :"KNOCKOFF", :"UPROAR", :"GRASSYGLIDE", :"PSYCHUP", :"DOUBLEEDGE", :"BREAKINGSWIPE", :"CURSE", :"DRAGONCHEER", :"PSYCHICNOISE"
end