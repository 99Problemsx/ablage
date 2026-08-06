#=============================================================================
# Dunsparce - NORMAL Type
#=============================================================================

GameData::Species.define :"DUNSPARCE" do |pkmn|
  pkmn.name "Dunsparce"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 100, attack: 70, defense: 70,
                  sp_atk: 45, sp_def: 65, speed: 65
  pkmn.abilities :"SERENEGRACE", :"RUNAWAY"
  pkmn.hidden_abilities :"RATTLED"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Yellow"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 145
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.5
  pkmn.weight 14.0
  pkmn.category "Land Snake"
  pkmn.pokedex_entry "Its drill-tipped tail is used to burrow into the ground backwards. This Pokémon is known to make its nest in complex shapes deep under the ground."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"RAGE"
    m.at 1, :"DEFENSECURL"
    m.at 4, :"ROLLOUT"
    m.at 7, :"SPITE"
    m.at 10, :"PURSUIT"
    m.at 13, :"SCREECH"
    m.at 16, :"YAWN"
    m.at 19, :"ANCIENTPOWER"
    m.at 22, :"TAKEDOWN"
    m.at 25, :"ROOST"
    m.at 28, :"GLARE"
    m.at 31, :"DIG"
    m.at 34, :"DOUBLEEDGE"
    m.at 37, :"COIL"
    m.at 40, :"ENDURE"
    m.at 43, :"DRILLRUN"
    m.at 46, :"ENDEAVOR"
    m.at 49, :"FLAIL"
  end
  pkmn.tutor_moves :"ANCIENTPOWER", :"AQUATAIL", :"ATTRACT", :"BIND", :"BLIZZARD", :"BODYSLAM", :"BULLDOZE", :"CALMMIND", :"CAPTIVATE", :"CHARGEBEAM", :"COUNTER", :"DEFENSECURL", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DREAMEATER", :"DRILLRUN", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FRUSTRATION", :"GYROBALL", :"HEADBUTT", :"HIDDENPOWER", :"ICEBEAM", :"INCINERATE", :"IRONTAIL", :"LASTRESORT", :"MAGICCOAT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PAINSPLIT", :"POISONJAB", :"PROTECT", :"PSYCHUP", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLLOUT", :"ROOST", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SPITE", :"STEALTHROCK", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"WATERPULSE", :"WILDCHARGE", :"ZENHEADBUTT"
  pkmn.egg_moves :"AGILITY", :"ANCIENTPOWER", :"ASTONISH", :"BIDE", :"BITE", :"CURSE", :"HEADBUTT", :"HEX", :"MAGICCOAT", :"SECRETPOWER", :"SLEEPTALK", :"SNORE", :"TRUMPCARD"
end

GameData::SpeciesMetrics.define :"DUNSPARCE" do |m|
  m.back_sprite 0, 0
  m.front_sprite 5, 18
  m.shadow_sprite 0, 0, 3
end