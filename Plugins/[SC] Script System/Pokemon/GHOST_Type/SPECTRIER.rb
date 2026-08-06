#=============================================================================
# Spectrier - GHOST Type
#=============================================================================

GameData::Species.define :"SPECTRIER" do |pkmn|
  pkmn.name "Spectrier"
  pkmn.types :"GHOST"
  pkmn.base_stats hp: 100, attack: 65, defense: 60,
                  sp_atk: 130, sp_def: 145, speed: 80
  pkmn.abilities :"GRIMNEIGH"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Black"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 290
  pkmn.catch_rate 3
  pkmn.happiness 35
  pkmn.hatch_steps 30720
  pkmn.height 2.0
  pkmn.weight 44.5
  pkmn.category "Swift Horse"
  pkmn.pokedex_entry "As it dashes through the night, Spectrier absorbs the life-force of sleeping creatures. It craves silence and solitude."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"TAILWHIP"
    m.at 6, :"DOUBLEKICK"
    m.at 12, :"HEX"
    m.at 18, :"STOMP"
    m.at 24, :"CONFUSERAY"
    m.at 30, :"HAZE"
    m.at 36, :"SHADOWBALL"
    m.at 42, :"TAKEDOWN"
    m.at 48, :"AGILITY"
    m.at 54, :"THRASH"
    m.at 60, :"DISABLE"
    m.at 66, :"DOUBLEEDGE"
    m.at 72, :"NASTYPLOT"
  end
  pkmn.tutor_moves :"AGILITY", :"ASSURANCE", :"BODYSLAM", :"BULLDOZE", :"CALMMIND", :"CONFIDE", :"CRUNCH", :"DARKPULSE", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"HEX", :"HIDDENPOWER", :"HYPERBEAM", :"LASHOUT", :"MIMIC", :"MUDSHOT", :"NASTYPLOT", :"NATURALGIFT", :"PAYBACK", :"PHANTOMFORCE", :"PROTECT", :"PSYCHOCUT", :"REST", :"RETURN", :"ROUND", :"SCARYFACE", :"SECRETPOWER", :"SHADOWBALL", :"SLEEPTALK", :"SNARL", :"SNORE", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SWAGGER", :"SWIFT", :"TAUNT", :"TOXIC", :"UPROAR", :"WILLOWISP", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"SPECTRIER" do |m|
  m.back_sprite -3, 49
  m.front_sprite 2, 14
end