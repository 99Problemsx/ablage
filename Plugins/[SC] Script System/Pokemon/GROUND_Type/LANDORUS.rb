#=============================================================================
# Landorus - GROUND Type
#=============================================================================

GameData::Species.define :"LANDORUS" do |pkmn|
  pkmn.name "Landorus"
  pkmn.form_name "Incarnate Forme"
  pkmn.types :"GROUND", :"FLYING"
  pkmn.base_stats hp: 89, attack: 125, defense: 90,
                  sp_atk: 101, sp_def: 115, speed: 80
  pkmn.abilities :"SANDFORCE"
  pkmn.hidden_abilities :"SHEERFORCE"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"AlwaysMale"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Brown"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 270
  pkmn.catch_rate 3
  pkmn.happiness 90
  pkmn.hatch_steps 30840
  pkmn.height 1.5
  pkmn.weight 68.0
  pkmn.category "Abundance"
  pkmn.pokedex_entry "The energy that comes pouring from its tail increases the nutrition in the soil, making crops grow to great size."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"BLOCK"
    m.at 1, :"MUDSHOT"
    m.at 1, :"ROCKTOMB"
    m.at 7, :"IMPRISON"
    m.at 13, :"PUNISHMENT"
    m.at 19, :"BULLDOZE"
    m.at 25, :"ROCKTHROW"
    m.at 31, :"EXTRASENSORY"
    m.at 37, :"SWORDSDANCE"
    m.at 43, :"EARTHPOWER"
    m.at 49, :"ROCKSLIDE"
    m.at 55, :"EARTHQUAKE"
    m.at 61, :"SANDSTORM"
    m.at 67, :"FISSURE"
    m.at 73, :"STONEEDGE"
    m.at 79, :"HAMMERARM"
    m.at 85, :"OUTRAGE"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLOCK", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CALMMIND", :"CAPTIVATE", :"DIG", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"EXPLOSION", :"FACADE", :"FLING", :"FLY", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GRAVITY", :"HIDDENPOWER", :"HYPERBEAM", :"IRONTAIL", :"KNOCKOFF", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SMACKDOWN", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUPERPOWER", :"SWAGGER", :"SWORDSDANCE", :"TOXIC", :"UTURN"
end

GameData::SpeciesMetrics.define :"LANDORUS" do |m|
  m.back_sprite 0, 0
  m.front_sprite 2, 6
  m.shadow_sprite 0, 0, 3
end

# Form 1 - Incarnate Forme
GameData::Species.define :"LANDORUS_1" do |pkmn|
  pkmn.species :"LANDORUS"
  pkmn.form 1
  pkmn.name "Landorus"
  pkmn.form_name "Incarnate Forme"
  pkmn.types :"GROUND", :"FLYING"
  pkmn.base_stats hp: 89, attack: 125, defense: 90,
                  sp_atk: 101, sp_def: 115, speed: 80
  pkmn.abilities :"SANDFORCE"
  pkmn.hidden_abilities :"SHEERFORCE"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"AlwaysMale"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Brown"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 270
  pkmn.catch_rate 3
  pkmn.happiness 90
  pkmn.hatch_steps 30840
  pkmn.height 1.5
  pkmn.weight 68.0
  pkmn.category "Abundance"
  pkmn.pokedex_entry "The energy that comes pouring from its tail increases the nutrition in the soil, making crops grow to great size."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"BLOCK"
    m.at 1, :"MUDSHOT"
    m.at 1, :"ROCKTOMB"
    m.at 7, :"IMPRISON"
    m.at 13, :"PUNISHMENT"
    m.at 19, :"BULLDOZE"
    m.at 25, :"ROCKTHROW"
    m.at 31, :"EXTRASENSORY"
    m.at 37, :"SWORDSDANCE"
    m.at 43, :"EARTHPOWER"
    m.at 49, :"ROCKSLIDE"
    m.at 55, :"EARTHQUAKE"
    m.at 61, :"SANDSTORM"
    m.at 67, :"FISSURE"
    m.at 73, :"STONEEDGE"
    m.at 79, :"HAMMERARM"
    m.at 85, :"OUTRAGE"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLOCK", :"BRICKBREAK", :"BULKUP", :"BULLDOZE", :"CALMMIND", :"CAPTIVATE", :"DIG", :"DOUBLETEAM", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"EXPLOSION", :"FACADE", :"FLING", :"FLY", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"GRAVITY", :"HIDDENPOWER", :"HYPERBEAM", :"IRONTAIL", :"KNOCKOFF", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PAYBACK", :"PROTECT", :"PSYCHIC", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SMACKDOWN", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUPERPOWER", :"SWAGGER", :"SWORDSDANCE", :"TOXIC", :"UTURN"
end

GameData::SpeciesMetrics.define :"LANDORUS_1" do |m|
  m.back_sprite -8, 0
  m.front_sprite 3, 14
  m.shadow_sprite 0, 0, 3
end