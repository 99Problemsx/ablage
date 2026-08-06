#=============================================================================
# Fearow - NORMAL Type
#=============================================================================

GameData::Species.define :"FEAROW" do |pkmn|
  pkmn.name "Fearow"
  pkmn.types :"NORMAL", :"FLYING"
  pkmn.base_stats hp: 65, attack: 90, defense: 65,
                  sp_atk: 100, sp_def: 61, speed: 61
  pkmn.abilities :"KEENEYE"
  pkmn.hidden_abilities :"SNIPER"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Winged"
  pkmn.base_exp 155
  pkmn.catch_rate 90
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 1.2
  pkmn.weight 38.0
  pkmn.category "Beak"
  pkmn.pokedex_entry "Its long neck and elongated beak are ideal for catching prey in soil or water. It deftly moves this extended and skinny beak to pluck prey."
  pkmn.evs speed: 2
  pkmn.egg_groups :"Flying"

  pkmn.moves do |m|
    m.at 1, :"PLUCK"
    m.at 1, :"PECK"
    m.at 1, :"GROWL"
    m.at 1, :"LEER"
    m.at 1, :"FURYATTACK"
    m.at 5, :"LEER"
    m.at 9, :"FURYATTACK"
    m.at 13, :"PURSUIT"
    m.at 17, :"AERIALACE"
    m.at 23, :"MIRRORMOVE"
    m.at 29, :"AGILITY"
    m.at 35, :"ASSURANCE"
    m.at 41, :"ROOST"
    m.at 47, :"DRILLPECK"
    m.at 53, :"DRILLRUN"
  end
  pkmn.tutor_moves :"AERIALACE", :"AIRCUTTER", :"ATTRACT", :"CAPTIVATE", :"DEFOG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRILLRUN", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLY", :"FRUSTRATION", :"GIGAIMPACT", :"HEATWAVE", :"HIDDENPOWER", :"HYPERBEAM", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"OMINOUSWIND", :"PLUCK", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROOST", :"ROUND", :"SECRETPOWER", :"SKYATTACK", :"SLEEPTALK", :"SNORE", :"STEELWING", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TAILWIND", :"THIEF", :"TOXIC", :"TWISTER", :"UPROAR", :"UTURN", :"WORKUP"
end

GameData::SpeciesMetrics.define :"FEAROW" do |m|
  m.back_sprite 10, 0
  m.front_sprite 1, -6
  m.shadow_sprite 0, 0, 2
end