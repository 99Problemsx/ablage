#=============================================================================
# Honedge - STEEL Type
#=============================================================================

GameData::Species.define :"HONEDGE" do |pkmn|
  pkmn.name "Honedge"
  pkmn.types :"STEEL", :"GHOST"
  pkmn.base_stats hp: 45, attack: 80, defense: 100,
                  sp_atk: 28, sp_def: 35, speed: 37
  pkmn.abilities :"NOGUARD"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 65
  pkmn.catch_rate 180
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.8
  pkmn.weight 2.0
  pkmn.category "Sword"
  pkmn.pokedex_entry "Apparently this Pokémon is born when a departed spirit inhabits a sword. It attaches itself to people and drinks their life force."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"FURYCUTTER"
    m.at 4, :"SHADOWSNEAK"
    m.at 8, :"AUTOTOMIZE"
    m.at 12, :"AERIALACE"
    m.at 16, :"METALSOUND"
    m.at 20, :"SLASH"
    m.at 24, :"NIGHTSLASH"
    m.at 28, :"RETALIATE"
    m.at 32, :"IRONDEFENSE"
    m.at 36, :"IRONHEAD"
    m.at 40, :"POWERTRICK"
    m.at 44, :"SWORDSDANCE"
    m.at 48, :"SACREDSWORD"
  end
  pkmn.tutor_moves :"AERIALACE", :"AFTERYOU", :"ATTRACT", :"BRICKBREAK", :"BRUTALSWING", :"CAPTIVATE", :"CLOSECOMBAT", :"CONFIDE", :"CUT", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLASHCANNON", :"FRUSTRATION", :"GYROBALL", :"HIDDENPOWER", :"IRONDEFENSE", :"IRONHEAD", :"LASERFOCUS", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"PSYCHOCUT", :"RAINDANCE", :"REFLECT", :"REST", :"RETALIATE", :"RETURN", :"REVERSAL", :"ROCKSLIDE", :"ROCKSMASH", :"ROUND", :"SCREECH", :"SECRETPOWER", :"SHADOWCLAW", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"SOLARBLADE", :"SPITE", :"STEELBEAM", :"SUBSTITUTE", :"SWAGGER", :"SWORDSDANCE", :"TOXIC", :"TERABLAST"
  pkmn.egg_moves :"BLOCK", :"DESTINYBOND", :"WIDEGUARD"
end

GameData::SpeciesMetrics.define :"HONEDGE" do |m|
  m.back_sprite 0, 32
  m.front_sprite 7, -1
  m.shadow_sprite 0, 0, -1
end