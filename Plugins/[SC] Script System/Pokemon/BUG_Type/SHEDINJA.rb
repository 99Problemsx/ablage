#=============================================================================
# Shedinja - BUG Type
#=============================================================================

GameData::Species.define :"SHEDINJA" do |pkmn|
  pkmn.name "Shedinja"
  pkmn.types :"BUG", :"GHOST"
  pkmn.base_stats hp: 1, attack: 90, defense: 45,
                  sp_atk: 40, sp_def: 30, speed: 30
  pkmn.abilities :"WONDERGUARD"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Erratic"
  pkmn.color :"Brown"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 83
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.8
  pkmn.weight 1.2
  pkmn.category "Shed"
  pkmn.pokedex_entry "A peculiar Pokémon that floats in air even though its wings remain completely still. The inside of its body is hollow and utterly dark."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"HARDEN"
    m.at 5, :"LEECHLIFE"
    m.at 9, :"SANDATTACK"
    m.at 14, :"FURYSWIPES"
    m.at 19, :"MINDREADER"
    m.at 25, :"SPITE"
    m.at 31, :"CONFUSERAY"
    m.at 38, :"SHADOWSNEAK"
    m.at 45, :"GRUDGE"
    m.at 52, :"HEALBLOCK"
    m.at 59, :"SHADOWBALL"
  end
  pkmn.tutor_moves :"AERIALACE", :"BUGBITE", :"CUT", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLASH", :"FRUSTRATION", :"FURYCUTTER", :"GIGADRAIN", :"GIGAIMPACT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SHADOWBALL", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SPITE", :"STRINGSHOT", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"TELEKINESIS", :"THIEF", :"TOXIC", :"TRICK", :"WILLOWISP", :"XSCISSOR"
end

GameData::SpeciesMetrics.define :"SHEDINJA" do |m|
  m.back_sprite 0, 0
  m.front_sprite 2, 1
  m.shadow_sprite 0, 0, 2
end