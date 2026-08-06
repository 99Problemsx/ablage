#=============================================================================
# Kleavor - BUG Type
#=============================================================================

GameData::Species.define :"KLEAVOR" do |pkmn|
  pkmn.name "Kleavor"
  pkmn.types :"BUG", :"ROCK"
  pkmn.base_stats hp: 70, attack: 135, defense: 95,
                  sp_atk: 85, sp_def: 45, speed: 70
  pkmn.abilities :"SWARM", :"SHEERFORCE"
  pkmn.hidden_abilities :"SHARPNESS"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Brown"
  pkmn.shape :"MultiWinged"
  pkmn.base_exp 175
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 6630
  pkmn.height 1.8
  pkmn.weight 89.0
  pkmn.category "Axe"
  pkmn.pokedex_entry "A violent creature that fells towering trees with its crude axes and shields itself with hard stone. If one should chance upon this Pokémon in the wilds, one's only recourse is to flee."
  pkmn.evs attack: 3
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 0, :"STONEAXE"
    m.at 1, :"QUICKATTACK"
    m.at 1, :"LEER"
    m.at 4, :"FURYCUTTER"
    m.at 8, :"FALSESWIPE"
    m.at 12, :"SMACKDOWN"
    m.at 16, :"DOUBLETEAM"
    m.at 20, :"DOUBLEHIT"
    m.at 24, :"SLASH"
    m.at 28, :"FOCUSENERGY"
    m.at 32, :"AGILITY"
    m.at 36, :"ROCKSLIDE"
    m.at 40, :"XSCISSOR"
    m.at 44, :"SWORDSDANCE"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AGILITY", :"AIRCUTTER", :"AIRSLASH", :"BATONPASS", :"BRICKBREAK", :"BUGBITE", :"BUGBUZZ", :"CLOSECOMBAT", :"DOUBLEEDGE", :"DUALWINGBEAT", :"ENDURE", :"FACADE", :"FALSESWIPE", :"GIGAIMPACT", :"HELPINGHAND", :"HYPERBEAM", :"LIGHTSCREEN", :"LUNGE", :"POUNCE", :"PROTECT", :"RAINDANCE", :"REST", :"REVERSAL", :"ROCKBLAST", :"ROCKSLIDE", :"ROCKTOMB", :"SANDSTORM", :"SCARYFACE", :"SKITTERSMACK", :"SLEEPTALK", :"SMACKDOWN", :"STEALTHROCK", :"STONEEDGE", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SWIFT", :"SWORDSDANCE", :"TAILWIND", :"TAKEDOWN", :"THIEF", :"TRAILBLAZE", :"UTURN", :"VACUUMWAVE", :"XSCISSOR"
end

GameData::SpeciesMetrics.define :"KLEAVOR" do |m|
  m.back_sprite 1, 51
  m.front_sprite -4, 17
  m.shadow_sprite 2, 0, 3
end