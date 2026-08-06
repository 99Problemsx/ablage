#=============================================================================
# Grubbin - BUG Type
#=============================================================================

GameData::Species.define :"GRUBBIN" do |pkmn|
  pkmn.name "Grubbin"
  pkmn.types :"BUG"
  pkmn.base_stats hp: 47, attack: 62, defense: 45,
                  sp_atk: 46, sp_def: 55, speed: 45
  pkmn.abilities :"SWARM"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 60
  pkmn.catch_rate 255
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 0.4
  pkmn.weight 4.4
  pkmn.category "Larva"
  pkmn.pokedex_entry "It spits a sticky thread to stop opponents in their tracks, and then it grabs them in its sharp, sturdy mandibles to take them down."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"VISEGRIP"
    m.at 1, :"MUDSLAP"
    m.at 5, :"STRINGSHOT"
    m.at 10, :"BUGBITE"
    m.at 15, :"BITE"
    m.at 21, :"SPARK"
    m.at 25, :"STICKYWEB"
    m.at 30, :"XSCISSOR"
    m.at 35, :"CRUNCH"
    m.at 40, :"DIG"
  end
  pkmn.tutor_moves :"ACROBATICS", :"ATTRACT", :"BUGBITE", :"CAPTIVATE", :"CHARGEBEAM", :"CONFIDE", :"CRUNCH", :"DIG", :"DOUBLETEAM", :"ELECTROWEB", :"ENDURE", :"FACADE", :"FRUSTRATION", :"HIDDENPOWER", :"LIGHTSCREEN", :"MAGNETRISE", :"MIMIC", :"MUDSHOT", :"NATURALGIFT", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"RISINGVOLTAGE", :"ROUND", :"SCREECH", :"SECRETPOWER", :"SHOCKWAVE", :"SKITTERSMACK", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"VOLTSWITCH", :"WILDCHARGE", :"XSCISSOR", :"TERABLAST"
  pkmn.egg_moves :"DISCHARGE", :"HARDEN"
end

GameData::SpeciesMetrics.define :"GRUBBIN" do |m|
  m.back_sprite 3, 55
  m.front_sprite -4, 39
end