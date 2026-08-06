#=============================================================================
# Okidogi - POISON Type
#=============================================================================

GameData::Species.define :"OKIDOGI" do |pkmn|
  pkmn.name "Okidogi"
  pkmn.types :"POISON", :"FIGHTING"
  pkmn.base_stats hp: 88, attack: 128, defense: 115,
                  sp_atk: 80, sp_def: 58, speed: 86
  pkmn.abilities :"TOXICCHAIN"
  pkmn.hidden_abilities :"GUARDDOG"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"AlwaysMale"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Black"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 278
  pkmn.catch_rate 3
  pkmn.happiness 0
  pkmn.hatch_steps 30720
  pkmn.height 1.8
  pkmn.weight 92.0
  pkmn.category "Retainer"
  pkmn.pokedex_entry "After all its muscles were stimulated by the toxic chain around its neck, Okidogi transformed and gained a powerful physique."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"BITE"
    m.at 1, :"LOWKICK"
    m.at 1, :"BULKUP"
    m.at 8, :"HOWL"
    m.at 16, :"POISONFANG"
    m.at 24, :"FORCEPALM"
    m.at 32, :"COUNTER"
    m.at 40, :"POISONJAB"
    m.at 48, :"BRUTALSWING"
    m.at 56, :"CRUNCH"
    m.at 64, :"SUPERPOWER"
    m.at 72, :"GIGAIMPACT"
  end
  pkmn.tutor_moves :"BODYPRESS", :"BODYSLAM", :"BRICKBREAK", :"BULKUP", :"CLOSECOMBAT", :"CRUNCH", :"CURSE", :"DIG", :"DOUBLEEDGE", :"DRAINPUNCH", :"ENDURE", :"FACADE", :"FIREFANG", :"FIREPUNCH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"GIGAIMPACT", :"GUNKSHOT", :"HARDPRESS", :"HIGHHORSEPOWER", :"HYPERBEAM", :"ICEFANG", :"ICEPUNCH", :"IRONHEAD", :"KNOCKOFF", :"LASHOUT", :"LOWKICK", :"LOWSWEEP", :"METALCLAW", :"OUTRAGE", :"POISONJAB", :"POISONTAIL", :"PROTECT", :"PSYCHICFANGS", :"REST", :"REVERSAL", :"ROAR", :"ROCKTOMB", :"SCARYFACE", :"SHADOWCLAW", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SNARL", :"SPITE", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"TAKEDOWN", :"TAUNT", :"THIEF", :"THROATCHOP", :"THUNDERFANG", :"THUNDERPUNCH", :"TOXIC", :"UPPERHAND", :"UPROAR"
end

GameData::SpeciesMetrics.define :"OKIDOGI" do |m|
  m.back_sprite 0, 61
  m.front_sprite -2, 13
  m.shadow_sprite 0, 0, 3
end