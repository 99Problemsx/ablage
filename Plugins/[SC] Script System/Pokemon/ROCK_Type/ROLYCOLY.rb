#=============================================================================
# Rolycoly - ROCK Type
#=============================================================================

GameData::Species.define :"ROLYCOLY" do |pkmn|
  pkmn.name "Rolycoly"
  pkmn.types :"ROCK"
  pkmn.base_stats hp: 30, attack: 40, defense: 50,
                  sp_atk: 30, sp_def: 40, speed: 50
  pkmn.abilities :"STEAMENGINE", :"HEATPROOF"
  pkmn.hidden_abilities :"FLASHFIRE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Black"
  pkmn.shape :"Head"
  pkmn.base_exp 48
  pkmn.catch_rate 255
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 0.3
  pkmn.weight 12.0
  pkmn.category "Coal"
  pkmn.pokedex_entry "Most of its body has the same composition as coal. Fittingly, this Pokémon was first discovered in coal mines about 400 years ago."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"SMOKESCREEN"
    m.at 5, :"RAPIDSPIN"
    m.at 10, :"SMACKDOWN"
    m.at 15, :"ROCKPOLISH"
    m.at 20, :"ANCIENTPOWER"
    m.at 25, :"INCINERATE"
    m.at 30, :"STEALTHROCK"
    m.at 35, :"HEATCRASH"
    m.at 40, :"ROCKBLAST"
  end
  pkmn.tutor_moves :"ATTRACT", :"CAPTIVATE", :"CONFIDE", :"DIG", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FRUSTRATION", :"GYROBALL", :"HEATCRASH", :"HIDDENPOWER", :"IRONDEFENSE", :"IRONHEAD", :"METEORBEAM", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"REFLECT", :"REST", :"RETURN", :"ROCKBLAST", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SANDTOMB", :"SECRETPOWER", :"SELFDESTRUCT", :"SLEEPTALK", :"SNORE", :"SPIKES", :"STEALTHROCK", :"STONEEDGE", :"SUBSTITUTE", :"SWAGGER", :"TOXIC", :"WILLOWISP", :"TERABLAST"
  pkmn.egg_moves :"BLOCK", :"EXPLOSION", :"MUDSLAP"
end

GameData::SpeciesMetrics.define :"ROLYCOLY" do |m|
  m.back_sprite 7, 18
  m.front_sprite 2, 6
end