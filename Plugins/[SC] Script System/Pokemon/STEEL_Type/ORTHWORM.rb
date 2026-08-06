#=============================================================================
# Orthworm - STEEL Type
#=============================================================================

GameData::Species.define :"ORTHWORM" do |pkmn|
  pkmn.name "Orthworm"
  pkmn.types :"STEEL"
  pkmn.base_stats hp: 70, attack: 85, defense: 145,
                  sp_atk: 65, sp_def: 60, speed: 55
  pkmn.abilities :"EARTHEATER"
  pkmn.hidden_abilities :"SANDVEIL"
  pkmn.call_rate_sos 3
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Pink"
  pkmn.shape :"Serpentine"
  pkmn.base_exp 240
  pkmn.catch_rate 25
  pkmn.happiness 50
  pkmn.hatch_steps 8960
  pkmn.height 2.5
  pkmn.weight 310.0
  pkmn.category "Earthworm"
  pkmn.pokedex_entry "When attacked, this Pokémon will wield the tendrils on its body like fists and pelt the opponent with a storm of punches."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"WRAP"
    m.at 1, :"HARDEN"
    m.at 7, :"MUDSLAP"
    m.at 12, :"SMACKDOWN"
    m.at 16, :"BULLDOZE"
    m.at 21, :"IRONHEAD"
    m.at 26, :"TAKEDOWN"
    m.at 30, :"DIG"
    m.at 34, :"SANDSTORM"
    m.at 38, :"IRONDEFENSE"
    m.at 43, :"IRONTAIL"
    m.at 47, :"EARTHQUAKE"
    m.at 52, :"SHEDTAIL"
  end
  pkmn.tutor_moves :"BODYPRESS", :"BODYSLAM", :"BULLDOZE", :"CURSE", :"DIG", :"DOUBLEEDGE", :"EARTHPOWER", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FLASHCANNON", :"GIGAIMPACT", :"HEAVYSLAM", :"HELPINGHAND", :"HIGHHORSEPOWER", :"HYPERBEAM", :"IRONDEFENSE", :"IRONHEAD", :"METALSOUND", :"MUDSHOT", :"MUDSLAP", :"PROTECT", :"REST", :"ROCKBLAST", :"ROCKSLIDE", :"ROCKTOMB", :"SANDSTORM", :"SANDTOMB", :"SLEEPTALK", :"SMACKDOWN", :"SPIKES", :"STEALTHROCK", :"STEELBEAM", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"TAKEDOWN"
  pkmn.egg_moves :"COIL", :"CURSE", :"METALBURST"
end

GameData::SpeciesMetrics.define :"ORTHWORM" do |m|
  m.back_sprite -8, 57
  m.front_sprite 0, 27
  m.shadow_sprite 0, 0, 3
end