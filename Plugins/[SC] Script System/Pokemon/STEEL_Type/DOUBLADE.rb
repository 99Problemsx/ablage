#=============================================================================
# Doublade - STEEL Type
#=============================================================================

GameData::Species.define :"DOUBLADE" do |pkmn|
  pkmn.name "Doublade"
  pkmn.types :"STEEL", :"GHOST"
  pkmn.base_stats hp: 59, attack: 110, defense: 150,
                  sp_atk: 35, sp_def: 45, speed: 49
  pkmn.abilities :"NOGUARD"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"MultiBody"
  pkmn.base_exp 157
  pkmn.catch_rate 90
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.8
  pkmn.weight 4.5
  pkmn.category "Sword"
  pkmn.pokedex_entry "The complex attack patterns of its two swords are unstoppable, even for an opponent greatly accomplished at swordplay."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"FURYCUTTER"
    m.at 1, :"SHADOWSNEAK"
    m.at 1, :"AUTOTOMIZE"
    m.at 12, :"AERIALACE"
    m.at 16, :"METALSOUND"
    m.at 20, :"SLASH"
    m.at 24, :"NIGHTSLASH"
    m.at 28, :"RETALIATE"
    m.at 32, :"IRONDEFENSE"
    m.at 38, :"IRONHEAD"
    m.at 44, :"POWERTRICK"
    m.at 50, :"SWORDSDANCE"
    m.at 56, :"SACREDSWORD"
  end
  pkmn.tutor_moves :"AERIALACE", :"AFTERYOU", :"ATTRACT", :"BRICKBREAK", :"BRUTALSWING", :"CAPTIVATE", :"CLOSECOMBAT", :"CONFIDE", :"CUT", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLASHCANNON", :"FRUSTRATION", :"GYROBALL", :"HIDDENPOWER", :"IRONDEFENSE", :"IRONHEAD", :"LASERFOCUS", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"PSYCHOCUT", :"RAINDANCE", :"REFLECT", :"REST", :"RETALIATE", :"RETURN", :"REVERSAL", :"ROCKSLIDE", :"ROCKSMASH", :"ROUND", :"SCREECH", :"SECRETPOWER", :"SHADOWCLAW", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"SOLARBLADE", :"SPITE", :"STEELBEAM", :"SUBSTITUTE", :"SWAGGER", :"SWORDSDANCE", :"TOXIC", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"DOUBLADE" do |m|
  m.back_sprite 16, 47
  m.front_sprite -2, 9
  m.shadow_sprite 0, 0, -1
end