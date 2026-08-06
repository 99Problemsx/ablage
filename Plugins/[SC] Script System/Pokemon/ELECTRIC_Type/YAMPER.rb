#=============================================================================
# Yamper - ELECTRIC Type
#=============================================================================

GameData::Species.define :"YAMPER" do |pkmn|
  pkmn.name "Yamper"
  pkmn.types :"ELECTRIC"
  pkmn.base_stats hp: 59, attack: 45, defense: 50,
                  sp_atk: 26, sp_def: 40, speed: 50
  pkmn.abilities :"BALLFETCH"
  pkmn.hidden_abilities :"RATTLED"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Yellow"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 54
  pkmn.catch_rate 255
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.3
  pkmn.weight 13.5
  pkmn.category "Puppy"
  pkmn.pokedex_entry "This gluttonous Pokémon only assists people with their work because it wants treats. As it runs, it crackles with electricity."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"TAILWHIP"
    m.at 5, :"NUZZLE"
    m.at 10, :"BITE"
    m.at 15, :"ROAR"
    m.at 20, :"SPARK"
    m.at 26, :"CHARM"
    m.at 30, :"CRUNCH"
    m.at 35, :"CHARGE"
    m.at 40, :"WILDCHARGE"
    m.at 45, :"PLAYROUGH"
  end
  pkmn.tutor_moves :"ATTRACT", :"CAPTIVATE", :"CHARM", :"CONFIDE", :"CRUNCH", :"DIG", :"DOUBLETEAM", :"ELECTROBALL", :"ENDURE", :"FACADE", :"FIREFANG", :"FRUSTRATION", :"HELPINGHAND", :"HIDDENPOWER", :"MIMIC", :"NATURALGIFT", :"PLAYROUGH", :"PROTECT", :"REST", :"RETURN", :"RISINGVOLTAGE", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNARL", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"SWIFT", :"THUNDER", :"THUNDERBOLT", :"THUNDERFANG", :"THUNDERWAVE", :"TOXIC", :"UPROAR", :"VOLTSWITCH", :"WILDCHARGE", :"TERABLAST"
  pkmn.egg_moves :"DISCHARGE", :"DOUBLEEDGE", :"FLAMECHARGE", :"HOWL", :"SANDATTACK"
end

GameData::SpeciesMetrics.define :"YAMPER" do |m|
  m.back_sprite 0, 10
  m.front_sprite -1, 9
end