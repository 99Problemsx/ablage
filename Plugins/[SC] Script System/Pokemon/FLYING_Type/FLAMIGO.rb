#=============================================================================
# Flamigo - FLYING Type
#=============================================================================

GameData::Species.define :"FLAMIGO" do |pkmn|
  pkmn.name "Flamigo"
  pkmn.types :"FLYING", :"FIGHTING"
  pkmn.base_stats hp: 82, attack: 115, defense: 74,
                  sp_atk: 90, sp_def: 75, speed: 64
  pkmn.abilities :"SCRAPPY", :"TANGLEDFEET"
  pkmn.hidden_abilities :"COSTAR"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Pink"
  pkmn.shape :"Winged"
  pkmn.base_exp 175
  pkmn.catch_rate 100
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.6
  pkmn.weight 37.0
  pkmn.category "Synchronize"
  pkmn.pokedex_entry "This Pokémon apparently ties the base of its neck into a knot so that energy stored in its belly does not escape from its beak."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"COPYCAT"
    m.at 1, :"PECK"
    m.at 5, :"DOUBLEKICK"
    m.at 9, :"DETECT"
    m.at 12, :"WINGATTACK"
    m.at 15, :"FOCUSENERGY"
    m.at 18, :"LOWKICK"
    m.at 21, :"FEINT"
    m.at 27, :"PAYBACK"
    m.at 31, :"ROOST"
    m.at 35, :"AIRSLASH"
    m.at 39, :"MEGAKICK"
    m.at 44, :"WIDEGUARD"
    m.at 48, :"THROATCHOP"
    m.at 54, :"BRAVEBIRD"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AGILITY", :"AIRCUTTER", :"AIRSLASH", :"BRAVEBIRD", :"BULKUP", :"CHILLINGWATER", :"CLOSECOMBAT", :"DUALWINGBEAT", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FEATHERDANCE", :"FLING", :"FLY", :"GIGAIMPACT", :"HURRICANE", :"HYPERBEAM", :"LIQUIDATION", :"LOWKICK", :"LOWSWEEP", :"LUNGE", :"POUNCE", :"PROTECT", :"PSYCHUP", :"REST", :"REVERSAL", :"SLEEPTALK", :"SUBSTITUTE", :"SWORDSDANCE", :"TAILWIND", :"TAKEDOWN", :"TAUNT", :"THIEF", :"THROATCHOP", :"UPPERHAND", :"UTURN", :"WATERPULSE"
  pkmn.egg_moves :"DOUBLETEAM", :"QUICKGUARD", :"SKYATTACK"
end

GameData::SpeciesMetrics.define :"FLAMIGO" do |m|
  m.back_sprite 0, 57
  m.front_sprite -4, 12
  m.shadow_sprite 0, 0, 1
end