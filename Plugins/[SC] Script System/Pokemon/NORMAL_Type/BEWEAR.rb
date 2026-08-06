#=============================================================================
# Bewear - NORMAL Type
#=============================================================================

GameData::Species.define :"BEWEAR" do |pkmn|
  pkmn.name "Bewear"
  pkmn.types :"NORMAL", :"FIGHTING"
  pkmn.base_stats hp: 120, attack: 125, defense: 80,
                  sp_atk: 60, sp_def: 55, speed: 60
  pkmn.abilities :"FLUFFY", :"KLUTZ"
  pkmn.hidden_abilities :"UNNERVE"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Pink"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 175
  pkmn.catch_rate 70
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 2.1
  pkmn.weight 135.0
  pkmn.category "Strong Arm"
  pkmn.pokedex_entry "It waves its hands wildly in intimidation and warning. Life is over for anyone who doesn't run away as fast as possible."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 0, :"BIND"
    m.at 1, :"TACKLE"
    m.at 1, :"LEER"
    m.at 1, :"BABYDOLLEYES"
    m.at 1, :"PAYBACK"
    m.at 12, :"BRUTALSWING"
    m.at 16, :"ENDURE"
    m.at 20, :"STRENGTH"
    m.at 24, :"TAKEDOWN"
    m.at 30, :"FLAIL"
    m.at 36, :"HAMMERARM"
    m.at 42, :"THRASH"
    m.at 48, :"PAINSPLIT"
    m.at 54, :"DOUBLEEDGE"
    m.at 60, :"SUPERPOWER"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BIND", :"BODYPRESS", :"BODYSLAM", :"BRICKBREAK", :"BRUTALSWING", :"BULKUP", :"BULLDOZE", :"CAPTIVATE", :"CHARM", :"CLOSECOMBAT", :"COACHING", :"CONFIDE", :"DARKESTLARIAT", :"DOUBLETEAM", :"DRAGONCLAW", :"DRAINPUNCH", :"DUALCHOP", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGAIMPACT", :"HIDDENPOWER", :"HIGHHORSEPOWER", :"HYPERBEAM", :"ICEPUNCH", :"IRONHEAD", :"LOWKICK", :"LOWSWEEP", :"MEGAKICK", :"MEGAPUNCH", :"MIMIC", :"NATURALGIFT", :"PAINSPLIT", :"PAYBACK", :"PROTECT", :"REST", :"RETURN", :"REVENGE", :"REVERSAL", :"ROAR", :"ROCKSLIDE", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUPERPOWER", :"SWAGGER", :"SWORDSDANCE", :"TAUNT", :"THUNDERPUNCH", :"TOXIC", :"WORKUP", :"ZENHEADBUTT", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"BEWEAR" do |m|
  m.back_sprite 3, 26
  m.front_sprite -1, 5
end