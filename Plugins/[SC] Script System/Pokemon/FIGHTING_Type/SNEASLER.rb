#=============================================================================
# Sneasler - FIGHTING Type
#=============================================================================

GameData::Species.define :"SNEASLER" do |pkmn|
  pkmn.name "Sneasler"
  pkmn.types :"FIGHTING", :"POISON"
  pkmn.base_stats hp: 80, attack: 130, defense: 60,
                  sp_atk: 120, sp_def: 40, speed: 80
  pkmn.abilities :"PRESSURE", :"UNBURDEN"
  pkmn.hidden_abilities :"POISONTOUCH"
  pkmn.flags :"DefaultForm_1", :"InheritFormWithEverStone"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 102
  pkmn.catch_rate 20
  pkmn.happiness 35
  pkmn.hatch_steps 5355
  pkmn.height 1.3
  pkmn.weight 43.0
  pkmn.category "Free Climb"
  pkmn.pokedex_entry "Because of Sneasler’s virulent poison and daunting physical prowess, no other species could hope to best it on frozen highlands. Preferring solitude, this species does not form packs."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 0, :"DIRECLAW"
    m.at 1, :"FLING"
    m.at 1, :"SCRATCH"
    m.at 1, :"LEER"
    m.at 1, :"ROCKSMASH"
    m.at 6, :"TAUNT"
    m.at 12, :"QUICKATTACK"
    m.at 18, :"METALCLAW"
    m.at 24, :"POISONJAB"
    m.at 30, :"BRICKBREAK"
    m.at 36, :"HONECLAWS"
    m.at 42, :"SLASH"
    m.at 48, :"AGILITY"
    m.at 54, :"SCREECH"
    m.at 60, :"CLOSECOMBAT"
  end
  pkmn.tutor_moves :"ACIDSPRAY", :"ACROBATICS", :"AERIALACE", :"AGILITY", :"BRICKBREAK", :"BULKUP", :"CALMMIND", :"CLOSECOMBAT", :"COACHING", :"DIG", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FIREPUNCH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"GIGAIMPACT", :"GRASSKNOT", :"GUNKSHOT", :"HYPERBEAM", :"LASHOUT", :"LOWKICK", :"LOWSWEEP", :"METALCLAW", :"NASTYPLOT", :"POISONJAB", :"POISONTAIL", :"PROTECT", :"RAINDANCE", :"REST", :"REVERSAL", :"ROCKSLIDE", :"ROCKTOMB", :"SHADOWBALL", :"SHADOWCLAW", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SPITE", :"SUBSTITUTE", :"SUNNYDAY", :"SWIFT", :"SWORDSDANCE", :"TAKEDOWN", :"TAUNT", :"THIEF", :"THROATCHOP", :"TOXIC", :"TOXICSPIKES", :"TRAILBLAZE", :"UPPERHAND", :"UTURN", :"VACUUMWAVE", :"VENOSHOCK", :"XSCISSOR"
end

GameData::SpeciesMetrics.define :"SNEASLER" do |m|
  m.back_sprite 0, 54
  m.front_sprite 0, 21
  m.shadow_sprite 2, 0, 2
end