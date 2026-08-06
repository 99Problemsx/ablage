#=============================================================================
# Sneasel - DARK Type
#=============================================================================

GameData::Species.define :"SNEASEL" do |pkmn|
  pkmn.name "Sneasel"
  pkmn.types :"DARK", :"ICE"
  pkmn.base_stats hp: 55, attack: 95, defense: 55,
                  sp_atk: 115, sp_def: 35, speed: 75
  pkmn.abilities :"INNERFOCUS", :"KEENEYE"
  pkmn.hidden_abilities :"PICKPOCKET"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Black"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 86
  pkmn.catch_rate 60
  pkmn.happiness 35
  pkmn.hatch_steps 5140
  pkmn.height 0.9
  pkmn.weight 28.0
  pkmn.category "Sharp Claw"
  pkmn.pokedex_entry "A Sneasel scales trees by punching its hooked claws into the bark. It seeks out unguarded nests and steals eggs for food while the parents are away."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"LEER"
    m.at 1, :"TAUNT"
    m.at 8, :"QUICKATTACK"
    m.at 10, :"FEINTATTACK"
    m.at 14, :"ICYWIND"
    m.at 16, :"FURYSWIPES"
    m.at 20, :"AGILITY"
    m.at 22, :"METALCLAW"
    m.at 25, :"HONECLAWS"
    m.at 28, :"BEATUP"
    m.at 32, :"SCREECH"
    m.at 35, :"SLASH"
    m.at 40, :"SNATCH"
    m.at 44, :"PUNISHMENT"
    m.at 47, :"ICESHARD"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BRICKBREAK", :"CALMMIND", :"CAPTIVATE", :"COUNTER", :"CUT", :"DARKPULSE", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"DYNAMICPUNCH", :"EMBARGO", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLING", :"FOCUSPUNCH", :"FOULPLAY", :"FRUSTRATION", :"FURYCUTTER", :"HAIL", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"IRONTAIL", :"KNOCKOFF", :"LOWKICK", :"LOWSWEEP", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REFLECT", :"REST", :"RETALIATE", :"RETURN", :"ROCKSMASH", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHADOWCLAW", :"SLEEPTALK", :"SNARL", :"SNATCH", :"SNORE", :"SPITE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SURF", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TAUNT", :"THIEF", :"TORMENT", :"TOXIC", :"WHIRLPOOL", :"XSCISSOR"
  pkmn.egg_moves :"ASSIST", :"AVALANCHE", :"BITE", :"COUNTER", :"CRUSHCLAW", :"DOUBLEHIT", :"FAKEOUT", :"FEINT", :"FORESIGHT", :"ICEPUNCH", :"ICESHARD", :"PUNISHMENT", :"PURSUIT", :"SPITE"
end

GameData::SpeciesMetrics.define :"SNEASEL" do |m|
  m.back_sprite -3, 0
  m.front_sprite 0, 18
  m.shadow_sprite 0, 0, 2
end

# Form 1 - Hisuian
GameData::Species.define :"SNEASEL_1" do |pkmn|
  pkmn.species :"SNEASEL"
  pkmn.form 1
  pkmn.name "Sneasel"
  pkmn.form_name "Hisuian"
  pkmn.types :"FIGHTING", :"POISON"
  pkmn.base_stats hp: 55, attack: 95, defense: 55,
                  sp_atk: 115, sp_def: 35, speed: 75
  pkmn.abilities :"INNERFOCUS", :"KEENEYE"
  pkmn.hidden_abilities :"PICKPOCKET"
  pkmn.flags :"InheritFormWithEverStone"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Gray"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 86
  pkmn.catch_rate 60
  pkmn.happiness 35
  pkmn.hatch_steps 5140
  pkmn.height 0.9
  pkmn.weight 27.0
  pkmn.category "Sharp Claw"
  pkmn.pokedex_entry "Its sturdy, curved claws are ideal for traversing precipitous cliffs. From the tips of these claws drips a venom that infiltrates the nerves of any prey caught in Sneasel's grasp."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"LEER"
    m.at 1, :"ROCKSMASH"
    m.at 6, :"TAUNT"
    m.at 12, :"QUICKATTACK"
    m.at 18, :"METALCLAW"
    m.at 24, :"POISONJAB"
    m.at 30, :"BRICKBREAK"
    m.at 36, :"HONECLAWS"
    m.at 42, :"SLASH"
    m.at 48, :"AGILITY"
    m.at 54, :"SCREECH"
    m.at 60, :"CLOSECOMBAT"
  end
  pkmn.tutor_moves :"ACIDSPRAY", :"AERIALACE", :"AGILITY", :"BRICKBREAK", :"BULKUP", :"CALMMIND", :"CLOSECOMBAT", :"COACHING", :"DIG", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"GIGAIMPACT", :"GRASSKNOT", :"GUNKSHOT", :"LASHOUT", :"LOWKICK", :"LOWSWEEP", :"METALCLAW", :"NASTYPLOT", :"POISONJAB", :"POISONTAIL", :"PROTECT", :"RAINDANCE", :"REST", :"REVERSAL", :"SHADOWBALL", :"SHADOWCLAW", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SPITE", :"SUBSTITUTE", :"SUNNYDAY", :"SWIFT", :"SWORDSDANCE", :"TAKEDOWN", :"TAUNT", :"THIEF", :"THROATCHOP", :"TOXIC", :"TOXICSPIKES", :"TRAILBLAZE", :"VACUUMWAVE", :"VENOSHOCK", :"XSCISSOR"
  pkmn.egg_moves :"COUNTER", :"DOUBLEHIT", :"FAKEOUT", :"FEINT", :"NIGHTSLASH", :"QUICKGUARD", :"SWITCHEROO"
end

GameData::SpeciesMetrics.define :"SNEASEL_1" do |m|
  m.back_sprite 2, 37
  m.front_sprite 4, 27
  m.shadow_sprite 0, 0, 2
end