#=============================================================================
# Murkrow - DARK Type
#=============================================================================

GameData::Species.define :"MURKROW" do |pkmn|
  pkmn.name "Murkrow"
  pkmn.types :"DARK", :"FLYING"
  pkmn.base_stats hp: 60, attack: 85, defense: 42,
                  sp_atk: 91, sp_def: 85, speed: 42
  pkmn.abilities :"INSOMNIA", :"SUPERLUCK"
  pkmn.hidden_abilities :"PRANKSTER"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Black"
  pkmn.shape :"Winged"
  pkmn.base_exp 81
  pkmn.catch_rate 30
  pkmn.happiness 35
  pkmn.hatch_steps 5140
  pkmn.height 0.5
  pkmn.weight 2.1
  pkmn.category "Darkness"
  pkmn.pokedex_entry "Murkrow were feared as the alleged bearers of ill fortune. It shows strong interest in anything that sparkles. It will even try to steal rings from women."
  pkmn.evs speed: 1
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"PECK"
    m.at 1, :"ASTONISH"
    m.at 5, :"PURSUIT"
    m.at 11, :"HAZE"
    m.at 15, :"WINGATTACK"
    m.at 21, :"NIGHTSHADE"
    m.at 25, :"ASSURANCE"
    m.at 31, :"TAUNT"
    m.at 35, :"FEINTATTACK"
    m.at 41, :"MEANLOOK"
    m.at 45, :"FOULPLAY"
    m.at 51, :"TAILWIND"
    m.at 55, :"SUCKERPUNCH"
    m.at 61, :"TORMENT"
    m.at 65, :"QUASH"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"ATTRACT", :"CALMMIND", :"CAPTIVATE", :"DARKPULSE", :"DEFOG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"EMBARGO", :"ENDURE", :"FACADE", :"FLY", :"FOULPLAY", :"FRUSTRATION", :"HEATWAVE", :"HIDDENPOWER", :"ICYWIND", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PAYBACK", :"PLUCK", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"QUASH", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROOST", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SKYATTACK", :"SLEEPTALK", :"SNARL", :"SNATCH", :"SPITE", :"STEELWING", :"SUBSTITUTE", :"SUCKERPUNCH", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"TAUNT", :"THIEF", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"TWISTER", :"UPROAR"
  pkmn.egg_moves :"ASSURANCE", :"BRAVEBIRD", :"CONFUSERAY", :"DRILLPECK", :"FEATHERDANCE", :"FEINTATTACK", :"MIRRORMOVE", :"PERISHSONG", :"PSYCHOSHIFT", :"ROOST", :"SCREECH", :"SKYATTACK", :"WHIRLWIND", :"WINGATTACK"
end

GameData::SpeciesMetrics.define :"MURKROW" do |m|
  m.back_sprite 0, 0
  m.front_sprite 1, 1
  m.shadow_sprite 0, 0, 2
end