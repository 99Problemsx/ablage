#=============================================================================
# Beedrill - BUG Type
#=============================================================================

GameData::Species.define :"BEEDRILL" do |pkmn|
  pkmn.name "Beedrill"
  pkmn.types :"BUG", :"POISON"
  pkmn.base_stats hp: 65, attack: 80, defense: 40,
                  sp_atk: 75, sp_def: 45, speed: 80
  pkmn.abilities :"SWARM"
  pkmn.hidden_abilities :"SNIPER"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"MultiWinged"
  pkmn.base_exp 173
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 1.0
  pkmn.weight 29.5
  pkmn.category "Poison Bee"
  pkmn.pokedex_entry "A Beedrill is extremely territorial. For safety reasons, no one should ever approach its nest. If angered, they will attack in a swarm."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"FURYATTACK"
    m.at 10, :"FURYATTACK"
    m.at 13, :"FOCUSENERGY"
    m.at 16, :"TWINEEDLE"
    m.at 19, :"RAGE"
    m.at 22, :"PURSUIT"
    m.at 25, :"TOXICSPIKES"
    m.at 28, :"PINMISSILE"
    m.at 31, :"AGILITY"
    m.at 34, :"ASSURANCE"
    m.at 37, :"POISONJAB"
    m.at 40, :"ENDEAVOR"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AIRCUTTER", :"ATTRACT", :"BRICKBREAK", :"BUGBITE", :"CAPTIVATE", :"CUT", :"DEFOG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRILLRUN", :"ELECTROWEB", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLASH", :"FRUSTRATION", :"FURYCUTTER", :"GIGADRAIN", :"GIGAIMPACT", :"HIDDENPOWER", :"HYPERBEAM", :"KNOCKOFF", :"MIMIC", :"NATURALGIFT", :"OMINOUSWIND", :"PAYBACK", :"POISONJAB", :"PROTECT", :"REST", :"RETURN", :"ROCKSMASH", :"ROOST", :"ROUND", :"SECRETPOWER", :"SILVERWIND", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SOLARBEAM", :"STRINGSHOT", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TAILWIND", :"THIEF", :"TOXIC", :"UTURN", :"VENOSHOCK", :"XSCISSOR"
end

GameData::SpeciesMetrics.define :"BEEDRILL" do |m|
  m.back_sprite 9, 0
  m.front_sprite -8, 1
  m.shadow_sprite 0, 0, 2
end