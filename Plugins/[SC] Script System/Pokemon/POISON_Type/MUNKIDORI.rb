#=============================================================================
# Munkidori - POISON Type
#=============================================================================

GameData::Species.define :"MUNKIDORI" do |pkmn|
  pkmn.name "Munkidori"
  pkmn.types :"POISON", :"PSYCHIC"
  pkmn.base_stats hp: 88, attack: 75, defense: 66,
                  sp_atk: 106, sp_def: 130, speed: 90
  pkmn.abilities :"TOXICCHAIN"
  pkmn.hidden_abilities :"FRISK"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"AlwaysMale"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Black"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 278
  pkmn.catch_rate 3
  pkmn.happiness 0
  pkmn.hatch_steps 30720
  pkmn.height 1.0
  pkmn.weight 12.2
  pkmn.category "Retainer"
  pkmn.pokedex_entry "The chain is made from toxins that enhance capabilities. It stimulated Munkidori's brain and caused the Pokémon's psychic powers to bloom."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 1, :"CONFUSION"
    m.at 1, :"FAKEOUT"
    m.at 8, :"FLATTER"
    m.at 16, :"HELPINGHAND"
    m.at 24, :"PSYBEAM"
    m.at 32, :"CLEARSMOG"
    m.at 40, :"PSYCHIC"
    m.at 48, :"SLUDGEWAVE"
    m.at 56, :"NASTYPLOT"
    m.at 64, :"FUTURESIGHT"
    m.at 72, :"PARTINGSHOT"
  end
  pkmn.tutor_moves :"ACIDSPRAY", :"BATONPASS", :"CALMMIND", :"CONFUSERAY", :"ENDURE", :"FACADE", :"FLING", :"FOCUSBLAST", :"FUTURESIGHT", :"GIGAIMPACT", :"GRASSKNOT", :"GUNKSHOT", :"HELPINGHAND", :"HEX", :"HYPERBEAM", :"IMPRISON", :"LASHOUT", :"LIGHTSCREEN", :"METRONOME", :"MUDSLAP", :"NASTYPLOT", :"NIGHTSHADE", :"POISONJAB", :"POLTERGEIST", :"PROTECT", :"PSYBEAM", :"PSYCHIC", :"PSYCHICNOISE", :"PSYCHICTERRAIN", :"PSYCHUP", :"PSYSHOCK", :"REST", :"SHADOWBALL", :"SHADOWCLAW", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SPITE", :"STOREDPOWER", :"SUBSTITUTE", :"SWIFT", :"TAUNT", :"THIEF", :"TOXIC", :"TRAILBLAZE", :"TRICK", :"UPROAR", :"UTURN", :"VENOSHOCK"
end

GameData::SpeciesMetrics.define :"MUNKIDORI" do |m|
  m.back_sprite 0, 54
  m.front_sprite -2, 19
  m.shadow_sprite 0, 0, 1
end