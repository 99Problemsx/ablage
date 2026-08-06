#=============================================================================
# Clodsire - POISON Type
#=============================================================================

GameData::Species.define :"CLODSIRE" do |pkmn|
  pkmn.name "Clodsire"
  pkmn.types :"POISON", :"GROUND"
  pkmn.base_stats hp: 130, attack: 75, defense: 60,
                  sp_atk: 20, sp_def: 45, speed: 100
  pkmn.abilities :"POISONPOINT", :"WATERABSORB"
  pkmn.hidden_abilities :"UNAWARE"
  pkmn.flags :"DefaultForm_1", :"InheritFormWithEverStone"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 151
  pkmn.catch_rate 90
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.8
  pkmn.weight 223.0
  pkmn.category "Spiny Fish"
  pkmn.pokedex_entry "When attacked, this Pokémon will retaliate by sticking thick spines out from its body. It’s a risky move that puts everything on the line."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Water1", :"Field"

  pkmn.moves do |m|
    m.at 0, :"AMNESIA"
    m.at 1, :"POISONSTING"
    m.at 1, :"TAILWHIP"
    m.at 4, :"TOXICSPIKES"
    m.at 8, :"MUDSHOT"
    m.at 12, :"POISONTAIL"
    m.at 16, :"SLAM"
    m.at 21, :"YAWN"
    m.at 24, :"POISONJAB"
    m.at 30, :"SLUDGEWAVE"
    m.at 36, :"MEGAHORN"
    m.at 40, :"TOXIC"
    m.at 48, :"EARTHQUAKE"
  end
  pkmn.tutor_moves :"ACIDSPRAY", :"AMNESIA", :"BODYPRESS", :"BODYSLAM", :"BULLDOZE", :"CHILLINGWATER", :"CURSE", :"DIG", :"DOUBLEEDGE", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"GIGAIMPACT", :"GUNKSHOT", :"HAZE", :"HEAVYSLAM", :"HELPINGHAND", :"HIGHHORSEPOWER", :"HYDROPUMP", :"HYPERBEAM", :"IRONHEAD", :"LIQUIDATION", :"LOWKICK", :"MUDDYWATER", :"MUDSHOT", :"MUDSLAP", :"POISONJAB", :"POISONTAIL", :"PROTECT", :"RAINDANCE", :"REST", :"ROCKSLIDE", :"ROCKTOMB", :"SANDSTORM", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SPIKES", :"STEALTHROCK", :"STOMPINGTANTRUM", :"STONEEDGE", :"SUBSTITUTE", :"SURF", :"TAKEDOWN", :"TOXIC", :"TOXICSPIKES", :"TRAILBLAZE", :"VENOSHOCK", :"WATERFALL", :"WATERPULSE", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"CLODSIRE" do |m|
  m.back_sprite -5, 72
  m.front_sprite 3, 33
  m.shadow_sprite 0, 0, 3
end