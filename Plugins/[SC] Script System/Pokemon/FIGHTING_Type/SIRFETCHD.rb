#=============================================================================
# Sirfetch'd - FIGHTING Type
#=============================================================================

GameData::Species.define :"SIRFETCHD" do |pkmn|
  pkmn.name "Sirfetch'd"
  pkmn.types :"FIGHTING"
  pkmn.base_stats hp: 62, attack: 135, defense: 95,
                  sp_atk: 65, sp_def: 68, speed: 82
  pkmn.abilities :"STEADFAST"
  pkmn.hidden_abilities :"SCRAPPY"
  pkmn.flags :"DefaultForm_1", :"InheritFormWithEverStone"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"White"
  pkmn.shape :"Winged"
  pkmn.base_exp 177
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.8
  pkmn.weight 117.0
  pkmn.category "Wild Duck"
  pkmn.pokedex_entry "After deflecting attacks with its hard leaf shield, it strikes back with its sharp leek stalk. The leek stalk is both weapon and food."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Flying", :"Field"

  pkmn.moves do |m|
    m.at 0, :"IRONDEFENSE"
    m.at 1, :"FIRSTIMPRESSION"
    m.at 1, :"PECK"
    m.at 1, :"SANDATTACK"
    m.at 1, :"LEER"
    m.at 1, :"FURYCUTTER"
    m.at 15, :"ROCKSMASH"
    m.at 20, :"BRUTALSWING"
    m.at 25, :"DETECT"
    m.at 30, :"KNOCKOFF"
    m.at 35, :"DEFOG"
    m.at 40, :"BRICKBREAK"
    m.at 45, :"SWORDSDANCE"
    m.at 50, :"SLAM"
    m.at 55, :"LEAFBLADE"
    m.at 60, :"FINALGAMBIT"
    m.at 65, :"BRAVEBIRD"
    m.at 70, :"METEORASSAULT"
  end
  pkmn.tutor_moves :"ASSURANCE", :"ATTRACT", :"BODYSLAM", :"BRAVEBIRD", :"BRICKBREAK", :"BRUTALSWING", :"CAPTIVATE", :"CLOSECOMBAT", :"COACHING", :"CONFIDE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DUALWINGBEAT", :"ENDURE", :"FACADE", :"FOCUSENERGY", :"FRUSTRATION", :"GRASSYGLIDE", :"HELPINGHAND", :"HIDDENPOWER", :"IRONDEFENSE", :"LEAFBLADE", :"MIMIC", :"NATURALGIFT", :"POISONJAB", :"PROTECT", :"REST", :"RETALIATE", :"RETURN", :"REVENGE", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SOLARBLADE", :"STEELWING", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERPOWER", :"SWAGGER", :"SWORDSDANCE", :"THROATCHOP", :"WORKUP", :"TERABLAST"
  pkmn.egg_moves :"COUNTER", :"COVET", :"CURSE", :"DOUBLEEDGE", :"FEINT", :"FLAIL", :"NIGHTSLASH", :"QUICKATTACK", :"QUICKGUARD", :"SIMPLEBEAM", :"SKYATTACK"
end

GameData::SpeciesMetrics.define :"SIRFETCHD" do |m|
  m.back_sprite 10, 51
  m.front_sprite -2, 4
end