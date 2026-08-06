#=============================================================================
# Lokix - BUG Type
#=============================================================================

GameData::Species.define :"LOKIX" do |pkmn|
  pkmn.name "Lokix"
  pkmn.types :"BUG", :"DARK"
  pkmn.base_stats hp: 71, attack: 102, defense: 78,
                  sp_atk: 92, sp_def: 52, speed: 55
  pkmn.abilities :"SWARM"
  pkmn.hidden_abilities :"TINTEDLENS"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 158
  pkmn.catch_rate 30
  pkmn.happiness 0
  pkmn.hatch_steps 5120
  pkmn.height 1.0
  pkmn.weight 17.5
  pkmn.category "Grasshopper"
  pkmn.pokedex_entry "When it decides to fight all out, it stands on its previously folded legs to enter Showdown Mode. It neutralizes its enemies in short order."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 0, :"LUNGE"
    m.at 1, :"TACKLE"
    m.at 1, :"LEER"
    m.at 1, :"LOWKICK"
    m.at 1, :"DETECT"
    m.at 4, :"STRUGGLEBUG"
    m.at 6, :"ASTONISH"
    m.at 9, :"ASSURANCE"
    m.at 11, :"DOUBLEKICK"
    m.at 14, :"SCREECH"
    m.at 18, :"ENDURE"
    m.at 22, :"BUGBITE"
    m.at 28, :"FEINT"
    m.at 32, :"AGILITY"
    m.at 36, :"THROATCHOP"
    m.at 40, :"SUCKERPUNCH"
    m.at 44, :"FIRSTIMPRESSION"
    m.at 48, :"BOUNCE"
    m.at 53, :"AXEKICK"
  end
  pkmn.tutor_moves :"AERIALACE", :"AGILITY", :"BRICKBREAK", :"BUGBITE", :"BUGBUZZ", :"DARKPULSE", :"DOUBLEEDGE", :"ENDURE", :"FACADE", :"FLING", :"GIGAIMPACT", :"KNOCKOFF", :"LASHOUT", :"LEECHLIFE", :"LOWKICK", :"LOWSWEEP", :"LUNGE", :"POUNCE", :"PROTECT", :"RAINDANCE", :"REST", :"REVERSAL", :"SCARYFACE", :"SKITTERSMACK", :"SLEEPTALK", :"SPITE", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SWORDSDANCE", :"TAKEDOWN", :"TAUNT", :"THIEF", :"THROATCHOP", :"TRAILBLAZE", :"UTURN", :"XSCISSOR"
end

GameData::SpeciesMetrics.define :"LOKIX" do |m|
  m.back_sprite 0, 45
  m.front_sprite -1, 19
  m.shadow_sprite 0, 0, 2
end