#=============================================================================
# Croagunk - POISON Type
#=============================================================================

GameData::Species.define :"CROAGUNK" do |pkmn|
  pkmn.name "Croagunk"
  pkmn.types :"POISON", :"FIGHTING"
  pkmn.base_stats hp: 48, attack: 61, defense: 40,
                  sp_atk: 50, sp_def: 61, speed: 40
  pkmn.abilities :"ANTICIPATION", :"DRYSKIN"
  pkmn.hidden_abilities :"POISONTOUCH"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 60
  pkmn.catch_rate 140
  pkmn.happiness 100
  pkmn.hatch_steps 2570
  pkmn.height 0.7
  pkmn.weight 23.0
  pkmn.category "Toxic Mouth"
  pkmn.pokedex_entry "Its cheeks hold poison sacs. It tries to catch foes off guard to jab them with toxic fingers."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"ASTONISH"
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
    m.at 38, :"NASTYPLOT"
    m.at 43, :"POISONJAB"
    m.at 45, :"SLUDGEBOMB"
    m.at 50, :"FLATTER"
  end
  pkmn.tutor_moves :"ATTRACT", :"BOUNCE", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"DARKPULSE", :"DIG", :"DOUBLETEAM", :"DRAINPUNCH", :"DUALCHOP", :"EARTHQUAKE", :"EMBARGO", :"ENDURE", :"FACADE", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FOULPLAY", :"FRUSTRATION", :"FURYCUTTER", :"GUNKSHOT", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"ICEPUNCH", :"ICYWIND", :"KNOCKOFF", :"LOWKICK", :"LOWSWEEP", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SNATCH", :"SNORE", :"SPITE", :"STRENGTH", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SUPERFANG", :"SWAGGER", :"TAUNT", :"THIEF", :"THUNDERPUNCH", :"TORMENT", :"TOXIC", :"VACUUMWAVE", :"VENOSHOCK", :"WORKUP", :"XSCISSOR"
  pkmn.egg_moves :"ACUPRESSURE", :"BULLETPUNCH", :"COUNTER", :"CROSSCHOP", :"DRAINPUNCH", :"DYNAMICPUNCH", :"FAKEOUT", :"FEINT", :"HEADBUTT", :"MEDITATE", :"MEFIRST", :"SMELLINGSALTS", :"VACUUMWAVE", :"WAKEUPSLAP"
end

GameData::SpeciesMetrics.define :"CROAGUNK" do |m|
  m.back_sprite -1, 0
  m.front_sprite -3, 20
  m.shadow_sprite 0, 0, 2
end