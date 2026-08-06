#=============================================================================
# Enamorus - FAIRY Type
#=============================================================================

GameData::Species.define :"ENAMORUS" do |pkmn|
  pkmn.name "Enamorus"
  pkmn.form_name "Incarnate Forme"
  pkmn.types :"FAIRY", :"FLYING"
  pkmn.base_stats hp: 74, attack: 115, defense: 70,
                  sp_atk: 106, sp_def: 135, speed: 80
  pkmn.abilities :"CUTECHARM"
  pkmn.hidden_abilities :"CONTRARY"
  pkmn.flags :"Legendary", :"ForcesOfNature"
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Pink"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 116
  pkmn.catch_rate 3
  pkmn.happiness 90
  pkmn.hatch_steps 30855
  pkmn.height 1.8
  pkmn.weight 48.0
  pkmn.category "Love-Hate"
  pkmn.pokedex_entry "When it flies to this land from across the sea, the bitter winter comes to an end. According to legend, this Pokémon's love gives rise to the budding of fresh life across Hisui."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"FAIRYWIND"
    m.at 1, :"ASTONISH"
    m.at 5, :"TORMENT"
    m.at 10, :"FLATTER"
    m.at 15, :"TWISTER"
    m.at 20, :"DRAININGKISS"
    m.at 25, :"IRONDEFENSE"
    m.at 30, :"IMPRISON"
    m.at 35, :"MYSTICALFIRE"
    m.at 40, :"DAZZLINGGLEAM"
    m.at 45, :"EXTRASENSORY"
    m.at 50, :"UPROAR"
    m.at 55, :"SUPERPOWER"
    m.at 60, :"HEALINGWISH"
    m.at 65, :"MOONBLAST"
    m.at 70, :"OUTRAGE"
    m.at 75, :"SPRINGTIDESTORM"
  end
  pkmn.tutor_moves :"AGILITY", :"ALLURINGVOICE", :"BODYSLAM", :"CALMMIND", :"DAZZLINGGLEAM", :"DISARMINGVOICE", :"DRAININGKISS", :"EARTHPOWER", :"ENDURE", :"FACADE", :"FLY", :"FOCUSBLAST", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSYTERRAIN", :"HYPERBEAM", :"IMPRISON", :"IRONDEFENSE", :"IRONHEAD", :"MISTYEXPLOSION", :"MISTYTERRAIN", :"OUTRAGE", :"PLAYROUGH", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"REST", :"SCARYFACE", :"SLEEPTALK", :"SLUDGEBOMB", :"SUBSTITUTE", :"SUNNYDAY", :"TAILWIND", :"TAKEDOWN", :"TAUNT", :"UPROAR", :"WEATHERBALL", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"ENAMORUS" do |m|
  m.back_sprite 0, 42
  m.front_sprite 1, 7
  m.shadow_sprite 2, 0, 3
end

# Form 1 - Therian Form
GameData::Species.define :"ENAMORUS_1" do |pkmn|
  pkmn.species :"ENAMORUS"
  pkmn.form 1
  pkmn.name "Enamorus"
  pkmn.form_name "Therian Form"
  pkmn.types :"FAIRY", :"FLYING"
  pkmn.base_stats hp: 74, attack: 115, defense: 110,
                  sp_atk: 46, sp_def: 135, speed: 100
  pkmn.abilities :"OVERCOAT"
  pkmn.hidden_abilities :"CONTRARY"
  pkmn.flags :"Legendary", :"ForcesOfNature"
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Pink"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 116
  pkmn.catch_rate 3
  pkmn.happiness 90
  pkmn.hatch_steps 30855
  pkmn.height 1.8
  pkmn.weight 48.0
  pkmn.category "Love-Hate"
  pkmn.pokedex_entry "A different guise from its feminine humanoid form. From the clouds, it descends upon those who treat any form of life with disrespect and metes out wrathful, ruthless punishment."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"FAIRYWIND"
    m.at 1, :"ASTONISH"
    m.at 5, :"TORMENT"
    m.at 10, :"FLATTER"
    m.at 15, :"TWISTER"
    m.at 20, :"DRAININGKISS"
    m.at 25, :"IRONDEFENSE"
    m.at 30, :"IMPRISON"
    m.at 35, :"MYSTICALFIRE"
    m.at 40, :"DAZZLINGGLEAM"
    m.at 45, :"EXTRASENSORY"
    m.at 50, :"UPROAR"
    m.at 55, :"SUPERPOWER"
    m.at 60, :"HEALINGWISH"
    m.at 65, :"MOONBLAST"
    m.at 70, :"OUTRAGE"
    m.at 75, :"SPRINGTIDESTORM"
  end
  pkmn.tutor_moves :"AGILITY", :"ALLURINGVOICE", :"BODYSLAM", :"CALMMIND", :"DAZZLINGGLEAM", :"DISARMINGVOICE", :"DRAININGKISS", :"EARTHPOWER", :"ENDURE", :"FACADE", :"FLY", :"FOCUSBLAST", :"GIGAIMPACT", :"GRASSKNOT", :"GRASSYTERRAIN", :"HYPERBEAM", :"IMPRISON", :"IRONDEFENSE", :"IRONHEAD", :"MISTYEXPLOSION", :"MISTYTERRAIN", :"OUTRAGE", :"PLAYROUGH", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"RAINDANCE", :"REST", :"SCARYFACE", :"SLEEPTALK", :"SLUDGEBOMB", :"SUBSTITUTE", :"SUNNYDAY", :"TAILWIND", :"TAKEDOWN", :"TAUNT", :"UPROAR", :"WEATHERBALL", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"ENAMORUS_1" do |m|
  m.back_sprite 0, 54
  m.front_sprite -4, 14
  m.shadow_sprite 0, 0, 2
end