#=============================================================================
# Toxicroak - POISON Type
#=============================================================================

GameData::Species.define :"TOXICROAK" do |pkmn|
  pkmn.name "Toxicroak"
  pkmn.types :"POISON", :"FIGHTING"
  pkmn.base_stats hp: 83, attack: 106, defense: 65,
                  sp_atk: 85, sp_def: 86, speed: 65
  pkmn.abilities :"ANTICIPATION", :"DRYSKIN"
  pkmn.hidden_abilities :"POISONTOUCH"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 172
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.3
  pkmn.weight 44.4
  pkmn.category "Toxic Mouth"
  pkmn.pokedex_entry "Its knuckle claws secrete a toxin so vile that even a scratch could prove fatal."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"ASTONISH"
    m.at 1, :"MUDSLAP"
    m.at 1, :"POISONSTING"
    m.at 3, :"MUDSLAP"
    m.at 8, :"POISONSTING"
    m.at 10, :"TAUNT"
    m.at 15, :"PURSUIT"
    m.at 17, :"FEINTATTACK"
    m.at 22, :"REVENGE"
    m.at 24, :"SWAGGER"
    m.at 29, :"MUDBOMB"
    m.at 31, :"SUCKERPUNCH"
    m.at 36, :"VENOSHOCK"
    m.at 41, :"NASTYPLOT"
    m.at 49, :"POISONJAB"
    m.at 54, :"SLUDGEBOMB"
    m.at 62, :"FLATTER"
  end
  pkmn.tutor_moves :"ATTRACT", :"BOUNCE", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"CUT", :"DARKPULSE", :"DIG", :"DOUBLETEAM", :"DRAINPUNCH", :"DUALCHOP", :"EARTHQUAKE", :"EMBARGO", :"ENDURE", :"FACADE", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FOULPLAY", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"GUNKSHOT", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"ICEPUNCH", :"ICYWIND", :"KNOCKOFF", :"LOWKICK", :"LOWSWEEP", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SNATCH", :"SNORE", :"SPITE", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SUPERFANG", :"SWAGGER", :"SWORDSDANCE", :"TAUNT", :"THIEF", :"THUNDERPUNCH", :"TORMENT", :"TOXIC", :"VACUUMWAVE", :"VENOSHOCK", :"WORKUP", :"XSCISSOR"
end

GameData::SpeciesMetrics.define :"TOXICROAK" do |m|
  m.back_sprite 0, 0
  m.front_sprite -1, 13
  m.shadow_sprite 0, 0, 2
end