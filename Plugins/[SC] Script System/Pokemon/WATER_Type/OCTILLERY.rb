#=============================================================================
# Octillery - WATER Type
#=============================================================================

GameData::Species.define :"OCTILLERY" do |pkmn|
  pkmn.name "Octillery"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 75, attack: 105, defense: 75,
                  sp_atk: 45, sp_def: 105, speed: 75
  pkmn.abilities :"SUCTIONCUPS", :"SNIPER"
  pkmn.hidden_abilities :"MOODY"
  pkmn.flags :"HasGenderedSprites"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"Multiped"
  pkmn.base_exp 168
  pkmn.catch_rate 75
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.9
  pkmn.weight 28.5
  pkmn.category "Jet"
  pkmn.pokedex_entry "It ensnares its foe with its suction- cupped tentacles before delivering the finishing blow. If the foe turns out to be too strong, it spews ink to escape."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Water1", :"Water2"

  pkmn.moves do |m|
    m.at 1, :"GUNKSHOT"
    m.at 1, :"ROCKBLAST"
    m.at 1, :"WATERGUN"
    m.at 1, :"CONSTRICT"
    m.at 1, :"PSYBEAM"
    m.at 1, :"AURORABEAM"
    m.at 6, :"CONSTRICT"
    m.at 10, :"PSYBEAM"
    m.at 14, :"AURORABEAM"
    m.at 18, :"BUBBLEBEAM"
    m.at 22, :"FOCUSENERGY"
    m.at 25, :"OCTAZOOKA"
    m.at 28, :"WRINGOUT"
    m.at 34, :"SIGNALBEAM"
    m.at 40, :"ICEBEAM"
    m.at 46, :"BULLETSEED"
    m.at 52, :"HYDROPUMP"
    m.at 58, :"HYPERBEAM"
    m.at 64, :"SOAK"
  end
  pkmn.tutor_moves :"ATTRACT", :"BIND", :"BLIZZARD", :"BOUNCE", :"BRINE", :"BULLETSEED", :"CAPTIVATE", :"CHARGEBEAM", :"DEFENSECURL", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FLASHCANNON", :"FRUSTRATION", :"GIGAIMPACT", :"GUNKSHOT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"INCINERATE", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SCALD", :"SECRETPOWER", :"SEEDBOMB", :"SEISMICTOSS", :"SIGNALBEAM", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SMACKDOWN", :"SNORE", :"STRINGSHOT", :"SUBSTITUTE", :"SUNNYDAY", :"SURF", :"SWAGGER", :"SWIFT", :"THIEF", :"THUNDERWAVE", :"TOXIC", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"OCTILLERY" do |m|
  m.back_sprite 4, 0
  m.front_sprite 0, 20
  m.shadow_sprite 0, 0, 3
end