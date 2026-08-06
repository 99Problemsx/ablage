#=============================================================================
# SHAYMIN_1 - NORMAL Type
#=============================================================================

GameData::Species.define :"SHAYMIN_1" do |pkmn|

  pkmn.moves do |m|
    m.at 1, :"GROWTH"
    m.at 10, :"MAGICALLEAF"
    m.at 19, :"LEECHSEED"
    m.at 28, :"QUICKATTACK"
    m.at 37, :"SWEETSCENT"
    m.at 46, :"PLAYROUGH"
    m.at 55, :"WORRYSEED"
    m.at 64, :"AIRSLASH"
    m.at 73, :"ENERGYBALL"
    m.at 82, :"SWEETKISS"
    m.at 91, :"LEAFSTORM"
    m.at 100, :"SEEDFLARE"
  end
  pkmn.tutor_moves :"TAKEDOWN", :"PROTECT", :"DISARMINGVOICE", :"TRAILBLAZE", :"FACADE", :"SWIFT", :"MAGICALLEAF", :"AIRCUTTER", :"ENDURE", :"SUNNYDAY", :"BULLETSEED", :"ZENHEADBUTT", :"AIRSLASH", :"SLEEPTALK", :"SEEDBOMB", :"DAZZLINGGLEAM", :"GRASSKNOT", :"REST", :"SWORDSDANCE", :"SUBSTITUTE", :"GIGADRAIN", :"TAILWIND", :"ENERGYBALL", :"PSYCHIC", :"PLAYROUGH", :"BATONPASS", :"EARTHPOWER", :"GRASSYTERRAIN", :"GIGAIMPACT", :"LEAFSTORM", :"HYPERBEAM", :"SOLARBEAM", :"GRASSYGLIDE", :"PSYCHUP", :"DOUBLEEDGE", :"ENDEAVOR", :"PETALBLIZZARD"
end