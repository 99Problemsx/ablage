#=============================================================================
# Oddish - GRASS Type
#=============================================================================

GameData::Species.define :"ODDISH" do |pkmn|
  pkmn.name "Oddish"
  pkmn.types :"GRASS", :"POISON"
  pkmn.base_stats hp: 45, attack: 50, defense: 55,
                  sp_atk: 30, sp_def: 75, speed: 65
  pkmn.abilities :"CHLOROPHYLL"
  pkmn.hidden_abilities :"RUNAWAY"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"HeadLegs"
  pkmn.base_exp 64
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.5
  pkmn.weight 5.4
  pkmn.category "Weed"
  pkmn.pokedex_entry "It grows by absorbing moonlight. During the daytime, it buries itself in the ground, leaving only its leaves exposed to avoid detection by its enemies."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Grass"

  pkmn.moves do |m|
    m.at 1, :"ABSORB"
    m.at 5, :"SWEETSCENT"
    m.at 9, :"ACID"
    m.at 13, :"POISONPOWDER"
    m.at 15, :"STUNSPORE"
    m.at 17, :"SLEEPPOWDER"
    m.at 21, :"MEGADRAIN"
    m.at 25, :"LUCKYCHANT"
    m.at 29, :"NATURALGIFT"
    m.at 33, :"MOONLIGHT"
    m.at 37, :"GIGADRAIN"
    m.at 41, :"PETALDANCE"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ATTRACT", :"BULLETSEED", :"CAPTIVATE", :"CUT", :"DOUBLEEDGE", :"DOUBLETEAM", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GASTROACID", :"GIGADRAIN", :"GRASSKNOT", :"HIDDENPOWER", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"TOXIC", :"VENOSHOCK", :"WORRYSEED"
  pkmn.egg_moves :"AFTERYOU", :"CHARM", :"FLAIL", :"INGRAIN", :"NATUREPOWER", :"RAZORLEAF", :"SECRETPOWER", :"SYNTHESIS", :"TEETERDANCE", :"TICKLE"
end

GameData::SpeciesMetrics.define :"ODDISH" do |m|
  m.back_sprite 2, 0
  m.front_sprite 3, 23
  m.shadow_sprite 0, 0, 1
end