#=============================================================================
# Charjabug - BUG Type
#=============================================================================

GameData::Species.define :"CHARJABUG" do |pkmn|
  pkmn.name "Charjabug"
  pkmn.types :"BUG", :"ELECTRIC"
  pkmn.base_stats hp: 57, attack: 82, defense: 95,
                  sp_atk: 36, sp_def: 55, speed: 75
  pkmn.abilities :"BATTERY"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 140
  pkmn.catch_rate 120
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 0.5
  pkmn.weight 10.5
  pkmn.category "Battery"
  pkmn.pokedex_entry "It buries itself in fallen leaves and barely moves, munching away on humus. If you accidentally step on one, you'll get a shock!"
  pkmn.evs defense: 2
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 0, :"CHARGE"
    m.at 1, :"VISEGRIP"
    m.at 1, :"MUDSLAP"
    m.at 1, :"STRINGSHOT"
    m.at 1, :"BUGBITE"
    m.at 15, :"BITE"
    m.at 23, :"SPARK"
    m.at 29, :"STICKYWEB"
    m.at 36, :"XSCISSOR"
    m.at 43, :"CRUNCH"
    m.at 50, :"DIG"
    m.at 57, :"IRONDEFENSE"
    m.at 64, :"DISCHARGE"
  end
  pkmn.tutor_moves :"ACROBATICS", :"ATTRACT", :"BUGBITE", :"CAPTIVATE", :"CHARGEBEAM", :"CONFIDE", :"CRUNCH", :"DIG", :"DOUBLETEAM", :"EERIEIMPULSE", :"ELECTROBALL", :"ELECTROWEB", :"ENDURE", :"FACADE", :"FRUSTRATION", :"HIDDENPOWER", :"IRONDEFENSE", :"LIGHTSCREEN", :"MAGNETRISE", :"MIMIC", :"MUDSHOT", :"NATURALGIFT", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"RISINGVOLTAGE", :"ROUND", :"SCREECH", :"SECRETPOWER", :"SHOCKWAVE", :"SKITTERSMACK", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"VOLTSWITCH", :"WILDCHARGE", :"XSCISSOR", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"CHARJABUG" do |m|
  m.back_sprite 0, 57
  m.front_sprite 2, 38
end