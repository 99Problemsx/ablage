#=============================================================================
# Meltan - STEEL Type
#=============================================================================

GameData::Species.define :"MELTAN" do |pkmn|
  pkmn.name "Meltan"
  pkmn.types :"STEEL"
  pkmn.base_stats hp: 46, attack: 65, defense: 65,
                  sp_atk: 34, sp_def: 55, speed: 35
  pkmn.abilities :"MAGNETPULL"
  pkmn.flags :"Mythical"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Gray"
  pkmn.shape :"Head"
  pkmn.base_exp 150
  pkmn.catch_rate 3
  pkmn.happiness 0
  pkmn.hatch_steps 30720
  pkmn.height 0.2
  pkmn.weight 8.0
  pkmn.category "Hex Nut"
  pkmn.pokedex_entry "It melts particles of iron and other metals found in the subsoil, so it can absorb them into its body of molten steel."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"THUNDERSHOCK"
    m.at 1, :"HARDEN"
    m.at 8, :"TAILWHIP"
    m.at 16, :"HEADBUTT"
    m.at 24, :"THUNDERWAVE"
    m.at 32, :"ACIDARMOR"
    m.at 40, :"FLASHCANNON"
  end
  pkmn.tutor_moves :"CONFIDE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FLASHCANNON", :"FRUSTRATION", :"GYROBALL", :"HEADBUTT", :"HIDDENPOWER", :"IRONDEFENSE", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"STEELBEAM", :"SUBSTITUTE", :"SWAGGER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"MELTAN" do |m|
  m.back_sprite 0, 16
  m.front_sprite 2, 2
end