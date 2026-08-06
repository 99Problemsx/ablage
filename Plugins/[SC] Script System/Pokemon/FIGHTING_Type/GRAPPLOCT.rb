#=============================================================================
# Grapploct - FIGHTING Type
#=============================================================================

GameData::Species.define :"GRAPPLOCT" do |pkmn|
  pkmn.name "Grapploct"
  pkmn.types :"FIGHTING"
  pkmn.base_stats hp: 80, attack: 118, defense: 90,
                  sp_atk: 42, sp_def: 70, speed: 80
  pkmn.abilities :"LIMBER"
  pkmn.hidden_abilities :"TECHNICIAN"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Blue"
  pkmn.shape :"Multiped"
  pkmn.base_exp 168
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 6400
  pkmn.height 1.6
  pkmn.weight 39.0
  pkmn.category "Jujitsu"
  pkmn.pokedex_entry "A body made up of nothing but muscle makes the grappling moves this Pokémon performs with its tentacles tremendously powerful."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Water1", :"Humanlike"

  pkmn.moves do |m|
    m.at 0, :"OCTOLOCK"
    m.at 1, :"OCTAZOOKA"
    m.at 1, :"ROCKSMASH"
    m.at 1, :"LEER"
    m.at 1, :"FEINT"
    m.at 1, :"BIND"
    m.at 15, :"DETECT"
    m.at 20, :"BRICKBREAK"
    m.at 25, :"BULKUP"
    m.at 30, :"SUBMISSION"
    m.at 35, :"TAUNT"
    m.at 40, :"REVERSAL"
    m.at 45, :"SUPERPOWER"
    m.at 50, :"TOPSYTURVY"
  end
  pkmn.tutor_moves :"ATTRACT", :"BODYSLAM", :"BRICKBREAK", :"BRINE", :"BRUTALSWING", :"BULKUP", :"CAPTIVATE", :"CLOSECOMBAT", :"COACHING", :"CONFIDE", :"DIG", :"DIVE", :"DOUBLETEAM", :"DRAINPUNCH", :"ENDURE", :"FACADE", :"FOCUSBLAST", :"FRUSTRATION", :"GIGAIMPACT", :"HIDDENPOWER", :"HYDROPUMP", :"HYPERBEAM", :"ICEPUNCH", :"LIQUIDATION", :"MEGAPUNCH", :"MIMIC", :"MUDDYWATER", :"MUDSHOT", :"NATURALGIFT", :"PAYBACK", :"PROTECT", :"REST", :"RETALIATE", :"RETURN", :"REVENGE", :"REVERSAL", :"ROUND", :"SCARYFACE", :"SECRETPOWER", :"SKITTERSMACK", :"SLEEPTALK", :"SNORE", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUPERPOWER", :"SURF", :"SWAGGER", :"TAUNT", :"TOXIC", :"WATERFALL", :"WHIRLPOOL", :"WORKUP", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"GRAPPLOCT" do |m|
  m.back_sprite 4, 50
  m.front_sprite -6, 20
end