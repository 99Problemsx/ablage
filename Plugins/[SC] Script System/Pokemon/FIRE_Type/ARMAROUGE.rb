#=============================================================================
# Armarouge - FIRE Type
#=============================================================================

GameData::Species.define :"ARMAROUGE" do |pkmn|
  pkmn.name "Armarouge"
  pkmn.types :"FIRE", :"PSYCHIC"
  pkmn.base_stats hp: 85, attack: 60, defense: 100,
                  sp_atk: 75, sp_def: 125, speed: 80
  pkmn.abilities :"FLASHFIRE"
  pkmn.hidden_abilities :"WEAKARMOR"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Red"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 263
  pkmn.catch_rate 25
  pkmn.happiness 20
  pkmn.hatch_steps 8960
  pkmn.height 1.5
  pkmn.weight 85.0
  pkmn.category "Fire Warrior"
  pkmn.pokedex_entry "Armarouge evolved through the use of a set of armor that belonged to a distinguished warrior. This Pokémon is incredibly loyal."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Humanlike"

  pkmn.moves do |m|
    m.at 0, :"PSYSHOCK"
    m.at 1, :"LEER"
    m.at 1, :"EMBER"
    m.at 1, :"ASTONISH"
    m.at 1, :"WIDEGUARD"
    m.at 1, :"MYSTICALFIRE"
    m.at 8, :"CLEARSMOG"
    m.at 12, :"FIRESPIN"
    m.at 16, :"WILLOWISP"
    m.at 20, :"NIGHTSHADE"
    m.at 24, :"FLAMECHARGE"
    m.at 28, :"INCINERATE"
    m.at 32, :"LAVAPLUME"
    m.at 37, :"CALMMIND"
    m.at 42, :"ALLYSWITCH"
    m.at 48, :"FLAMETHROWER"
    m.at 56, :"EXPANDINGFORCE"
    m.at 62, :"ARMORCANNON"
  end
  pkmn.tutor_moves :"ACIDSPRAY", :"AURASPHERE", :"CALMMIND", :"CONFUSERAY", :"DARKPULSE", :"DRAGONPULSE", :"ENDURE", :"ENERGYBALL", :"EXPANDINGFORCE", :"FACADE", :"FIREBLAST", :"FIRESPIN", :"FLAMECHARGE", :"FLAMETHROWER", :"FLAREBLITZ", :"FLASHCANNON", :"FLING", :"FOCUSBLAST", :"HEATWAVE", :"HELPINGHAND", :"IRONDEFENSE", :"LIGHTSCREEN", :"METEORBEAM", :"NIGHTSHADE", :"OVERHEAT", :"PROTECT", :"PSYBEAM", :"PSYCHIC", :"PSYCHICTERRAIN", :"PSYCHUP", :"PSYSHOCK", :"REFLECT", :"REST", :"SCORCHINGSANDS", :"SHADOWBALL", :"SLEEPTALK", :"SOLARBEAM", :"SPITE", :"STOREDPOWER", :"SUBSTITUTE", :"SUNNYDAY", :"TAKEDOWN", :"TAUNT", :"TRICK", :"TRICKROOM", :"WEATHERBALL", :"WILLOWISP"
end

GameData::SpeciesMetrics.define :"ARMAROUGE" do |m|
  m.back_sprite 0, 53
  m.front_sprite 4, 10
  m.shadow_sprite 0, 0, 1
end