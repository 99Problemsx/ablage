#=============================================================================
# Ceruledge - FIRE Type
#=============================================================================

GameData::Species.define :"CERULEDGE" do |pkmn|
  pkmn.name "Ceruledge"
  pkmn.types :"FIRE", :"GHOST"
  pkmn.base_stats hp: 75, attack: 125, defense: 80,
                  sp_atk: 85, sp_def: 60, speed: 100
  pkmn.abilities :"FLASHFIRE"
  pkmn.hidden_abilities :"WEAKARMOR"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Blue"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 263
  pkmn.catch_rate 25
  pkmn.happiness 20
  pkmn.hatch_steps 8960
  pkmn.height 1.6
  pkmn.weight 62.0
  pkmn.category "Fire Blades"
  pkmn.pokedex_entry "The fiery blades on its arms burn fiercely with the lingering resentment of a sword wielder who fell before accomplishing their goal."
  pkmn.evs attack: 2
  pkmn.egg_groups :"Humanlike"

  pkmn.moves do |m|
    m.at -1, :"NIGHTSLASH"
    m.at -1, :"SOLARBLADE"
    m.at -1, :"QUICKGUARD"
    m.at -1, :"SHADOWSNEAK"
    m.at 0, :"SHADOWCLAW"
    m.at 1, :"EMBER"
    m.at 1, :"LEER"
    m.at 1, :"ASTONISH"
    m.at 8, :"CLEARSMOG"
    m.at 12, :"FIRESPIN"
    m.at 16, :"WILLOWISP"
    m.at 20, :"NIGHTSHADE"
    m.at 24, :"FLAMECHARGE"
    m.at 28, :"INCINERATE"
    m.at 32, :"LAVAPLUME"
    m.at 37, :"SWORDSDANCE"
    m.at 42, :"ALLYSWITCH"
    m.at 48, :"BITTERBLADE"
    m.at 56, :"PSYCHOCUT"
    m.at 62, :"FLAREBLITZ"
  end
  pkmn.tutor_moves :"BRICKBREAK", :"BULKUP", :"CLOSECOMBAT", :"CONFUSERAY", :"CURSE", :"DRAGONCLAW", :"ENDURE", :"FACADE", :"FALSESWIPE", :"FIREBLAST", :"FIRESPIN", :"FLAMECHARGE", :"FLAMETHROWER", :"FLAREBLITZ", :"FLING", :"HEATWAVE", :"HELPINGHAND", :"HEX", :"IRONDEFENSE", :"IRONHEAD", :"LIGHTSCREEN", :"NIGHTSHADE", :"OVERHEAT", :"PHANTOMFORCE", :"POISONJAB", :"POLTERGEIST", :"PROTECT", :"PSYCHUP", :"REFLECT", :"REST", :"SHADOWBALL", :"SHADOWCLAW", :"SLEEPTALK", :"SOLARBLADE", :"SPITE", :"STOREDPOWER", :"SUBSTITUTE", :"SUNNYDAY", :"SWORDSDANCE", :"TAKEDOWN", :"TAUNT", :"THROATCHOP", :"VACUUMWAVE", :"WILLOWISP", :"XSCISSOR"
end

GameData::SpeciesMetrics.define :"CERULEDGE" do |m|
  m.back_sprite 0, 54
  m.front_sprite -1, 10
  m.shadow_sprite 0, 0, 2
end