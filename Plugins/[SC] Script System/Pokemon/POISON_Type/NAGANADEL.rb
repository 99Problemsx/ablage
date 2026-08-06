#=============================================================================
# Naganadel - POISON Type
#=============================================================================

GameData::Species.define :"NAGANADEL" do |pkmn|
  pkmn.name "Naganadel"
  pkmn.types :"POISON", :"DRAGON"
  pkmn.base_stats hp: 73, attack: 73, defense: 73,
                  sp_atk: 121, sp_def: 127, speed: 73
  pkmn.abilities :"BEASTBOOST"
  pkmn.flags :"UltraBeast"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Purple"
  pkmn.shape :"Winged"
  pkmn.base_exp 270
  pkmn.catch_rate 45
  pkmn.happiness 0
  pkmn.hatch_steps 30720
  pkmn.height 3.6
  pkmn.weight 150.0
  pkmn.category "Poison Pin"
  pkmn.pokedex_entry "One kind of Ultra Beast, it fires a glowing, venomous liquid from its needles. This liquid is also immensely adhesive."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 0, :"AIRCUTTER"
    m.at 1, :"AIRSLASH"
    m.at 1, :"DRAGONPULSE"
    m.at 1, :"PECK"
    m.at 1, :"GROWL"
    m.at 1, :"HELPINGHAND"
    m.at 1, :"ACID"
    m.at 7, :"FURYATTACK"
    m.at 14, :"FELLSTINGER"
    m.at 21, :"CHARM"
    m.at 28, :"VENOSHOCK"
    m.at 35, :"VENOMDRENCH"
    m.at 42, :"NASTYPLOT"
    m.at 49, :"POISONJAB"
    m.at 56, :"GASTROACID"
    m.at 63, :"TOXIC"
    m.at 70, :"DRAGONRUSH"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AIRSLASH", :"ALLYSWITCH", :"ASSURANCE", :"BREAKINGSWIPE", :"CHARM", :"CONFIDE", :"CROSSPOISON", :"DARKPULSE", :"DOUBLETEAM", :"DRACOMETEOR", :"DRAGONCLAW", :"DRAGONDANCE", :"DRAGONPULSE", :"DRAGONTAIL", :"DUALWINGBEAT", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FLY", :"FRUSTRATION", :"GASTROACID", :"GIGAIMPACT", :"GUNKSHOT", :"HEATWAVE", :"HELPINGHAND", :"HEX", :"HIDDENPOWER", :"HYPERBEAM", :"IRONTAIL", :"LASERFOCUS", :"LEECHLIFE", :"MIMIC", :"NASTYPLOT", :"NATURALGIFT", :"OUTRAGE", :"PINMISSILE", :"POISONJAB", :"PROTECT", :"REST", :"RETURN", :"ROUND", :"SCALESHOT", :"SECRETPOWER", :"SHADOWCLAW", :"SHOCKWAVE", :"SIGNALBEAM", :"SKYATTACK", :"SKYDROP", :"SLEEPTALK", :"SLUDGEBOMB", :"SLUDGEWAVE", :"SMARTSTRIKE", :"SNARL", :"SNATCH", :"SNORE", :"SPIKES", :"SUBSTITUTE", :"SWIFT", :"TAILWIND", :"THIEF", :"THROATCHOP", :"THUNDERBOLT", :"TOXIC", :"TOXICSPIKES", :"UPROAR", :"UTURN", :"VENOMDRENCH", :"VENOSHOCK", :"XSCISSOR", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"NAGANADEL" do |m|
  m.back_sprite 0, 46
  m.front_sprite -3, 2
end