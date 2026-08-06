#=============================================================================
# Passimian - FIGHTING Type
#=============================================================================

GameData::Species.define :"PASSIMIAN" do |pkmn|
  pkmn.name "Passimian"
  pkmn.types :"FIGHTING"
  pkmn.base_stats hp: 100, attack: 120, defense: 90,
                  sp_atk: 80, sp_def: 40, speed: 60
  pkmn.abilities :"RECEIVER"
  pkmn.hidden_abilities :"DEFIANT"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"White"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 172
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 2.0
  pkmn.weight 82.8
  pkmn.category "Teamwork"
  pkmn.pokedex_entry "Berries are its weapons as well as the staple of its diet. The one that can throw a berry the farthest is the boss of the troop."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"LEER"
    m.at 5, :"ROCKSMASH"
    m.at 10, :"FOCUSENERGY"
    m.at 15, :"BEATUP"
    m.at 20, :"SCARYFACE"
    m.at 25, :"TAKEDOWN"
    m.at 30, :"FLING"
    m.at 35, :"BULKUP"
    m.at 40, :"THRASH"
    m.at 45, :"DOUBLEEDGE"
    m.at 50, :"CLOSECOMBAT"
    m.at 55, :"REVERSAL"
    m.at 60, :"GIGAIMPACT"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"ASSURANCE", :"ATTRACT", :"BEATUP", :"BLOCK", :"BRICKBREAK", :"BRUTALSWING", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"CLOSECOMBAT", :"COACHING", :"CONFIDE", :"DOUBLETEAM", :"DRAINPUNCH", :"EARTHQUAKE", :"ELECTROWEB", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLING", :"FOCUSBLAST", :"FOCUSENERGY", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GUNKSHOT", :"GYROBALL", :"HIDDENPOWER", :"HYPERBEAM", :"IRONHEAD", :"IRONTAIL", :"KNOCKOFF", :"LASERFOCUS", :"LOWSWEEP", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"REVENGE", :"REVERSAL", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SCARYFACE", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWBALL", :"SHOCKWAVE", :"SLEEPTALK", :"SMACKDOWN", :"SNATCH", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"TAUNT", :"THIEF", :"TOXIC", :"UPROAR", :"UTURN", :"WORKUP", :"TERABLAST"
  pkmn.egg_moves :"COUNTER", :"FEINT", :"KNOCKOFF", :"QUICKATTACK", :"QUICKGUARD", :"SEISMICTOSS", :"VITALTHROW"
end

GameData::SpeciesMetrics.define :"PASSIMIAN" do |m|
  m.back_sprite -1, 41
  m.front_sprite 3, 19
end