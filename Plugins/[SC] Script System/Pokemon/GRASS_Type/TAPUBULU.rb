#=============================================================================
# Tapu Bulu - GRASS Type
#=============================================================================

GameData::Species.define :"TAPUBULU" do |pkmn|
  pkmn.name "Tapu Bulu"
  pkmn.types :"GRASS", :"FAIRY"
  pkmn.base_stats hp: 70, attack: 130, defense: 115,
                  sp_atk: 75, sp_def: 85, speed: 95
  pkmn.abilities :"GRASSYSURGE"
  pkmn.hidden_abilities :"TELEPATHY"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Red"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 285
  pkmn.catch_rate 3
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 1.9
  pkmn.weight 45.5
  pkmn.category "Land Spirit"
  pkmn.pokedex_entry "It pulls large trees up by the roots and swings them around. It causes vegetation to grow, and then it absorbs energy from the growth."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"LEAFAGE"
    m.at 1, :"ROCKSMASH"
    m.at 5, :"WITHDRAW"
    m.at 10, :"DISABLE"
    m.at 15, :"LEECHSEED"
    m.at 20, :"MEGADRAIN"
    m.at 25, :"WHIRLWIND"
    m.at 30, :"HORNATTACK"
    m.at 35, :"SCARYFACE"
    m.at 40, :"HORNLEECH"
    m.at 45, :"ZENHEADBUTT"
    m.at 50, :"MEANLOOK"
    m.at 55, :"NATURESMADNESS"
    m.at 60, :"WOODHAMMER"
    m.at 65, :"MEGAHORN"
    m.at 70, :"SKULLBASH"
    m.at 75, :"GRASSYTERRAIN"
  end
  pkmn.tutor_moves :"BRICKBREAK", :"BRUTALSWING", :"BULKUP", :"BULLETSEED", :"CALMMIND", :"CLOSECOMBAT", :"CONFIDE", :"DARKESTLARIAT", :"DAZZLINGGLEAM", :"DUALCHOP", :"ECHOEDVOICE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FALSESWIPE", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSYTERRAIN", :"GUARDSWAP", :"HIDDENPOWER", :"HIGHHORSEPOWER", :"HYPERBEAM", :"IRONDEFENSE", :"LIGHTSCREEN", :"MEGAHORN", :"MEGAPUNCH", :"MIMIC", :"NATURALGIFT", :"NATUREPOWER", :"PAYBACK", :"POWERSWAP", :"PROTECT", :"PSYCHUP", :"REFLECT", :"REST", :"RETURN", :"REVENGE", :"ROAR", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SAFEGUARD", :"SCARYFACE", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SMARTSTRIKE", :"SNARL", :"SNORE", :"SOLARBEAM", :"STONEEDGE", :"STOREDPOWER", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"TAUNT", :"TELEKINESIS", :"TORMENT", :"TOXIC", :"WORKUP", :"WORRYSEED", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"TAPUBULU" do |m|
  m.back_sprite -2, 36
  m.front_sprite 12, 0
  m.shadow_sprite 0, 0, -1
end