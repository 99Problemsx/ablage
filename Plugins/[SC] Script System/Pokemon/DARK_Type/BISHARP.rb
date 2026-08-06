#=============================================================================
# Bisharp - DARK Type
#=============================================================================

GameData::Species.define :"BISHARP" do |pkmn|
  pkmn.name "Bisharp"
  pkmn.types :"DARK", :"STEEL"
  pkmn.base_stats hp: 65, attack: 125, defense: 100,
                  sp_atk: 70, sp_def: 60, speed: 70
  pkmn.abilities :"DEFIANT", :"INNERFOCUS"
  pkmn.hidden_abilities :"PRESSURE"
  pkmn.call_rate_sos 15
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 172
  pkmn.catch_rate 45
  pkmn.happiness 35
  pkmn.hatch_steps 5140
  pkmn.height 1.6
  pkmn.weight 70.0
  pkmn.category "Sword Blade"
  pkmn.pokedex_entry "Bisharp pursues prey in the company of a large group of Pawniard. Then Bisharp finishes off the prey."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Humanlike"

  pkmn.moves do |m|
    m.at 1, :"METALBURST"
    m.at 1, :"SCRATCH"
    m.at 1, :"LEER"
    m.at 1, :"FURYCUTTER"
    m.at 1, :"TORMENT"
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
    m.at 57, :"IRONHEAD"
    m.at 63, :"SWORDSDANCE"
    m.at 71, :"GUILLOTINE"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BRICKBREAK", :"CAPTIVATE", :"CUT", :"DARKPULSE", :"DIG", :"DOUBLETEAM", :"DUALCHOP", :"EMBARGO", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLING", :"FOCUSBLAST", :"FOULPLAY", :"FRUSTRATION", :"GIGAIMPACT", :"GRASSKNOT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"IRONDEFENSE", :"IRONHEAD", :"KNOCKOFF", :"LOWKICK", :"LOWSWEEP", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"PAYBACK", :"POISONJAB", :"PROTECT", :"RAINDANCE", :"REST", :"RETALIATE", :"RETURN", :"ROCKPOLISH", :"ROCKSMASH", :"ROCKTOMB", :"ROLEPLAY", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SNARL", :"SNATCH", :"SNORE", :"SPITE", :"STEALTHROCK", :"STONEEDGE", :"SUBSTITUTE", :"SWAGGER", :"SWORDSDANCE", :"TAUNT", :"THIEF", :"THUNDERWAVE", :"TORMENT", :"TOXIC", :"XSCISSOR"
end

GameData::SpeciesMetrics.define :"BISHARP" do |m|
  m.back_sprite 0, 0
  m.front_sprite 2, 15
  m.shadow_sprite 0, 0, 2
end