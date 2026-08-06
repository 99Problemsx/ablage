#=============================================================================
# Bidoof - NORMAL Type
#=============================================================================

GameData::Species.define :"BIDOOF" do |pkmn|
  pkmn.name "Bidoof"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 59, attack: 45, defense: 40,
                  sp_atk: 31, sp_def: 35, speed: 40
  pkmn.abilities :"SIMPLE", :"UNAWARE"
  pkmn.hidden_abilities :"MOODY"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 50
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 0.5
  pkmn.weight 20.0
  pkmn.category "Plump Mouse"
  pkmn.pokedex_entry "With nerves of steel, nothing can perturb it. It is more agile and active than it appears."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Water1", :"Field"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 5, :"GROWL"
    m.at 9, :"DEFENSECURL"
    m.at 13, :"ROLLOUT"
    m.at 17, :"HEADBUTT"
    m.at 21, :"HYPERFANG"
    m.at 25, :"YAWN"
    m.at 29, :"AMNESIA"
    m.at 33, :"TAKEDOWN"
    m.at 37, :"SUPERFANG"
    m.at 41, :"SUPERPOWER"
    m.at 45, :"CURSE"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"BLIZZARD", :"CAPTIVATE", :"CHARGEBEAM", :"COVET", :"CUT", :"DIG", :"DOUBLETEAM", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FRUSTRATION", :"FURYCUTTER", :"GRASSKNOT", :"HEADBUTT", :"HIDDENPOWER", :"ICEBEAM", :"ICYWIND", :"IRONTAIL", :"LASTRESORT", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"PLUCK", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKSMASH", :"ROLLOUT", :"ROUND", :"SECRETPOWER", :"SHADOWBALL", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"STEALTHROCK", :"SUBSTITUTE", :"SUNNYDAY", :"SUPERFANG", :"SUPERPOWER", :"SWAGGER", :"SWIFT", :"TAUNT", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"WORKUP"
  pkmn.egg_moves :"AQUATAIL", :"DEFENSECURL", :"DOUBLEEDGE", :"ENDURE", :"FURYSWIPES", :"ODORSLEUTH", :"QUICKATTACK", :"ROCKCLIMB", :"ROLLOUT", :"SKULLBASH", :"SLEEPTALK", :"WATERSPORT"
end

GameData::SpeciesMetrics.define :"BIDOOF" do |m|
  m.back_sprite 0, 0
  m.front_sprite -1, 24
  m.shadow_sprite 0, 0, 2
end