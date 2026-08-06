#=============================================================================
# Skeledirge - FIRE Type
#=============================================================================

GameData::Species.define :"SKELEDIRGE" do |pkmn|
  pkmn.name "Skeledirge"
  pkmn.types :"FIRE", :"GHOST"
  pkmn.base_stats hp: 104, attack: 75, defense: 100,
                  sp_atk: 66, sp_def: 110, speed: 75
  pkmn.abilities :"BLAZE"
  pkmn.hidden_abilities :"UNAWARE"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Parabolic"
  pkmn.color :"Red"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 265
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 1.6
  pkmn.weight 326.5
  pkmn.category "Singer"
  pkmn.pokedex_entry "The fiery bird changes shape when Skeledirge sings. Rumor has it that the bird was born when the fireball on Skeledirge’s head gained a soul."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at -1, :"SING"
    m.at -1, :"YAWN"
    m.at 0, :"TORCHSONG"
    m.at 1, :"EMBER"
    m.at 1, :"LEER"
    m.at 1, :"TACKLE"
    m.at 7, :"LICK"
    m.at 10, :"ROUND"
    m.at 12, :"SCARYFACE"
    m.at 15, :"BITE"
    m.at 17, :"INCINERATE"
    m.at 24, :"SNARL"
    m.at 28, :"ROAR"
    m.at 32, :"FLAMETHROWER"
    m.at 38, :"SHADOWBALL"
    m.at 42, :"HYPERVOICE"
    m.at 47, :"WILLOWISP"
    m.at 47, :"HEX"
    m.at 58, :"FIREBLAST"
    m.at 64, :"OVERHEAT"
  end
  pkmn.tutor_moves :"ALLURINGVOICE", :"BLASTBURN", :"BODYSLAM", :"CRUNCH", :"CURSE", :"DIG", :"DISARMINGVOICE", :"EARTHPOWER", :"EARTHQUAKE", :"ENCORE", :"ENDURE", :"FACADE", :"FIREBLAST", :"FIREFANG", :"FIREPLEDGE", :"FIRESPIN", :"FLAMECHARGE", :"FLAMETHROWER", :"FLAREBLITZ", :"GIGAIMPACT", :"HEATCRASH", :"HEATWAVE", :"HELPINGHAND", :"HEX", :"HYPERBEAM", :"HYPERVOICE", :"IMPRISON", :"MUDSLAP", :"NIGHTSHADE", :"OUTRAGE", :"OVERHEAT", :"POLTERGEIST", :"PROTECT", :"REST", :"ROAR", :"SCARYFACE", :"SCORCHINGSANDS", :"SEEDBOMB", :"SHADOWBALL", :"SHADOWCLAW", :"SLEEPTALK", :"SNARL", :"SOLARBEAM", :"STOMPINGTANTRUM", :"SUBSTITUTE", :"SUNNYDAY", :"TAKEDOWN", :"TEMPERFLARE", :"THUNDERFANG", :"WILLOWISP", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"SKELEDIRGE" do |m|
  m.back_sprite 0, 44
  m.front_sprite -10, 25
  m.shadow_sprite 0, 0, 3
end