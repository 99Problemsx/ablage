#=============================================================================
# Toxapex - POISON Type
#=============================================================================

GameData::Species.define :"TOXAPEX" do |pkmn|
  pkmn.name "Toxapex"
  pkmn.types :"POISON", :"WATER"
  pkmn.base_stats hp: 50, attack: 63, defense: 152,
                  sp_atk: 35, sp_def: 53, speed: 142
  pkmn.abilities :"MERCILESS", :"LIMBER"
  pkmn.hidden_abilities :"REGENERATOR"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"Multiped"
  pkmn.base_exp 173
  pkmn.catch_rate 75
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.7
  pkmn.weight 14.5
  pkmn.category "Brutal Star"
  pkmn.pokedex_entry "Those attacked by Toxapex's poison will suffer intense pain for three days and three nights. Post-recovery, there will be some aftereffects."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Water1"

  pkmn.moves do |m|
    m.at 0, :"BANEFULBUNKER"
    m.at 1, :"POISONSTING"
    m.at 1, :"PECK"
    m.at 1, :"WIDEGUARD"
    m.at 1, :"BITE"
    m.at 15, :"VENOSHOCK"
    m.at 20, :"RECOVER"
    m.at 25, :"PINMISSILE"
    m.at 30, :"TOXICSPIKES"
    m.at 35, :"LIQUIDATION"
    m.at 42, :"VENOMDRENCH"
    m.at 49, :"POISONJAB"
    m.at 56, :"TOXIC"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ATTRACT", :"BLIZZARD", :"BLOCK", :"BRINE", :"CAPTIVATE", :"CONFIDE", :"COVET", :"CROSSPOISON", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FROSTBREATH", :"FRUSTRATION", :"GASTROACID", :"GUNKSHOT", :"HAIL", :"HEX", :"HIDDENPOWER", :"HYDROPUMP", :"ICEBEAM", :"ICYWIND", :"INFESTATION", :"IRONDEFENSE", :"KNOCKOFF", :"LIGHTSCREEN", :"LIQUIDATION", :"MAGICCOAT", :"MIMIC", :"MUDDYWATER", :"MUDSHOT", :"NATURALGIFT", :"PAINSPLIT", :"PAYBACK", :"PINMISSILE", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SCALD", :"SECRETPOWER", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SMACKDOWN", :"SNATCH", :"SNORE", :"SPITE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"TOXIC", :"TOXICSPIKES", :"VENOMDRENCH", :"VENOSHOCK", :"WATERPULSE", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"TOXAPEX" do |m|
  m.back_sprite -2, 52
  m.front_sprite 3, 16
end