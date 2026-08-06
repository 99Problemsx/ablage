#=============================================================================
# Furfrou - NORMAL Type
#=============================================================================

GameData::Species.define :"FURFROU" do |pkmn|
  pkmn.name "Furfrou"
  pkmn.form_name "Natural Form"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 75, attack: 80, defense: 60,
                  sp_atk: 102, sp_def: 65, speed: 90
  pkmn.abilities :"FURCOAT"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"White"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 165
  pkmn.catch_rate 160
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.2
  pkmn.weight 28.0
  pkmn.category "Poodle"
  pkmn.pokedex_entry "Trimming its fluffy fur not only makes it more elegant but also increases the swiftness of its movements."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"GROWL"
    m.at 5, :"SANDATTACK"
    m.at 9, :"BABYDOLLEYES"
    m.at 12, :"HEADBUTT"
    m.at 15, :"TAILWHIP"
    m.at 22, :"BITE"
    m.at 27, :"ODORSLEUTH"
    m.at 33, :"RETALIATE"
    m.at 35, :"TAKEDOWN"
    m.at 38, :"CHARM"
    m.at 42, :"SUCKERPUNCH"
    m.at 48, :"COTTONGUARD"
  end
  pkmn.tutor_moves :"ATTRACT", :"CAPTIVATE", :"CHARGEBEAM", :"CONFIDE", :"DARKPULSE", :"DIG", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLASH", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERVOICE", :"IRONTAIL", :"LASTRESORT", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROAR", :"ROCKSMASH", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SLEEPTALK", :"SNARL", :"SNORE", :"SUBSTITUTE", :"SUNNYDAY", :"SURF", :"SWAGGER", :"THUNDERWAVE", :"TOXIC", :"UPROAR", :"UTURN", :"WILDCHARGE", :"WORKUP", :"ZENHEADBUTT", :"TERABLAST"
  pkmn.egg_moves :"CAPTIVATE", :"MIMIC", :"REFRESH", :"ROLEPLAY", :"WORKUP"
end

GameData::SpeciesMetrics.define :"FURFROU" do |m|
  m.back_sprite 0, 53
  m.front_sprite -3, 8
end