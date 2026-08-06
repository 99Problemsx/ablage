#=============================================================================
# Vikavolt - BUG Type
#=============================================================================

GameData::Species.define :"VIKAVOLT" do |pkmn|
  pkmn.name "Vikavolt"
  pkmn.types :"BUG", :"ELECTRIC"
  pkmn.base_stats hp: 77, attack: 70, defense: 90,
                  sp_atk: 43, sp_def: 145, speed: 75
  pkmn.abilities :"LEVITATE"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 250
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 1.5
  pkmn.weight 45.0
  pkmn.category "Stag Beetle"
  pkmn.pokedex_entry "It zips around, on sharp lookout for an opening. It concentrates electrical energy within its large jaws and uses it to zap its enemies."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 0, :"THUNDERBOLT"
    m.at 1, :"CHARGE"
    m.at 1, :"XSCISSOR"
    m.at 1, :"CRUNCH"
    m.at 1, :"DIG"
    m.at 1, :"IRONDEFENSE"
    m.at 1, :"DISCHARGE"
    m.at 1, :"VISEGRIP"
    m.at 1, :"MUDSLAP"
    m.at 1, :"STRINGSHOT"
    m.at 1, :"BUGBITE"
    m.at 15, :"BITE"
    m.at 23, :"SPARK"
    m.at 29, :"STICKYWEB"
    m.at 36, :"BUGBUZZ"
    m.at 43, :"GUILLOTINE"
    m.at 50, :"FLY"
    m.at 57, :"AGILITY"
    m.at 64, :"ZAPCANNON"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AGILITY", :"AIRSLASH", :"ATTRACT", :"BUGBITE", :"BUGBUZZ", :"CAPTIVATE", :"CHARGEBEAM", :"CONFIDE", :"CRUNCH", :"DIG", :"DOUBLETEAM", :"DUALWINGBEAT", :"EERIEIMPULSE", :"ELECTROBALL", :"ELECTROWEB", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASHCANNON", :"FLY", :"FRUSTRATION", :"GIGAIMPACT", :"HIDDENPOWER", :"HYPERBEAM", :"IRONDEFENSE", :"LASERFOCUS", :"LIGHTSCREEN", :"MAGNETRISE", :"MIMIC", :"MUDSHOT", :"NATURALGIFT", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"RISINGVOLTAGE", :"ROOST", :"ROUND", :"SCREECH", :"SECRETPOWER", :"SHOCKWAVE", :"SIGNALBEAM", :"SKITTERSMACK", :"SKYDROP", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SWAGGER", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"VOLTSWITCH", :"WILDCHARGE", :"XSCISSOR", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"VIKAVOLT" do |m|
  m.back_sprite 5, 37
  m.front_sprite 0, 12
  m.shadow_sprite 0, 0, -1
end