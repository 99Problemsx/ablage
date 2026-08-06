#=============================================================================
# Alcremie - FAIRY Type
#=============================================================================

GameData::Species.define :"ALCREMIE" do |pkmn|
  pkmn.name "Alcremie"
  pkmn.form_name "Vanilla Cream"
  pkmn.types :"FAIRY"
  pkmn.base_stats hp: 65, attack: 60, defense: 75,
                  sp_atk: 64, sp_def: 110, speed: 121
  pkmn.abilities :"SWEETVEIL"
  pkmn.hidden_abilities :"AROMAVEIL"
  pkmn.flags :"AllFormsShareGmax"
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Medium"
  pkmn.color :"White"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 173
  pkmn.catch_rate 100
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.3
  pkmn.weight 0.5
  pkmn.category "Cream"
  pkmn.pokedex_entry "When Alcremie is content, the cream it secretes from its hands becomes sweeter and richer."
  pkmn.evs special_defense: 2
  pkmn.egg_groups :"Fairy", :"Amorphous"

  pkmn.moves do |m|
    m.at 0, :"DECORATE"
    m.at 1, :"TACKLE"
    m.at 1, :"AROMATICMIST"
    m.at 1, :"SWEETKISS"
    m.at 1, :"SWEETSCENT"
    m.at 15, :"DRAININGKISS"
    m.at 20, :"AROMATHERAPY"
    m.at 25, :"ATTRACT"
    m.at 30, :"ACIDARMOR"
    m.at 35, :"DAZZLINGGLEAM"
    m.at 40, :"RECOVER"
    m.at 45, :"MISTYTERRAIN"
    m.at 50, :"ENTRAINMENT"
  end
  pkmn.tutor_moves :"ATTRACT", :"CALMMIND", :"CAPTIVATE", :"CHARM", :"CONFIDE", :"DAZZLINGGLEAM", :"DOUBLETEAM", :"DRAININGKISS", :"DRAINPUNCH", :"ENCORE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FAKETEARS", :"FLING", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"IMPRISON", :"LIGHTSCREEN", :"MAGICALLEAF", :"MAGICROOM", :"METRONOME", :"MIMIC", :"MISTYEXPLOSION", :"MISTYTERRAIN", :"MYSTICALFIRE", :"NATURALGIFT", :"PLAYROUGH", :"PROTECT", :"PSYCHIC", :"PSYSHOCK", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STOREDPOWER", :"SUBSTITUTE", :"SWAGGER", :"TOXIC", :"TRIATTACK", :"WONDERROOM", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"ALCREMIE" do |m|
  m.back_sprite 0, 42
  m.front_sprite 1, 7
end