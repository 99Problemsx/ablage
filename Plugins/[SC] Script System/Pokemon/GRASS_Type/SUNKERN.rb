#=============================================================================
# Sunkern - GRASS Type
#=============================================================================

GameData::Species.define :"SUNKERN" do |pkmn|
  pkmn.name "Sunkern"
  pkmn.types :"GRASS"
  pkmn.base_stats hp: 30, attack: 30, defense: 30,
                  sp_atk: 30, sp_def: 30, speed: 30
  pkmn.abilities :"CHLOROPHYLL", :"SOLARPOWER"
  pkmn.hidden_abilities :"EARLYBIRD"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Yellow"
  pkmn.shape :"Head"
  pkmn.base_exp 36
  pkmn.catch_rate 235
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.3
  pkmn.weight 1.8
  pkmn.category "Seed"
  pkmn.pokedex_entry "Sunkern try to minimize movement to conserve the nutrients they have stored in their bodies for evolution. They will not eat, subsisting only on morning dew."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Grass"

  pkmn.moves do |m|
    m.at 1, :"ABSORB"
    m.at 1, :"GROWTH"
    m.at 4, :"INGRAIN"
    m.at 7, :"GRASSWHISTLE"
    m.at 10, :"MEGADRAIN"
    m.at 13, :"LEECHSEED"
    m.at 16, :"RAZORLEAF"
    m.at 19, :"WORRYSEED"
    m.at 22, :"GIGADRAIN"
    m.at 25, :"ENDEAVOR"
    m.at 28, :"SYNTHESIS"
    m.at 31, :"NATURALGIFT"
    m.at 34, :"SOLARBEAM"
    m.at 37, :"DOUBLEEDGE"
    m.at 40, :"SUNNYDAY"
    m.at 43, :"SEEDBOMB"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ATTRACT", :"BULLETSEED", :"CAPTIVATE", :"CUT", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHPOWER", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGADRAIN", :"GRASSKNOT", :"HELPINGHAND", :"HIDDENPOWER", :"LIGHTSCREEN", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SLUDGEBOMB", :"SNORE", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"SYNTHESIS", :"TOXIC", :"UPROAR", :"WORRYSEED"
  pkmn.egg_moves :"BIDE", :"CURSE", :"ENCORE", :"ENDURE", :"GRASSWHISTLE", :"HELPINGHAND", :"INGRAIN", :"LEECHSEED", :"MORNINGSUN", :"NATURALGIFT", :"NATUREPOWER", :"SWEETSCENT"
end

GameData::SpeciesMetrics.define :"SUNKERN" do |m|
  m.back_sprite 3, 0
  m.front_sprite 1, 24
  m.shadow_sprite 0, 0, 1
end