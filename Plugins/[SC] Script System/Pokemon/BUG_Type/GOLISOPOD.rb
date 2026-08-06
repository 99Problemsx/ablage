#=============================================================================
# Golisopod - BUG Type
#=============================================================================

GameData::Species.define :"GOLISOPOD" do |pkmn|
  pkmn.name "Golisopod"
  pkmn.types :"BUG", :"WATER"
  pkmn.base_stats hp: 75, attack: 125, defense: 140,
                  sp_atk: 40, sp_def: 60, speed: 90
  pkmn.abilities :"EMERGENCYEXIT"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 186
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 2.0
  pkmn.weight 108.0
  pkmn.category "Hard Scale"
  pkmn.pokedex_entry "It battles skillfully with its six arms, but spends most of its time peacefully meditating in caves deep beneath the sea."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Bug", :"Water3"

  pkmn.moves do |m|
    m.at 0, :"FIRSTIMPRESSION"
    m.at 1, :"STRUGGLEBUG"
    m.at 1, :"SANDATTACK"
    m.at 1, :"DEFENSECURL"
    m.at 1, :"SPITE"
    m.at 4, :"ROCKSMASH"
    m.at 8, :"FURYCUTTER"
    m.at 12, :"MUDSHOT"
    m.at 16, :"BUGBITE"
    m.at 20, :"IRONDEFENSE"
    m.at 24, :"SUCKERPUNCH"
    m.at 28, :"SLASH"
    m.at 32, :"RAZORSHELL"
    m.at 36, :"PINMISSILE"
    m.at 40, :"SWORDSDANCE"
    m.at 44, :"LIQUIDATION"
  end
  pkmn.tutor_moves :"AERIALACE", :"ASSURANCE", :"ATTRACT", :"BLIZZARD", :"BRICKBREAK", :"BUGBITE", :"BUGBUZZ", :"BULKUP", :"CAPTIVATE", :"CLOSECOMBAT", :"CONFIDE", :"DARKPULSE", :"DIVE", :"DOUBLETEAM", :"DRILLRUN", :"DUALCHOP", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLING", :"FOCUSBLAST", :"FROSTBREATH", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"IRONDEFENSE", :"IRONHEAD", :"KNOCKOFF", :"LASERFOCUS", :"LEECHLIFE", :"LIQUIDATION", :"MIMIC", :"MUDDYWATER", :"MUDSHOT", :"NATURALGIFT", :"PAINSPLIT", :"PAYBACK", :"PINMISSILE", :"POISONJAB", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"RAZORSHELL", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SCALD", :"SCREECH", :"SECRETPOWER", :"SHADOWCLAW", :"SKITTERSMACK", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SNARL", :"SNORE", :"SPIKES", :"SPITE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TAUNT", :"THROATCHOP", :"TOXIC", :"VENOSHOCK", :"WATERFALL", :"WATERPULSE", :"XSCISSOR", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"GOLISOPOD" do |m|
  m.back_sprite 0, 46
  m.front_sprite -1, 13
end

# Form 1 - Mega Golisopod
GameData::Species.define :"GOLISOPOD_1" do |pkmn|
  pkmn.species :"GOLISOPOD"
  pkmn.form 1
  pkmn.name "Golisopod"
  pkmn.form_name "Mega Golisopod"
  pkmn.types :"BUG", :"STEEL"
  pkmn.base_stats hp: 75, attack: 150, defense: 175,
                  sp_atk: 40, sp_def: 70, speed: 120
  pkmn.abilities :"EMERGENCYEXIT"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 186
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 2.3
  pkmn.weight 148.0
  pkmn.category "Hard Scale"
  pkmn.pokedex_entry "It uses four of its arms to fiercely assail its foes. Once they've been pushed to the brink of defeat, it finishes them off with the arms it kept hidden."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Bug", :"Water3"

  pkmn.moves do |m|
    m.at 0, :"FIRSTIMPRESSION"
    m.at 1, :"STRUGGLEBUG"
    m.at 1, :"SANDATTACK"
    m.at 1, :"DEFENSECURL"
    m.at 1, :"SPITE"
    m.at 4, :"ROCKSMASH"
    m.at 8, :"FURYCUTTER"
    m.at 12, :"MUDSHOT"
    m.at 16, :"BUGBITE"
    m.at 20, :"IRONDEFENSE"
    m.at 24, :"SUCKERPUNCH"
    m.at 28, :"SLASH"
    m.at 32, :"RAZORSHELL"
    m.at 36, :"PINMISSILE"
    m.at 40, :"SWORDSDANCE"
    m.at 44, :"LIQUIDATION"
  end
  pkmn.tutor_moves :"AERIALACE", :"ASSURANCE", :"ATTRACT", :"BLIZZARD", :"BRICKBREAK", :"BUGBITE", :"BUGBUZZ", :"BULKUP", :"CAPTIVATE", :"CLOSECOMBAT", :"CONFIDE", :"DARKPULSE", :"DIVE", :"DOUBLETEAM", :"DRILLRUN", :"DUALCHOP", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLING", :"FOCUSBLAST", :"FROSTBREATH", :"FRUSTRATION", :"GIGAIMPACT", :"HAIL", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"IRONDEFENSE", :"IRONHEAD", :"KNOCKOFF", :"LASERFOCUS", :"LEECHLIFE", :"LIQUIDATION", :"MIMIC", :"MUDDYWATER", :"MUDSHOT", :"NATURALGIFT", :"PAINSPLIT", :"PAYBACK", :"PINMISSILE", :"POISONJAB", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"RAZORSHELL", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SCALD", :"SCREECH", :"SECRETPOWER", :"SHADOWCLAW", :"SKITTERSMACK", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SNARL", :"SNORE", :"SPIKES", :"SPITE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TAUNT", :"THROATCHOP", :"TOXIC", :"VENOSHOCK", :"WATERFALL", :"WATERPULSE", :"XSCISSOR", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"GOLISOPOD_1" do |m|
  m.back_sprite 0, 46
  m.front_sprite -1, 13
end