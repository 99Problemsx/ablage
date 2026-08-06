#=============================================================================
# Klawf - ROCK Type
#=============================================================================

GameData::Species.define :"KLAWF" do |pkmn|
  pkmn.name "Klawf"
  pkmn.types :"ROCK"
  pkmn.base_stats hp: 70, attack: 100, defense: 115,
                  sp_atk: 75, sp_def: 35, speed: 55
  pkmn.abilities :"ANGERSHELL", :"SHELLARMOR"
  pkmn.hidden_abilities :"REGENERATOR"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 158
  pkmn.catch_rate 120
  pkmn.happiness 50
  pkmn.hatch_steps 8960
  pkmn.height 1.3
  pkmn.weight 79.0
  pkmn.category "Ambush"
  pkmn.pokedex_entry "Klawf hangs upside-down from cliffs, waiting for prey. But Klawf can’t remain in this position for long because its blood rushes to its head."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Water3"

  pkmn.moves do |m|
    m.at 1, :"ROCKTHROW"
    m.at 1, :"VISEGRIP"
    m.at 6, :"HARDEN"
    m.at 9, :"ROCKSMASH"
    m.at 13, :"ROCKTOMB"
    m.at 17, :"METALCLAW"
    m.at 21, :"PROTECT"
    m.at 24, :"ROCKBLAST"
    m.at 29, :"XSCISSOR"
    m.at 33, :"SWORDSDANCE"
    m.at 37, :"FLAIL"
    m.at 42, :"ROCKSLIDE"
    m.at 47, :"HIGHHORSEPOWER"
    m.at 51, :"IRONDEFENSE"
    m.at 56, :"GUILLOTINE"
  end
  pkmn.tutor_moves :"BODYSLAM", :"BRICKBREAK", :"BULLDOZE", :"DIG", :"EARTHPOWER", :"ENDEAVOR", :"ENDURE", :"FACADE", :"FLING", :"GIGAIMPACT", :"HELPINGHAND", :"HIGHHORSEPOWER", :"HYPERBEAM", :"IRONDEFENSE", :"KNOCKOFF", :"METALCLAW", :"METEORBEAM", :"MUDSHOT", :"MUDSLAP", :"POWERGEM", :"PROTECT", :"RAINDANCE", :"REST", :"REVERSAL", :"ROCKBLAST", :"ROCKSLIDE", :"ROCKTOMB", :"SANDSTORM", :"SCARYFACE", :"SHADOWCLAW", :"SKITTERSMACK", :"SLEEPTALK", :"SMACKDOWN", :"STEALTHROCK", :"STOMPINGTANTRUM", :"STONEEDGE", :"SUBSTITUTE", :"SUNNYDAY", :"SWORDSDANCE", :"TAKEDOWN", :"TEMPERFLARE", :"THIEF", :"THROATCHOP", :"TRAILBLAZE", :"XSCISSOR"
  pkmn.egg_moves :"ANCIENTPOWER", :"CRABHAMMER", :"ENDEAVOR", :"KNOCKOFF"
end

GameData::SpeciesMetrics.define :"KLAWF" do |m|
  m.back_sprite 0, 58
  m.front_sprite -2, 32
  m.shadow_sprite 0, 0, 3
end