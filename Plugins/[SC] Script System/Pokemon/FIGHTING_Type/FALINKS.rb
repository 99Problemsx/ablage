#=============================================================================
# Falinks - FIGHTING Type
#=============================================================================

GameData::Species.define :"FALINKS" do |pkmn|
  pkmn.name "Falinks"
  pkmn.types :"FIGHTING"
  pkmn.base_stats hp: 65, attack: 100, defense: 100,
                  sp_atk: 75, sp_def: 70, speed: 60
  pkmn.abilities :"BATTLEARMOR"
  pkmn.hidden_abilities :"DEFIANT"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"MultiBody"
  pkmn.base_exp 165
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 6400
  pkmn.height 3.0
  pkmn.weight 62.0
  pkmn.category "Formation"
  pkmn.pokedex_entry "The six of them work together as one Pokémon. Teamwork is also their battle strategy, and they constantly change their formation as they fight."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Fairy", :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"PROTECT"
    m.at 5, :"ROCKSMASH"
    m.at 10, :"FOCUSENERGY"
    m.at 15, :"HEADBUTT"
    m.at 20, :"BULKUP"
    m.at 25, :"ENDURE"
    m.at 30, :"REVERSAL"
    m.at 35, :"FIRSTIMPRESSION"
    m.at 40, :"NORETREAT"
    m.at 45, :"IRONDEFENSE"
    m.at 50, :"CLOSECOMBAT"
    m.at 55, :"MEGAHORN"
    m.at 60, :"COUNTER"
  end
  pkmn.tutor_moves :"AGILITY", :"ASSURANCE", :"BEATUP", :"BRICKBREAK", :"BULKUP", :"CLOSECOMBAT", :"COACHING", :"CONFIDE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FOCUSBLAST", :"FOCUSENERGY", :"FRUSTRATION", :"GIGAIMPACT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"IRONDEFENSE", :"IRONHEAD", :"MEGAHORN", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"REST", :"RETALIATE", :"RETURN", :"REVENGE", :"REVERSAL", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SCREECH", :"SECRETPOWER", :"SLEEPTALK", :"SMARTSTRIKE", :"SNORE", :"SUBSTITUTE", :"SUPERPOWER", :"SWAGGER", :"SWORDSDANCE", :"THROATCHOP", :"TOXIC", :"ZENHEADBUTT", :"TERABLAST"
  pkmn.egg_moves :"nil"
end

GameData::SpeciesMetrics.define :"FALINKS" do |m|
  m.back_sprite 0, 52
  m.front_sprite 0, 29
end

# Form 1 - Mega Falinks
GameData::Species.define :"FALINKS_1" do |pkmn|
  pkmn.species :"FALINKS"
  pkmn.form 1
  pkmn.name "Falinks"
  pkmn.form_name "Mega Falinks"
  pkmn.types :"FIGHTING"
  pkmn.base_stats hp: 65, attack: 135, defense: 135,
                  sp_atk: 70, sp_def: 65, speed: 100
  pkmn.abilities :"BATTLEARMOR"
  pkmn.hidden_abilities :"DEFIANT"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"MultiBody"
  pkmn.base_exp 165
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 6400
  pkmn.height 1.6
  pkmn.weight 99.0
  pkmn.category "Formation"
  pkmn.pokedex_entry "Mega Falinks has taken on the ultimate battle formation, which can be achieved only if the troopers and brass have the strongest of bonds."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Fairy", :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"PROTECT"
    m.at 5, :"ROCKSMASH"
    m.at 10, :"FOCUSENERGY"
    m.at 15, :"HEADBUTT"
    m.at 20, :"BULKUP"
    m.at 25, :"ENDURE"
    m.at 30, :"REVERSAL"
    m.at 35, :"FIRSTIMPRESSION"
    m.at 40, :"NORETREAT"
    m.at 45, :"IRONDEFENSE"
    m.at 50, :"CLOSECOMBAT"
    m.at 55, :"MEGAHORN"
    m.at 60, :"COUNTER"
  end
  pkmn.tutor_moves :"AGILITY", :"ASSURANCE", :"BEATUP", :"BRICKBREAK", :"BULKUP", :"CLOSECOMBAT", :"COACHING", :"CONFIDE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FOCUSBLAST", :"FOCUSENERGY", :"FRUSTRATION", :"GIGAIMPACT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"IRONDEFENSE", :"IRONHEAD", :"MEGAHORN", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"REST", :"RETALIATE", :"RETURN", :"REVENGE", :"REVERSAL", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SCREECH", :"SECRETPOWER", :"SLEEPTALK", :"SMARTSTRIKE", :"SNORE", :"SUBSTITUTE", :"SUPERPOWER", :"SWAGGER", :"SWORDSDANCE", :"THROATCHOP", :"TOXIC", :"ZENHEADBUTT", :"TERABLAST"
  pkmn.egg_moves :"nil"
end

GameData::SpeciesMetrics.define :"FALINKS_1" do |m|
  m.back_sprite 0, 52
  m.front_sprite 0, 29
end