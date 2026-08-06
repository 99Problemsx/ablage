#=============================================================================
# Pawniard - DARK Type
#=============================================================================

GameData::Species.define :"PAWNIARD" do |pkmn|
  pkmn.name "Pawniard"
  pkmn.types :"DARK", :"STEEL"
  pkmn.base_stats hp: 45, attack: 85, defense: 70,
                  sp_atk: 60, sp_def: 40, speed: 40
  pkmn.abilities :"DEFIANT", :"INNERFOCUS"
  pkmn.hidden_abilities :"PRESSURE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 68
  pkmn.catch_rate 120
  pkmn.happiness 35
  pkmn.hatch_steps 5140
  pkmn.height 0.5
  pkmn.weight 10.2
  pkmn.category "Sharp Blade"
  pkmn.pokedex_entry "They fight at Bisharp's command. They cling to their prey and inflict damage by sinking their blades into it."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"SCRATCH"
    m.at 6, :"LEER"
    m.at 9, :"FURYCUTTER"
    m.at 14, :"TORMENT"
    m.at 17, :"FEINTATTACK"
    m.at 22, :"SCARYFACE"
    m.at 25, :"METALCLAW"
    m.at 30, :"SLASH"
    m.at 33, :"ASSURANCE"
    m.at 38, :"METALSOUND"
    m.at 41, :"EMBARGO"
    m.at 46, :"IRONDEFENSE"
    m.at 49, :"NIGHTSLASH"
    m.at 54, :"IRONHEAD"
    m.at 57, :"SWORDSDANCE"
    m.at 62, :"GUILLOTINE"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BRICKBREAK", :"CAPTIVATE", :"CUT", :"DARKPULSE", :"DIG", :"DOUBLETEAM", :"DUALCHOP", :"EMBARGO", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLING", :"FOULPLAY", :"FRUSTRATION", :"GRASSKNOT", :"HIDDENPOWER", :"HONECLAWS", :"IRONDEFENSE", :"IRONHEAD", :"KNOCKOFF", :"LOWKICK", :"LOWSWEEP", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKPOLISH", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SNARL", :"SNATCH", :"SNORE", :"SPITE", :"STEALTHROCK", :"SUBSTITUTE", :"SWAGGER", :"SWORDSDANCE", :"TAUNT", :"THIEF", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"XSCISSOR"
  pkmn.egg_moves :"HEADBUTT", :"MEANLOOK", :"PSYCHOCUT", :"PURSUIT", :"REVENGE", :"STEALTHROCK", :"SUCKERPUNCH"
end

GameData::SpeciesMetrics.define :"PAWNIARD" do |m|
  m.back_sprite 2, 0
  m.front_sprite 0, 26
  m.shadow_sprite 0, 0, 2
end