#=============================================================================
# Beautifly - BUG Type
#=============================================================================

GameData::Species.define :"BEAUTIFLY" do |pkmn|
  pkmn.name "Beautifly"
  pkmn.types :"BUG", :"FLYING"
  pkmn.base_stats hp: 60, attack: 70, defense: 50,
                  sp_atk: 65, sp_def: 90, speed: 50
  pkmn.abilities :"SWARM"
  pkmn.hidden_abilities :"RIVALRY"
  pkmn.flags :"HasGenderedSprites"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"MultiWinged"
  pkmn.base_exp 173
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 1.0
  pkmn.weight 28.4
  pkmn.category "Butterfly"
  pkmn.pokedex_entry "Its colorfully patterned wings are its most prominent feature. It flies through flower-covered fields collecting pollen. It attacks ferociously when angered."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"ABSORB"
    m.at 10, :"ABSORB"
    m.at 13, :"GUST"
    m.at 17, :"STUNSPORE"
    m.at 20, :"MORNINGSUN"
    m.at 24, :"MEGADRAIN"
    m.at 27, :"WHIRLWIND"
    m.at 31, :"ATTRACT"
    m.at 34, :"SILVERWIND"
    m.at 38, :"GIGADRAIN"
    m.at 41, :"BUGBUZZ"
    m.at 45, :"QUIVERDANCE"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AIRCUTTER", :"ATTRACT", :"BUGBITE", :"CAPTIVATE", :"DEFOG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ELECTROWEB", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"HIDDENPOWER", :"HYPERBEAM", :"MIMIC", :"NATURALGIFT", :"OMINOUSWIND", :"PROTECT", :"PSYCHIC", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SIGNALBEAM", :"SILVERWIND", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STRINGSHOT", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"THIEF", :"TOXIC", :"TWISTER", :"UTURN", :"VENOSHOCK"
end

GameData::SpeciesMetrics.define :"BEAUTIFLY" do |m|
  m.back_sprite -10, 0
  m.front_sprite 9, 1
  m.shadow_sprite 0, 0, 1
end