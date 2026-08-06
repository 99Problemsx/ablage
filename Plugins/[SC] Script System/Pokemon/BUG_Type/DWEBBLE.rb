#=============================================================================
# Dwebble - BUG Type
#=============================================================================

GameData::Species.define :"DWEBBLE" do |pkmn|
  pkmn.name "Dwebble"
  pkmn.types :"BUG", :"ROCK"
  pkmn.base_stats hp: 50, attack: 65, defense: 85,
                  sp_atk: 55, sp_def: 35, speed: 35
  pkmn.abilities :"STURDY", :"SHELLARMOR"
  pkmn.hidden_abilities :"WEAKARMOR"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Red"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 65
  pkmn.catch_rate 190
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.3
  pkmn.weight 14.5
  pkmn.category "Rock Inn"
  pkmn.pokedex_entry "It makes a hole in a suitable rock. If that rock breaks, the Pokémon remains agitated until it locates a replacement."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Bug", :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"FURYCUTTER"
    m.at 5, :"ROCKBLAST"
    m.at 7, :"WITHDRAW"
    m.at 11, :"SANDATTACK"
    m.at 13, :"FEINTATTACK"
    m.at 17, :"SMACKDOWN"
    m.at 19, :"ROCKPOLISH"
    m.at 23, :"BUGBITE"
    m.at 24, :"STEALTHROCK"
    m.at 29, :"ROCKSLIDE"
    m.at 31, :"SLASH"
    m.at 35, :"XSCISSOR"
    m.at 37, :"SHELLSMASH"
    m.at 41, :"FLAIL"
    m.at 43, :"ROCKWRECKER"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BLOCK", :"BUGBITE", :"BULLDOZE", :"CAPTIVATE", :"CUT", :"DIG", :"DOUBLETEAM", :"EARTHQUAKE", :"ENDURE", :"FACADE", :"FRUSTRATION", :"HIDDENPOWER", :"HONECLAWS", :"IRONDEFENSE", :"KNOCKOFF", :"MIMIC", :"NATURALGIFT", :"POISONJAB", :"PROTECT", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"SOLARBEAM", :"STEALTHROCK", :"STONEEDGE", :"STRENGTH", :"STRUGGLEBUG", :"SUBSTITUTE", :"SWAGGER", :"SWORDSDANCE", :"TOXIC", :"XSCISSOR"
  pkmn.egg_moves :"BLOCK", :"COUNTER", :"CURSE", :"ENDURE", :"IRONDEFENSE", :"NIGHTSLASH", :"SANDTOMB", :"SPIKES"
end

GameData::SpeciesMetrics.define :"DWEBBLE" do |m|
  m.back_sprite 2, 0
  m.front_sprite 0, 34
  m.shadow_sprite 0, 0, 2
end