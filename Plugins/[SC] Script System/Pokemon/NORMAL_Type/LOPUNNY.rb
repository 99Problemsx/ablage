#=============================================================================
# Lopunny - NORMAL Type
#=============================================================================

GameData::Species.define :"LOPUNNY" do |pkmn|
  pkmn.name "Lopunny"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 65, attack: 76, defense: 84,
                  sp_atk: 105, sp_def: 54, speed: 96
  pkmn.abilities :"CUTECHARM", :"KLUTZ"
  pkmn.hidden_abilities :"LIMBER"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 168
  pkmn.catch_rate 60
  pkmn.happiness 140
  pkmn.hatch_steps 5140
  pkmn.height 1.2
  pkmn.weight 33.3
  pkmn.category "Rabbit"
  pkmn.pokedex_entry "An extremely cautious Pokémon. It cloaks its body with its fluffy ear fur when it senses danger."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Field", :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"MIRRORCOAT"
    m.at 1, :"MAGICCOAT"
    m.at 1, :"SPLASH"
    m.at 1, :"POUND"
    m.at 1, :"DEFENSECURL"
    m.at 1, :"FORESIGHT"
    m.at 6, :"ENDURE"
    m.at 13, :"RETURN"
    m.at 16, :"QUICKATTACK"
    m.at 23, :"JUMPKICK"
    m.at 26, :"BATONPASS"
    m.at 33, :"AGILITY"
    m.at 36, :"DIZZYPUNCH"
    m.at 43, :"AFTERYOU"
    m.at 46, :"CHARM"
    m.at 53, :"ENTRAINMENT"
    m.at 56, :"BOUNCE"
    m.at 63, :"HEALINGWISH"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ATTRACT", :"BLIZZARD", :"BOUNCE", :"CAPTIVATE", :"CHARGEBEAM", :"COVET", :"CUT", :"DIG", :"DOUBLETEAM", :"DRAINPUNCH", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREPUNCH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"GRASSKNOT", :"HEADBUTT", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"ICEBEAM", :"ICEPUNCH", :"IRONTAIL", :"LASTRESORT", :"LOWKICK", :"LOWSWEEP", :"MAGICCOAT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKSMASH", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"THUNDER", :"THUNDERBOLT", :"THUNDERPUNCH", :"THUNDERWAVE", :"TOXIC", :"UPROAR", :"WATERPULSE", :"WORKUP"
end

GameData::SpeciesMetrics.define :"LOPUNNY" do |m|
  m.back_sprite -6, 0
  m.front_sprite -1, 10
  m.shadow_sprite 0, 0, 2
end