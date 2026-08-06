#=============================================================================
# Iron Valiant - FAIRY Type
#=============================================================================

GameData::Species.define :"IRONVALIANT" do |pkmn|
  pkmn.name "Iron Valiant"
  pkmn.types :"FAIRY", :"FIGHTING"
  pkmn.base_stats hp: 74, attack: 130, defense: 90,
                  sp_atk: 116, sp_def: 120, speed: 60
  pkmn.abilities :"QUARKDRIVE"
  pkmn.flags :"Paradox"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"White"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 295
  pkmn.catch_rate 10
  pkmn.happiness 0
  pkmn.hatch_steps 12800
  pkmn.height 1.4
  pkmn.weight 35.0
  pkmn.category "Paradox"
  pkmn.pokedex_entry "It has some similarities to a mad scientist’s invention covered in a paranormal magazine."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at -1, :"ELECTRICTERRAIN"
    m.at 1, :"DOUBLETEAM"
    m.at 1, :"FURYCUTTER"
    m.at 1, :"SHADOWSNEAK"
    m.at 1, :"DISABLE"
    m.at 7, :"HYPNOSIS"
    m.at 14, :"FEINT"
    m.at 21, :"FUTURESIGHT"
    m.at 28, :"DAZZLINGGLEAM"
    m.at 35, :"PSYCHOCUT"
    m.at 42, :"NIGHTSLASH"
    m.at 49, :"LEAFBLADE"
    m.at 56, :"MOONBLAST"
    m.at 63, :"CLOSECOMBAT"
    m.at 70, :"KNOCKOFF"
    m.at 77, :"DESTINYBOND"
    m.at 84, :"WIDEGUARD"
    m.at 84, :"QUICKGUARD"
    m.at 91, :"SPIRITBREAK"
  end
  pkmn.tutor_moves :"AERIALACE", :"AGILITY", :"AURASPHERE", :"BRICKBREAK", :"CALMMIND", :"CHARGEBEAM", :"CLOSECOMBAT", :"COACHING", :"CONFUSERAY", :"DAZZLINGGLEAM", :"DRAINPUNCH", :"ELECTRICTERRAIN", :"ENCORE", :"ENDURE", :"ENERGYBALL", :"EXPANDINGFORCE", :"FALSESWIPE", :"FIREPUNCH", :"FLING", :"FOCUSBLAST", :"FUTURESIGHT", :"GIGAIMPACT", :"GRASSKNOT", :"HELPINGHAND", :"HEX", :"HYPERBEAM", :"HYPERVOICE", :"ICEPUNCH", :"ICYWIND", :"IMPRISON", :"KNOCKOFF", :"LIGHTSCREEN", :"LIQUIDATION", :"LOWKICK", :"MAGICALLEAF", :"METRONOME", :"MISTYTERRAIN", :"POISONJAB", :"PROTECT", :"PSYBEAM", :"PSYCHIC", :"PSYCHICTERRAIN", :"PSYCHUP", :"PSYSHOCK", :"REFLECT", :"REST", :"REVERSAL", :"SHADOWBALL", :"SHADOWCLAW", :"SKILLSWAP", :"SLEEPTALK", :"STOREDPOWER", :"SUBSTITUTE", :"SWIFT", :"SWORDSDANCE", :"TAUNT", :"THROATCHOP", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TRICK", :"TRICKROOM", :"VACUUMWAVE", :"XSCISSOR", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"IRONVALIANT" do |m|
  m.back_sprite 0, 37
  m.front_sprite 2, 11
  m.shadow_sprite 0, 0, 2
end