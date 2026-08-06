#=============================================================================
# Seaking - WATER Type
#=============================================================================

GameData::Species.define :"SEAKING" do |pkmn|
  pkmn.name "Seaking"
  pkmn.types :"WATER"
  pkmn.base_stats hp: 80, attack: 92, defense: 65,
                  sp_atk: 68, sp_def: 65, speed: 80
  pkmn.abilities :"SWIFTSWIM", :"WATERVEIL"
  pkmn.hidden_abilities :"LIGHTNINGROD"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"Finned"
  pkmn.base_exp 158
  pkmn.catch_rate 60
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.3
  pkmn.weight 39.0
  pkmn.category "Goldfish"
  pkmn.pokedex_entry "It punches holes in boulders on stream- beds. This is a clever innovation that prevents its eggs from being attacked or washed away by the current."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Water2"

  pkmn.moves do |m|
    m.at 1, :"POISONJAB"
    m.at 1, :"PECK"
    m.at 1, :"TAILWHIP"
    m.at 1, :"WATERSPORT"
    m.at 1, :"SUPERSONIC"
    m.at 7, :"SUPERSONIC"
    m.at 11, :"HORNATTACK"
    m.at 17, :"WATERPULSE"
    m.at 21, :"FLAIL"
    m.at 27, :"AQUARING"
    m.at 31, :"FURYATTACK"
    m.at 40, :"WATERFALL"
    m.at 47, :"HORNDRILL"
    m.at 56, :"AGILITY"
    m.at 63, :"SOAK"
    m.at 72, :"MEGAHORN"
  end
  pkmn.tutor_moves :"AQUATAIL", :"ATTRACT", :"BLIZZARD", :"BOUNCE", :"CAPTIVATE", :"DIVE", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRILLRUN", :"ENDURE", :"FACADE", :"FRUSTRATION", :"FURYCUTTER", :"GIGAIMPACT", :"HAIL", :"HIDDENPOWER", :"HYPERBEAM", :"ICEBEAM", :"ICYWIND", :"KNOCKOFF", :"MIMIC", :"MUDSLAP", :"NATURALGIFT", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETURN", :"ROUND", :"SCALD", :"SECRETPOWER", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SUBSTITUTE", :"SURF", :"SWAGGER", :"SWIFT", :"TOXIC", :"WATERFALL", :"WATERPULSE", :"WHIRLPOOL"
end

GameData::SpeciesMetrics.define :"SEAKING" do |m|
  m.back_sprite -8, 0
  m.front_sprite 8, -1
  m.shadow_sprite 0, 0, 2
end