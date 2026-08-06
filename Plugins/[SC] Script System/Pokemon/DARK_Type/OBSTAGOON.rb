#=============================================================================
# Obstagoon - DARK Type
#=============================================================================

GameData::Species.define :"OBSTAGOON" do |pkmn|
  pkmn.name "Obstagoon"
  pkmn.types :"DARK", :"NORMAL"
  pkmn.base_stats hp: 93, attack: 90, defense: 101,
                  sp_atk: 95, sp_def: 60, speed: 81
  pkmn.abilities :"RECKLESS", :"GUTS"
  pkmn.hidden_abilities :"DEFIANT"
  pkmn.flags :"DefaultForm_1", :"InheritFormWithEverStone"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 260
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 1.6
  pkmn.weight 46.0
  pkmn.category "Blocking"
  pkmn.pokedex_entry "It evolved after experiencing numerous fights. While crossing its arms, it lets out a shout that would make any opponent flinch."
  pkmn.evs defense: 3
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 0, :"OBSTRUCT"
    m.at 1, :"CROSSCHOP"
    m.at 1, :"SUBMISSION"
    m.at 1, :"NIGHTSLASH"
    m.at 1, :"SWITCHEROO"
    m.at 1, :"PINMISSILE"
    m.at 1, :"BABYDOLLEYES"
    m.at 1, :"TACKLE"
    m.at 1, :"LEER"
    m.at 1, :"SANDATTACK"
    m.at 1, :"LICK"
    m.at 9, :"SNARL"
    m.at 12, :"HEADBUTT"
    m.at 15, :"HONECLAWS"
    m.at 18, :"FURYSWIPES"
    m.at 23, :"REST"
    m.at 28, :"TAKEDOWN"
    m.at 35, :"SCARYFACE"
    m.at 42, :"COUNTER"
    m.at 49, :"TAUNT"
    m.at 56, :"DOUBLEEDGE"
  end
  pkmn.tutor_moves :"ASSURANCE", :"ATTRACT", :"BLIZZARD", :"BODYPRESS", :"BODYSLAM", :"BRICKBREAK", :"BULKUP", :"CAPTIVATE", :"CLOSECOMBAT", :"CONFIDE", :"CROSSPOISON", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FAKETEARS", :"FIREPUNCH", :"FLING", :"FOCUSENERGY", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GUNKSHOT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"ICEPUNCH", :"ICYWIND", :"IRONDEFENSE", :"IRONTAIL", :"LASHOUT", :"LOWKICK", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"MUDSHOT", :"NATURALGIFT", :"PAYBACK", :"PINMISSILE", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"REVENGE", :"REVERSAL", :"ROUND", :"SCARYFACE", :"SCREECH", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWBALL", :"SHADOWCLAW", :"SLEEPTALK", :"SNARL", :"SNORE", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUNNYDAY", :"SURF", :"SWAGGER", :"SWIFT", :"TAUNT", :"THIEF", :"THROATCHOP", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TRICK", :"WHIRLPOOL", :"WORKUP", :"XSCISSOR", :"TERABLAST"
  pkmn.egg_moves :"KNOCKOFF", :"PARTINGSHOT", :"QUICKGUARD"
end

GameData::SpeciesMetrics.define :"OBSTAGOON" do |m|
  m.back_sprite 1, 39
  m.front_sprite -5, 4
end