#=============================================================================
# Ambipom - NORMAL Type
#=============================================================================

GameData::Species.define :"AMBIPOM" do |pkmn|
  pkmn.name "Ambipom"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 75, attack: 100, defense: 66,
                  sp_atk: 115, sp_def: 60, speed: 66
  pkmn.abilities :"TECHNICIAN", :"PICKUP"
  pkmn.hidden_abilities :"SKILLLINK"
  pkmn.flags :"HasGenderedSprites"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Purple"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 169
  pkmn.catch_rate 45
  pkmn.happiness 100
  pkmn.hatch_steps 5140
  pkmn.height 1.2
  pkmn.weight 20.3
  pkmn.category "Long Tail"
  pkmn.pokedex_entry "To eat, it deftly shucks nuts with its two tails. It rarely uses its arms now."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"TAILWHIP"
    m.at 1, :"SANDATTACK"
    m.at 1, :"ASTONISH"
    m.at 4, :"SANDATTACK"
    m.at 8, :"ASTONISH"
    m.at 11, :"BATONPASS"
    m.at 15, :"TICKLE"
    m.at 18, :"FURYSWIPES"
    m.at 22, :"SWIFT"
    m.at 25, :"SCREECH"
    m.at 29, :"AGILITY"
    m.at 32, :"DOUBLEHIT"
    m.at 36, :"FLING"
    m.at 39, :"NASTYPLOT"
    m.at 43, :"LASTRESORT"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"ATTRACT", :"BODYSLAM", :"BOUNCE", :"BRICKBREAK", :"CAPTIVATE", :"COUNTER", :"COVET", :"CUT", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"DYNAMICPUNCH", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLING", :"FOCUSPUNCH", :"FOULPLAY", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"GRASSKNOT", :"GUNKSHOT", :"HEADBUTT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"ICEPUNCH", :"IRONTAIL", :"KNOCKOFF", :"LASTRESORT", :"LOWKICK", :"LOWSWEEP", :"MEGAKICK", :"MEGAPUNCH", :"METRONOME", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKSMASH", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SEISMICTOSS", :"SHADOWBALL", :"SHADOWCLAW", :"SHOCKWAVE", :"SLEEPTALK", :"SNATCH", :"SNORE", :"SOLARBEAM", :"SPITE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAUNT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"UPROAR", :"UTURN", :"WATERPULSE", :"WORKUP"
end

GameData::SpeciesMetrics.define :"AMBIPOM" do |m|
  m.back_sprite 8, 0
  m.front_sprite -1, 9
  m.shadow_sprite 0, 0, 1
end