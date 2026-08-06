#=============================================================================
# Dustox - BUG Type
#=============================================================================

GameData::Species.define :"DUSTOX" do |pkmn|
  pkmn.name "Dustox"
  pkmn.types :"BUG", :"POISON"
  pkmn.base_stats hp: 60, attack: 50, defense: 70,
                  sp_atk: 65, sp_def: 50, speed: 90
  pkmn.abilities :"SHIELDDUST"
  pkmn.hidden_abilities :"COMPOUNDEYES"
  pkmn.flags :"HasGenderedSprites"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Green"
  pkmn.shape :"MultiWinged"
  pkmn.base_exp 135
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 1.2
  pkmn.weight 31.6
  pkmn.category "Poison Moth"
  pkmn.pokedex_entry "It is a nocturnal Pokémon that flies from fields and mountains to the attraction of streetlights at night. It looses highly toxic powder from its wings."
  pkmn.evs special_defense: 3
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"CONFUSION"
    m.at 10, :"CONFUSION"
    m.at 13, :"GUST"
    m.at 17, :"PROTECT"
    m.at 20, :"MOONLIGHT"
    m.at 24, :"PSYBEAM"
    m.at 27, :"WHIRLWIND"
    m.at 31, :"LIGHTSCREEN"
    m.at 34, :"SILVERWIND"
    m.at 38, :"TOXIC"
    m.at 41, :"BUGBUZZ"
    m.at 45, :"QUIVERDANCE"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AIRCUTTER", :"ATTRACT", :"BUGBITE", :"CAPTIVATE", :"DEFOG", :"DOUBLEEDGE", :"DOUBLETEAM", :"ELECTROWEB", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"HIDDENPOWER", :"HYPERBEAM", :"LIGHTSCREEN", :"MIMIC", :"NATURALGIFT", :"OMINOUSWIND", :"PROTECT", :"PSYCHIC", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SIGNALBEAM", :"SILVERWIND", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SOLARBEAM", :"STRINGSHOT", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"THIEF", :"TOXIC", :"TWISTER", :"UTURN", :"VENOSHOCK"
end

GameData::SpeciesMetrics.define :"DUSTOX" do |m|
  m.back_sprite 6, 0
  m.front_sprite 1, -6
  m.shadow_sprite 0, 0, 2
end