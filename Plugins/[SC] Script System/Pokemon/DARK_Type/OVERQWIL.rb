#=============================================================================
# Overqwil - DARK Type
#=============================================================================

GameData::Species.define :"OVERQWIL" do |pkmn|
  pkmn.name "Overqwil"
  pkmn.types :"DARK", :"POISON"
  pkmn.base_stats hp: 85, attack: 115, defense: 95,
                  sp_atk: 85, sp_def: 65, speed: 65
  pkmn.abilities :"POISONPOINT", :"SWIFTSWIM"
  pkmn.hidden_abilities :"INTIMIDATE"
  pkmn.flags :"DefaultForm_1", :"InheritFormWithEverStone"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Black"
  pkmn.shape :"Finned"
  pkmn.base_exp 179
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5355
  pkmn.height 2.5
  pkmn.weight 60.5
  pkmn.category "Pin Cluster"
  pkmn.pokedex_entry "Its lancelike spikes and savage temperament have earned it the nickname \"sea fiend.\" It slurps up poison to nourish itself."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Water2"

  pkmn.moves do |m|
    m.at 1, :"POISONSTING"
    m.at 1, :"TACKLE"
    m.at 4, :"HARDEN"
    m.at 8, :"BITE"
    m.at 12, :"FELLSTINGER"
    m.at 16, :"MINIMIZE"
    m.at 20, :"SPIKES"
    m.at 24, :"BRINE"
    m.at 28, :"BARBBARRAGE"
    m.at 32, :"PINMISSILE"
    m.at 36, :"TOXICSPIKES"
    m.at 40, :"STOCKPILE"
    m.at 40, :"SPITUP"
    m.at 44, :"TOXIC"
    m.at 48, :"CRUNCH"
    m.at 52, :"ACUPRESSURE"
    m.at 56, :"DESTINYBOND"
  end
  pkmn.tutor_moves :"ACIDSPRAY", :"AGILITY", :"BLIZZARD", :"CHILLINGWATER", :"CRUNCH", :"CURSE", :"DARKPULSE", :"DOUBLEEDGE", :"ENDURE", :"FACADE", :"GIGAIMPACT", :"GUNKSHOT", :"GYROBALL", :"HAZE", :"HEX", :"HYDROPUMP", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"LASHOUT", :"LIQUIDATION", :"MUDSHOT", :"PAINSPLIT", :"POISONJAB", :"POISONTAIL", :"PROTECT", :"RAINDANCE", :"REST", :"REVERSAL", :"SCALESHOT", :"SCARYFACE", :"SHADOWBALL", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SMARTSTRIKE", :"SPIKES", :"SPITE", :"SUBSTITUTE", :"SURF", :"SWIFT", :"SWORDSDANCE", :"TAKEDOWN", :"TAUNT", :"THROATCHOP", :"TOXIC", :"TOXICSPIKES", :"VENOSHOCK", :"WATERFALL", :"WATERPULSE"
end

GameData::SpeciesMetrics.define :"OVERQWIL" do |m|
  m.back_sprite 0, 47
  m.front_sprite 2, 6
  m.shadow_sprite 2, 0, 3
end