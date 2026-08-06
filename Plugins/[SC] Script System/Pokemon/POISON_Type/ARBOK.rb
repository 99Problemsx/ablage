#=============================================================================
# Arbok - POISON Type
#=============================================================================

GameData::Species.define :"ARBOK" do |pkmn|
  pkmn.name "Arbok"
  pkmn.types :"POISON"
  pkmn.base_stats hp: 60, attack: 85, defense: 69,
                  sp_atk: 80, sp_def: 65, speed: 79
  pkmn.abilities :"INTIMIDATE", :"SHEDSKIN"
  pkmn.hidden_abilities :"UNNERVE"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Purple"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 153
  pkmn.catch_rate 90
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 3.5
  pkmn.weight 65.0
  pkmn.category "Cobra"
  pkmn.pokedex_entry "This Pokémon has a terrifically strong constricting power. It can even flatten steel oil drums. Once it wraps its body around its foe, escaping is impossible."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Field", :"Dragon"

  pkmn.moves do |m|
    m.at 1, :"ICEFANG"
    m.at 1, :"THUNDERFANG"
    m.at 1, :"FIREFANG"
    m.at 1, :"WRAP"
    m.at 1, :"LEER"
    m.at 1, :"POISONSTING"
    m.at 1, :"BITE"
    m.at 4, :"POISONSTING"
    m.at 9, :"BITE"
    m.at 12, :"GLARE"
    m.at 17, :"SCREECH"
    m.at 20, :"ACID"
    m.at 22, :"CRUNCH"
    m.at 27, :"STOCKPILE"
    m.at 27, :"SWALLOW"
    m.at 27, :"SPITUP"
    m.at 32, :"ACIDSPRAY"
    m.at 39, :"MUDBOMB"
    m.at 44, :"GASTROACID"
    m.at 51, :"HAZE"
    m.at 56, :"COIL"
    m.at 63, :"GUNKSHOT"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"BIND", :"BODYSLAM", :"BULLDOZE", :"CAPTIVATE", :"DARKPULSE", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAGONTAIL", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GASTROACID", :"GIGADRAIN", :"GIGAIMPACT", :"GUNKSHOT", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"IRONTAIL", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SECRETPOWER", :"SEEDBOMB", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SNATCH", :"SNORE", :"SPITE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"THIEF", :"TORMENT", :"TOXIC", :"VENOSHOCK"
end

GameData::SpeciesMetrics.define :"ARBOK" do |m|
  m.back_sprite 0, 0
  m.front_sprite 2, 11
  m.shadow_sprite 0, 0, 3
end