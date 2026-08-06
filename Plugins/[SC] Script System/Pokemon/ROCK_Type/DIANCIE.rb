#=============================================================================
# Diancie - ROCK Type
#=============================================================================

GameData::Species.define :"DIANCIE" do |pkmn|
  pkmn.name "Diancie"
  pkmn.types :"ROCK", :"FAIRY"
  pkmn.base_stats hp: 50, attack: 100, defense: 150,
                  sp_atk: 50, sp_def: 100, speed: 150
  pkmn.abilities :"CLEARBODY"
  pkmn.flags :"Mythical"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Pink"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 300
  pkmn.catch_rate 3
  pkmn.happiness 50
  pkmn.hatch_steps 6400
  pkmn.height 0.7
  pkmn.weight 8.8
  pkmn.category "Jewel"
  pkmn.pokedex_entry "A sudden transformation of Carbink, its pink, glimmering body is said to be the loveliest sight in the whole world."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"HARDEN"
    m.at 7, :"GUARDSPLIT"
    m.at 14, :"SMACKDOWN"
    m.at 21, :"FLAIL"
    m.at 28, :"ANCIENTPOWER"
    m.at 35, :"ROCKPOLISH"
    m.at 42, :"LIGHTSCREEN"
    m.at 49, :"ROCKSLIDE"
    m.at 56, :"SKILLSWAP"
    m.at 63, :"POWERGEM"
    m.at 70, :"STEALTHROCK"
    m.at 77, :"MOONBLAST"
    m.at 84, :"STONEEDGE"
    m.at 91, :"DIAMONDSTORM"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ALLYSWITCH", :"AMNESIA", :"BATONPASS", :"BODYPRESS", :"CALMMIND", :"CHARM", :"CONFIDE", :"COVET", :"DAZZLINGGLEAM", :"DOUBLETEAM", :"DRAININGKISS", :"EARTHPOWER", :"ENCORE", :"ENDEAVOR", :"ENDURE", :"EXPLOSION", :"FACADE", :"FAKETEARS", :"FLASH", :"FRUSTRATION", :"GIGAIMPACT", :"GRAVITY", :"GUARDSWAP", :"GYROBALL", :"HAIL", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"IRONDEFENSE", :"LASTRESORT", :"LIGHTSCREEN", :"MAGNETRISE", :"METEORBEAM", :"METRONOME", :"MIMIC", :"MISTYEXPLOSION", :"MYSTICALFIRE", :"NATURALGIFT", :"NATUREPOWER", :"PLAYROUGH", :"POWERGEM", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"PSYSHOCK", :"REFLECT", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SANDTOMB", :"SECRETPOWER", :"SKILLSWAP", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STEALTHROCK", :"STONEEDGE", :"STOREDPOWER", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TELEKINESIS", :"TERRAINPULSE", :"TOXIC", :"TRICKROOM", :"WONDERROOM", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"DIANCIE" do |m|
  m.back_sprite 1, 38
  m.front_sprite 4, -4
  m.shadow_sprite 0, 0, -1
end