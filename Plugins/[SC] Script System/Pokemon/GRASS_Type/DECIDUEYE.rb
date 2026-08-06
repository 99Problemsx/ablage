#=============================================================================
# Decidueye - GRASS Type
#=============================================================================

GameData::Species.define :"DECIDUEYE" do |pkmn|
  pkmn.name "Decidueye"
  pkmn.types :"GRASS", :"GHOST"
  pkmn.base_stats hp: 78, attack: 107, defense: 75,
                  sp_atk: 70, sp_def: 100, speed: 100
  pkmn.abilities :"OVERGROW"
  pkmn.hidden_abilities :"LONGREACH"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Brown"
  pkmn.shape :"Winged"
  pkmn.base_exp 265
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 1.6
  pkmn.weight 36.6
  pkmn.category "Arrow Quill"
  pkmn.pokedex_entry "It fires arrow quills from its wings with such precision, they can pierce a pebble at distances over a hundred yards."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 0, :"SPIRITSHACKLE"
    m.at 1, :"PHANTOMFORCE"
    m.at 1, :"LEAFSTORM"
    m.at 1, :"UTURN"
    m.at 1, :"SPITE"
    m.at 1, :"TACKLE"
    m.at 1, :"GROWL"
    m.at 1, :"LEAFAGE"
    m.at 1, :"ASTONISH"
    m.at 9, :"PECK"
    m.at 12, :"SHADOWSNEAK"
    m.at 15, :"RAZORLEAF"
    m.at 20, :"SYNTHESIS"
    m.at 25, :"PLUCK"
    m.at 30, :"NASTYPLOT"
    m.at 37, :"SUCKERPUNCH"
    m.at 44, :"LEAFBLADE"
    m.at 51, :"FEATHERDANCE"
    m.at 58, :"BRAVEBIRD"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AIRSLASH", :"ATTRACT", :"BATONPASS", :"BRAVEBIRD", :"CAPTIVATE", :"CONFIDE", :"COVET", :"DEFOG", :"DOUBLETEAM", :"DUALWINGBEAT", :"ECHOEDVOICE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FALSESWIPE", :"FRENZYPLANT", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSPLEDGE", :"GRASSYGLIDE", :"HEX", :"HIDDENPOWER", :"HURRICANE", :"HYPERBEAM", :"IMPRISON", :"LASERFOCUS", :"LEAFBLADE", :"LEAFSTORM", :"LIGHTSCREEN", :"LOWSWEEP", :"MIMIC", :"NASTYPLOT", :"NATURALGIFT", :"NATUREPOWER", :"PHANTOMFORCE", :"POLTERGEIST", :"PROTECT", :"PSYCHOCUT", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWBALL", :"SHADOWCLAW", :"SKITTERSMACK", :"SKYATTACK", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"SOLARBEAM", :"SOLARBLADE", :"SPITE", :"STEELWING", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"SYNTHESIS", :"TAILWIND", :"TOXIC", :"UTURN", :"WORKUP", :"WORRYSEED", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"DECIDUEYE" do |m|
  m.back_sprite 7, 45
  m.front_sprite 1, 8
end

# Form 1 - Hisuian
GameData::Species.define :"DECIDUEYE_1" do |pkmn|
  pkmn.species :"DECIDUEYE"
  pkmn.form 1
  pkmn.name "Decidueye"
  pkmn.form_name "Hisuian"
  pkmn.types :"GRASS", :"FIGHTING"
  pkmn.base_stats hp: 88, attack: 112, defense: 80,
                  sp_atk: 60, sp_def: 95, speed: 95
  pkmn.abilities :"OVERGROW"
  pkmn.hidden_abilities :"SCRAPPY"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Brown"
  pkmn.shape :"Winged"
  pkmn.base_exp 265
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 1.6
  pkmn.weight 37.0
  pkmn.category "Arrow Quill"
  pkmn.pokedex_entry "The air stored inside the rachises of Decidueye's feathers insulates the Pokémon against Hisui's extreme cold. This is firm proof that evolution can be influenced by environment."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 0, :"TRIPLEARROWS"
    m.at 1, :"LEAFSTORM"
    m.at 1, :"LEAFAGE"
    m.at 1, :"TACKLE"
    m.at 1, :"GROWL"
    m.at 1, :"UTURN"
    m.at 9, :"PECK"
    m.at 12, :"SHADOWSNEAK"
    m.at 15, :"RAZORLEAF"
    m.at 20, :"SYNTHESIS"
    m.at 25, :"PLUCK"
    m.at 30, :"BULKUP"
    m.at 37, :"SUCKERPUNCH"
    m.at 44, :"LEAFBLADE"
    m.at 51, :"FEATHERDANCE"
    m.at 58, :"BRAVEBIRD"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"AIRSLASH", :"AURASPHERE", :"BATONPASS", :"BRAVEBIRD", :"BRICKBREAK", :"BULKUP", :"BULLETSEED", :"CLOSECOMBAT", :"COACHING", :"CONFUSERAY", :"DUALWINGBEAT", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FALSESWIPE", :"FEATHERDANCE", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRENZYPLANT", :"GIGADRAIN", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSPLEDGE", :"GRASSYGLIDE", :"GRASSYTERRAIN", :"HAZE", :"HELPINGHAND", :"HYPERBEAM", :"KNOCKOFF", :"LEAFSTORM", :"LIGHTSCREEN", :"LOWKICK", :"LOWSWEEP", :"MAGICALLEAF", :"NASTYPLOT", :"NIGHTSHADE", :"PROTECT", :"RAINDANCE", :"REST", :"REVERSAL", :"ROCKTOMB", :"SCARYFACE", :"SEEDBOMB", :"SHADOWCLAW", :"SLEEPTALK", :"SMACKDOWN", :"SOLARBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWIFT", :"SWORDSDANCE", :"TAILWIND", :"TAKEDOWN", :"TAUNT", :"TRAILBLAZE", :"UPPERHAND", :"UTURN"
end

GameData::SpeciesMetrics.define :"DECIDUEYE_1" do |m|
  m.back_sprite 0, 48
  m.front_sprite 1, 15
  m.shadow_sprite 0, 0, 2
end