#=============================================================================
# Dartrix - GRASS Type
#=============================================================================

GameData::Species.define :"DARTRIX" do |pkmn|
  pkmn.name "Dartrix"
  pkmn.types :"GRASS", :"FLYING"
  pkmn.base_stats hp: 78, attack: 75, defense: 75,
                  sp_atk: 52, sp_def: 70, speed: 70
  pkmn.abilities :"OVERGROW"
  pkmn.hidden_abilities :"LONGREACH"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Brown"
  pkmn.shape :"Winged"
  pkmn.base_exp 147
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 0.7
  pkmn.weight 16.0
  pkmn.category "Blade Quill"
  pkmn.pokedex_entry "A bit of a dandy, it spends its free time preening its wings. Its preoccupation with any dirt on its plumage can leave it unable to battle."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
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
    m.at 35, :"SUCKERPUNCH"
    m.at 40, :"LEAFBLADE"
    m.at 45, :"FEATHERDANCE"
    m.at 50, :"BRAVEBIRD"
  end
  pkmn.tutor_moves :"ATTRACT", :"BATONPASS", :"BRAVEBIRD", :"CAPTIVATE", :"CONFIDE", :"COVET", :"DEFOG", :"DOUBLETEAM", :"DUALWINGBEAT", :"ECHOEDVOICE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FALSESWIPE", :"FRUSTRATION", :"GIGADRAIN", :"GRASSKNOT", :"GRASSPLEDGE", :"GRASSYGLIDE", :"HIDDENPOWER", :"LEAFBLADE", :"LIGHTSCREEN", :"MIMIC", :"NASTYPLOT", :"NATURALGIFT", :"NATUREPOWER", :"PROTECT", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SEEDBOMB", :"SHADOWCLAW", :"SKYATTACK", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STEELWING", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"SYNTHESIS", :"TOXIC", :"WORKUP", :"WORRYSEED", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"DARTRIX" do |m|
  m.back_sprite 4, 51
  m.front_sprite -1, 23
end