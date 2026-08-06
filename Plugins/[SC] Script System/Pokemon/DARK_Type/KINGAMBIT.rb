#=============================================================================
# Kingambit - DARK Type
#=============================================================================

GameData::Species.define :"KINGAMBIT" do |pkmn|
  pkmn.name "Kingambit"
  pkmn.types :"DARK", :"STEEL"
  pkmn.base_stats hp: 100, attack: 135, defense: 120,
                  sp_atk: 50, sp_def: 60, speed: 85
  pkmn.abilities :"DEFIANT", :"SUPREMEOVERLORD"
  pkmn.hidden_abilities :"PRESSURE"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Black"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 275
  pkmn.catch_rate 25
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 2.0
  pkmn.weight 120.0
  pkmn.category "Big Blade"
  pkmn.pokedex_entry "Only a Bisharp that stands above all others in its vast army can evolve into Kingambit."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Humanlike"

  pkmn.moves do |m|
    m.at 0, :"KOWTOWCLEAVE"
    m.at 1, :"METALCLAW"
    m.at 1, :"METALBURST"
    m.at 1, :"SCRATCH"
    m.at 1, :"LEER"
    m.at 1, :"FURYCUTTER"
    m.at 15, :"TORMENT"
    m.at 20, :"SCARYFACE"
    m.at 25, :"ASSURANCE"
    m.at 30, :"METALSOUND"
    m.at 35, :"SLASH"
    m.at 40, :"NIGHTSLASH"
    m.at 45, :"IRONDEFENSE"
    m.at 50, :"RETALIATE"
    m.at 57, :"IRONHEAD"
    m.at 64, :"SWORDSDANCE"
    m.at 71, :"GUILLOTINE"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRSLASH", :"BRICKBREAK", :"DARKPULSE", :"DIG", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLASHCANNON", :"FLING", :"FOCUSBLAST", :"FOULPLAY", :"GIGAIMPACT", :"GRASSKNOT", :"HYPERBEAM", :"IRONDEFENSE", :"IRONHEAD", :"LASHOUT", :"LOWKICK", :"LOWSWEEP", :"METALCLAW", :"METALSOUND", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"REVERSAL", :"ROCKTOMB", :"SANDSTORM", :"SCARYFACE", :"SHADOWCLAW", :"SLEEPTALK", :"SNARL", :"SPITE", :"STEALTHROCK", :"STEELBEAM", :"STONEEDGE", :"SUBSTITUTE", :"SWORDSDANCE", :"TAKEDOWN", :"TAUNT", :"THIEF", :"THROATCHOP", :"THUNDERWAVE", :"XSCISSOR", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"KINGAMBIT" do |m|
  m.back_sprite 0, 40
  m.front_sprite -3, 6
  m.shadow_sprite 0, 0, 2
end