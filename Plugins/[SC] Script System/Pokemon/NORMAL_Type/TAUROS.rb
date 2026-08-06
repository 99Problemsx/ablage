#=============================================================================
# Tauros - NORMAL Type
#=============================================================================

GameData::Species.define :"TAUROS" do |pkmn|
  pkmn.name "Tauros"
  pkmn.types :"NORMAL"
  pkmn.base_stats hp: 75, attack: 100, defense: 95,
                  sp_atk: 110, sp_def: 40, speed: 70
  pkmn.abilities :"INTIMIDATE", :"ANGERPOINT"
  pkmn.hidden_abilities :"SHEERFORCE"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"AlwaysMale"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Brown"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 172
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.4
  pkmn.weight 88.4
  pkmn.category "Wild Bull"
  pkmn.pokedex_entry "It is not satisfied unless it is rampaging at all times. If there is no opponent for Tauros to battle, it will charge at thick trees and knock them down to calm itself."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 3, :"TAILWHIP"
    m.at 5, :"RAGE"
    m.at 8, :"HORNATTACK"
    m.at 11, :"SCARYFACE"
    m.at 15, :"PURSUIT"
    m.at 19, :"REST"
    m.at 24, :"PAYBACK"
    m.at 29, :"WORKUP"
    m.at 35, :"ZENHEADBUTT"
    m.at 41, :"TAKEDOWN"
    m.at 48, :"SWAGGER"
    m.at 55, :"THRASH"
    m.at 63, :"GIGAIMPACT"
  end
  pkmn.tutor_moves :"ATTRACT", :"BLIZZARD", :"BODYSLAM", :"BULLDOZE", :"CAPTIVATE", :"DOUBLEEDGE", :"DOUBLETEAM", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREBLAST", :"FLAMETHROWER", :"FRUSTRATION", :"GIGAIMPACT", :"HEADBUTT", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"INCINERATE", :"IRONHEAD", :"IRONTAIL", :"MIMIC", :"NATURALGIFT", :"OUTRAGE", :"PAYBACK", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKCLIMB", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"SPITE", :"STONEEDGE", :"STRENGTH", :"SUBSTITUTE", :"SUNNYDAY", :"SURF", :"SWAGGER", :"THUNDER", :"THUNDERBOLT", :"TOXIC", :"UPROAR", :"WATERPULSE", :"WHIRLPOOL", :"WILDCHARGE", :"WORKUP", :"ZENHEADBUTT"
  pkmn.egg_moves :"CURSE", :"ENDEAVOR"
end

GameData::SpeciesMetrics.define :"TAUROS" do |m|
  m.back_sprite -1, 0
  m.front_sprite 1, 13
  m.shadow_sprite 0, 0, 3
end

# Form 1 - Paldean (Combat Breed)
GameData::Species.define :"TAUROS_1" do |pkmn|
  pkmn.species :"TAUROS"
  pkmn.form 1
  pkmn.name "Tauros"
  pkmn.form_name "Paldean (Combat Breed)"
  pkmn.types :"FIGHTING"
  pkmn.base_stats hp: 75, attack: 110, defense: 105,
                  sp_atk: 100, sp_def: 30, speed: 70
  pkmn.abilities :"INTIMIDATE", :"ANGERPOINT"
  pkmn.hidden_abilities :"CUDCHEW"
  pkmn.flags :"InheritFormWithEverStone"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"AlwaysMale"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Black"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 172
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.4
  pkmn.weight 115.0
  pkmn.category "Wild Bull"
  pkmn.pokedex_entry "This kind of Tauros, known as the Combat Breed, is distinguished by its thick, powerful muscles and its fierce disposition."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"TAILWHIP"
    m.at 1, :"TACKLE"
    m.at 5, :"WORKUP"
    m.at 10, :"DOUBLEKICK"
    m.at 15, :"ASSURANCE"
    m.at 20, :"HEADBUTT"
    m.at 25, :"SCARYFACE"
    m.at 30, :"ZENHEADBUTT"
    m.at 35, :"RAGINGBULL"
    m.at 40, :"REST"
    m.at 45, :"SWAGGER"
    m.at 50, :"THRASH"
    m.at 55, :"DOUBLEEDGE"
    m.at 60, :"CLOSECOMBAT"
  end
  pkmn.tutor_moves :"BODYPRESS", :"BODYSLAM", :"BULKUP", :"BULLDOZE", :"CLOSECOMBAT", :"CURSE", :"DIG", :"DOUBLEEDGE", :"DRILLRUN", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"GIGAIMPACT", :"HIGHHORSEPOWER", :"HYPERBEAM", :"IRONHEAD", :"LASHOUT", :"OUTRAGE", :"PROTECT", :"RAINDANCE", :"REST", :"REVERSAL", :"ROCKSLIDE", :"ROCKTOMB", :"SANDSTORM", :"SCARYFACE", :"SLEEPTALK", :"SMARTSTRIKE", :"STOMPINGTANTRUM", :"STONEEDGE", :"SUBSTITUTE", :"SUNNYDAY", :"SURF", :"TAKEDOWN", :"THIEF", :"THROATCHOP", :"TRAILBLAZE", :"WILDCHARGE", :"ZENHEADBUTT"
  pkmn.egg_moves :"CURSE", :"ENDEAVOR"
end

GameData::SpeciesMetrics.define :"TAUROS_1" do |m|
  m.back_sprite -4, 54
  m.front_sprite -2, 23
  m.shadow_sprite 0, 0, 2
end

# Form 2 - Paldean (Blaze Breed)
GameData::Species.define :"TAUROS_2" do |pkmn|
  pkmn.species :"TAUROS"
  pkmn.form 2
  pkmn.name "Tauros"
  pkmn.form_name "Paldean (Blaze Breed)"
  pkmn.types :"FIGHTING", :"FIRE"
  pkmn.base_stats hp: 75, attack: 110, defense: 105,
                  sp_atk: 100, sp_def: 30, speed: 70
  pkmn.abilities :"INTIMIDATE", :"ANGERPOINT"
  pkmn.hidden_abilities :"CUDCHEW"
  pkmn.flags :"InheritFormWithEverStone"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"AlwaysMale"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Black"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 172
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.4
  pkmn.weight 85.0
  pkmn.category "Wild Bull"
  pkmn.pokedex_entry "People call this kind of Tauros the Blaze Breed due to the hot air it snorts from its nostrils. Its three tails are intertwined."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"TAILWHIP"
    m.at 1, :"TACKLE"
    m.at 5, :"WORKUP"
    m.at 10, :"DOUBLEKICK"
    m.at 15, :"FLAMECHARGE"
    m.at 20, :"HEADBUTT"
    m.at 25, :"SCARYFACE"
    m.at 30, :"ZENHEADBUTT"
    m.at 35, :"RAGINGBULL"
    m.at 40, :"REST"
    m.at 45, :"SWAGGER"
    m.at 50, :"THRASH"
    m.at 55, :"FLAREBLITZ"
    m.at 60, :"CLOSECOMBAT"
  end
  pkmn.tutor_moves :"BODYPRESS", :"BODYSLAM", :"BULKUP", :"BULLDOZE", :"CLOSECOMBAT", :"CURSE", :"DIG", :"DOUBLEEDGE", :"DRILLRUN", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIRESPIN", :"FLAMECHARGE", :"FLAMETHROWER", :"FLAREBLITZ", :"GIGAIMPACT", :"HIGHHORSEPOWER", :"HYPERBEAM", :"IRONHEAD", :"LASHOUT", :"OUTRAGE", :"OVERHEAT", :"PROTECT", :"RAINDANCE", :"REST", :"REVERSAL", :"ROCKSLIDE", :"ROCKTOMB", :"SANDSTORM", :"SCARYFACE", :"SLEEPTALK", :"SMARTSTRIKE", :"STOMPINGTANTRUM", :"STONEEDGE", :"SUBSTITUTE", :"SUNNYDAY", :"TAKEDOWN", :"TEMPERFLARE", :"THIEF", :"TRAILBLAZE", :"WILDCHARGE", :"WILLOWISP", :"ZENHEADBUTT"
  pkmn.egg_moves :"CURSE", :"ENDEAVOR"
end

GameData::SpeciesMetrics.define :"TAUROS_2" do |m|
  m.back_sprite -4, 54
  m.front_sprite -3, 21
  m.shadow_sprite 0, 0, 2
end

# Form 3 - Paldean (Aqua Breed)
GameData::Species.define :"TAUROS_3" do |pkmn|
  pkmn.species :"TAUROS"
  pkmn.form 3
  pkmn.name "Tauros"
  pkmn.form_name "Paldean (Aqua Breed)"
  pkmn.types :"FIGHTING", :"WATER"
  pkmn.base_stats hp: 75, attack: 110, defense: 105,
                  sp_atk: 100, sp_def: 30, speed: 70
  pkmn.abilities :"INTIMIDATE", :"ANGERPOINT"
  pkmn.hidden_abilities :"CUDCHEW"
  pkmn.flags :"InheritFormWithEverStone"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"AlwaysMale"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Black"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 172
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.4
  pkmn.weight 110.0
  pkmn.category "Wild Bull"
  pkmn.pokedex_entry "It swims by jetting water from its horns. The most notable characteristic of the Aqua Breed is its high body fat, which allows it to float easily."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"TAILWHIP"
    m.at 1, :"TACKLE"
    m.at 5, :"WORKUP"
    m.at 10, :"DOUBLEKICK"
    m.at 15, :"AQUAJET"
    m.at 20, :"HEADBUTT"
    m.at 25, :"SCARYFACE"
    m.at 30, :"ZENHEADBUTT"
    m.at 35, :"RAGINGBULL"
    m.at 40, :"REST"
    m.at 45, :"SWAGGER"
    m.at 50, :"THRASH"
    m.at 55, :"WAVECRASH"
    m.at 60, :"CLOSECOMBAT"
  end
  pkmn.tutor_moves :"BODYPRESS", :"BODYSLAM", :"BULKUP", :"BULLDOZE", :"CHILLINGWATER", :"CLOSECOMBAT", :"CURSE", :"DIG", :"DOUBLEEDGE", :"DRILLRUN", :"EARTHQUAKE", :"ENDEAVOR", :"ENDURE", :"FACADE", :"GIGAIMPACT", :"HIGHHORSEPOWER", :"HYDROPUMP", :"HYPERBEAM", :"IRONHEAD", :"LASHOUT", :"LIQUIDATION", :"OUTRAGE", :"PROTECT", :"RAINDANCE", :"REST", :"REVERSAL", :"ROCKSLIDE", :"ROCKTOMB", :"SANDSTORM", :"SCARYFACE", :"SLEEPTALK", :"SMARTSTRIKE", :"STOMPINGTANTRUM", :"STONEEDGE", :"SUBSTITUTE", :"SURF", :"TAKEDOWN", :"THIEF", :"TRAILBLAZE", :"WATERPULSE", :"WHIRLPOOL", :"WILDCHARGE", :"ZENHEADBUTT"
  pkmn.egg_moves :"CURSE", :"ENDEAVOR"
end

GameData::SpeciesMetrics.define :"TAUROS_3" do |m|
  m.back_sprite -4, 54
  m.front_sprite -4, 24
  m.shadow_sprite 0, 0, 2
end