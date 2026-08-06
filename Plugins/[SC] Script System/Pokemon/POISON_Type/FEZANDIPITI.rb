#=============================================================================
# Fezandipiti - POISON Type
#=============================================================================

GameData::Species.define :"FEZANDIPITI" do |pkmn|
  pkmn.name "Fezandipiti"
  pkmn.types :"POISON", :"FAIRY"
  pkmn.base_stats hp: 88, attack: 91, defense: 82,
                  sp_atk: 99, sp_def: 70, speed: 125
  pkmn.abilities :"TOXICCHAIN"
  pkmn.hidden_abilities :"TECHNICIAN"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"AlwaysMale"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Black"
  pkmn.shape :"Winged"
  pkmn.base_exp 278
  pkmn.catch_rate 3
  pkmn.happiness 0
  pkmn.hatch_steps 30720
  pkmn.height 1.4
  pkmn.weight 30.1
  pkmn.category "Retainer"
  pkmn.pokedex_entry "Fezandipiti owes its beautiful looks and lovely voice to the toxic stimulants emanating from the chain wrapped around its body."
  pkmn.evs special_defense: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"DOUBLEKICK"
    m.at 1, :"PECK"
    m.at 1, :"POISONGAS"
    m.at 8, :"DISARMINGVOICE"
    m.at 16, :"QUICKATTACK"
    m.at 24, :"ATTRACT"
    m.at 32, :"WINGATTACK"
    m.at 40, :"CROSSPOISON"
    m.at 48, :"TAILSLAP"
    m.at 56, :"FLATTER"
    m.at 56, :"BEATUP"
    m.at 64, :"ROOST"
    m.at 72, :"MOONBLAST"
  end
  pkmn.tutor_moves :"ACIDSPRAY", :"ACROBATICS", :"AERIALACE", :"AGILITY", :"AIRCUTTER", :"AIRSLASH", :"ALLURINGVOICE", :"BRAVEBIRD", :"CALMMIND", :"CHARM", :"DARKPULSE", :"DAZZLINGGLEAM", :"DISARMINGVOICE", :"DUALWINGBEAT", :"ENDURE", :"FACADE", :"FLY", :"GIGAIMPACT", :"GUNKSHOT", :"HEATWAVE", :"HEX", :"HURRICANE", :"HYPERBEAM", :"ICYWIND", :"LASHOUT", :"LIGHTSCREEN", :"NASTYPLOT", :"PLAYROUGH", :"POISONJAB", :"POISONTAIL", :"PROTECT", :"PSYCHUP", :"REST", :"SHADOWBALL", :"SHADOWCLAW", :"SLEEPTALK", :"SLUDGEBOMB", :"SPITE", :"SUBSTITUTE", :"SWIFT", :"SWORDSDANCE", :"TAILWIND", :"TAKEDOWN", :"TAUNT", :"THIEF", :"TOXIC", :"UPROAR", :"UTURN", :"VENOSHOCK"
end

GameData::SpeciesMetrics.define :"FEZANDIPITI" do |m|
  m.back_sprite -25, 67
  m.front_sprite 1, 12
  m.shadow_sprite 0, 0, 2
end