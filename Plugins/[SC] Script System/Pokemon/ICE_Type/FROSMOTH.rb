#=============================================================================
# Frosmoth - ICE Type
#=============================================================================

GameData::Species.define :"FROSMOTH" do |pkmn|
  pkmn.name "Frosmoth"
  pkmn.types :"ICE", :"BUG"
  pkmn.base_stats hp: 70, attack: 65, defense: 60,
                  sp_atk: 65, sp_def: 125, speed: 90
  pkmn.abilities :"SHIELDDUST"
  pkmn.hidden_abilities :"ICESCALES"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"White"
  pkmn.shape :"MultiWinged"
  pkmn.base_exp 168
  pkmn.catch_rate 75
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.3
  pkmn.weight 42.0
  pkmn.category "Frost Moth"
  pkmn.pokedex_entry "It shows no mercy to any who desecrate fields and mountains. It will fly around on its icy wings, causing a blizzard to chase offenders away."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 0, :"ICYWIND"
    m.at 1, :"POWDERSNOW"
    m.at 1, :"STRUGGLEBUG"
    m.at 1, :"HELPINGHAND"
    m.at 1, :"ATTRACT"
    m.at 4, :"STUNSPORE"
    m.at 8, :"INFESTATION"
    m.at 12, :"MIST"
    m.at 16, :"DEFOG"
    m.at 21, :"FEATHERDANCE"
    m.at 24, :"AURORABEAM"
    m.at 28, :"HAIL"
    m.at 32, :"BUGBUZZ"
    m.at 36, :"AURORAVEIL"
    m.at 40, :"BLIZZARD"
    m.at 44, :"TAILWIND"
    m.at 48, :"WIDEGUARD"
    m.at 52, :"QUIVERDANCE"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AIRSLASH", :"ATTRACT", :"AVALANCHE", :"BLIZZARD", :"BUGBUZZ", :"CALMMIND", :"CAPTIVATE", :"CONFIDE", :"DAZZLINGGLEAM", :"DOUBLETEAM", :"DUALWINGBEAT", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"HAIL", :"HELPINGHAND", :"HIDDENPOWER", :"HURRICANE", :"HYPERBEAM", :"ICEBEAM", :"ICICLESPEAR", :"ICYWIND", :"IMPRISON", :"LEECHLIFE", :"LIGHTSCREEN", :"MIMIC", :"NATURALGIFT", :"PLAYROUGH", :"PROTECT", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SKITTERSMACK", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SWAGGER", :"TOXIC", :"TRIPLEAXEL", :"UTURN", :"WEATHERBALL", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"FROSMOTH" do |m|
  m.back_sprite 9, 42
  m.front_sprite 7, 0
  m.shadow_sprite 0, 0, -2
end