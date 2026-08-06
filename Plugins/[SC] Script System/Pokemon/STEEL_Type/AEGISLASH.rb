#=============================================================================
# Aegislash - STEEL Type
#=============================================================================

GameData::Species.define :"AEGISLASH" do |pkmn|
  pkmn.name "Aegislash"
  pkmn.form_name "Shield Forme"
  pkmn.types :"STEEL", :"GHOST"
  pkmn.base_stats hp: 60, attack: 50, defense: 140,
                  sp_atk: 60, sp_def: 50, speed: 140
  pkmn.abilities :"STANCECHANGE"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 250
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.7
  pkmn.weight 53.0
  pkmn.category "Royal Sword"
  pkmn.pokedex_entry "In this defensive stance, Aegislash uses its steel body and a force field of spectral power to reduce the damage of any attack."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Mineral"

  pkmn.moves do |m|
    m.at 0, :"KINGSSHIELD"
    m.at 1, :"HEADSMASH"
    m.at 1, :"AERIALACE"
    m.at 1, :"METALSOUND"
    m.at 1, :"SLASH"
    m.at 1, :"NIGHTSLASH"
    m.at 1, :"RETALIATE"
    m.at 1, :"IRONDEFENSE"
    m.at 1, :"IRONHEAD"
    m.at 1, :"POWERTRICK"
    m.at 1, :"SWORDSDANCE"
    m.at 1, :"SACREDSWORD"
    m.at 1, :"TACKLE"
    m.at 1, :"FURYCUTTER"
    m.at 1, :"SHADOWSNEAK"
    m.at 1, :"AUTOTOMIZE"
  end
  pkmn.tutor_moves :"AERIALACE", :"AFTERYOU", :"AIRSLASH", :"ATTRACT", :"BLOCK", :"BRICKBREAK", :"BRUTALSWING", :"CAPTIVATE", :"CLOSECOMBAT", :"CONFIDE", :"CUT", :"DOUBLETEAM", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FLASHCANNON", :"FRUSTRATION", :"GIGAIMPACT", :"GYROBALL", :"HIDDENPOWER", :"HYPERBEAM", :"IRONDEFENSE", :"IRONHEAD", :"LASERFOCUS", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"PSYCHOCUT", :"RAINDANCE", :"REFLECT", :"REST", :"RETALIATE", :"RETURN", :"REVERSAL", :"ROCKSLIDE", :"ROCKSMASH", :"ROUND", :"SCREECH", :"SECRETPOWER", :"SHADOWBALL", :"SHADOWCLAW", :"SHOCKWAVE", :"SLEEPTALK", :"SNORE", :"SOLARBLADE", :"SPITE", :"STEELBEAM", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWORDSDANCE", :"TOXIC", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"AEGISLASH" do |m|
  m.back_sprite 0, 41
  m.front_sprite 0, 24
  m.shadow_sprite 0, 0, -1
end