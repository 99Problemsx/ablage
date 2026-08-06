#=============================================================================
# Slither Wing - BUG Type
#=============================================================================

GameData::Species.define :"SLITHERWING" do |pkmn|
  pkmn.name "Slither Wing"
  pkmn.types :"BUG", :"FIGHTING"
  pkmn.base_stats hp: 85, attack: 135, defense: 79,
                  sp_atk: 81, sp_def: 85, speed: 105
  pkmn.abilities :"PROTOSYNTHESIS"
  pkmn.flags :"Paradox"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Red"
  pkmn.shape :"MultiWinged"
  pkmn.base_exp 285
  pkmn.catch_rate 30
  pkmn.happiness 0
  pkmn.hatch_steps 12800
  pkmn.height 3.2
  pkmn.weight 92.0
  pkmn.category "Paradox"
  pkmn.pokedex_entry "This mysterious Pokémon has some similarities to a creature that an old book introduced as Slither Wing."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at -1, :"SUNNYDAY"
    m.at 1, :"GUST"
    m.at 1, :"EMBER"
    m.at 1, :"BUGBITE"
    m.at 7, :"STUNSPORE"
    m.at 7, :"POISONPOWDER"
    m.at 14, :"FLAMECHARGE"
    m.at 21, :"STOMP"
    m.at 28, :"LOWSWEEP"
    m.at 35, :"MORNINGSUN"
    m.at 42, :"LUNGE"
    m.at 49, :"SUPERPOWER"
    m.at 56, :"BULKUP"
    m.at 63, :"DUALWINGBEAT"
    m.at 70, :"FIRSTIMPRESSION"
    m.at 77, :"WHIRLWIND"
    m.at 84, :"LEECHLIFE"
    m.at 91, :"THRASH"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"BODYPRESS", :"BODYSLAM", :"BRICKBREAK", :"BUGBITE", :"BUGBUZZ", :"BULKUP", :"CLOSECOMBAT", :"CURSE", :"DOUBLEEDGE", :"DUALWINGBEAT", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FLAMECHARGE", :"FLAREBLITZ", :"GIGADRAIN", :"GIGAIMPACT", :"HEATCRASH", :"HEATWAVE", :"HEAVYSLAM", :"HIGHHORSEPOWER", :"HURRICANE", :"HYPERBEAM", :"LEECHLIFE", :"LOWKICK", :"LOWSWEEP", :"LUNGE", :"PROTECT", :"RAINDANCE", :"REST", :"REVERSAL", :"SANDSTORM", :"SKITTERSMACK", :"SLEEPTALK", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUNNYDAY", :"TAKEDOWN", :"TEMPERFLARE", :"TRAILBLAZE", :"UTURN", :"WILDCHARGE", :"WILLOWISP", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"SLITHERWING" do |m|
  m.back_sprite 0, 35
  m.front_sprite 3, 16
  m.shadow_sprite 0, 0, 2
end