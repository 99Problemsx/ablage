#=============================================================================
# Carbink - ROCK Type
#=============================================================================

GameData::Species.define :"CARBINK" do |pkmn|
  pkmn.name "Carbink"
  pkmn.types :"ROCK", :"FAIRY"
  pkmn.base_stats hp: 50, attack: 50, defense: 150,
                  sp_atk: 50, sp_def: 50, speed: 150
  pkmn.abilities :"CLEARBODY"
  pkmn.hidden_abilities :"STURDY"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Gray"
  pkmn.shape :"Head"
  pkmn.base_exp 100
  pkmn.catch_rate 60
  pkmn.happiness 50
  pkmn.hatch_steps 6400
  pkmn.height 0.3
  pkmn.weight 5.7
  pkmn.category "Jewel"
  pkmn.pokedex_entry "Born from the high temperatures and pressures deep underground, it defends itself by firing beams from the jewel part of its body."
  pkmn.evs defense: 1
  pkmn.egg_groups :"Fairy", :"Mineral"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"HARDEN"
    m.at 5, :"GUARDSPLIT"
    m.at 10, :"SMACKDOWN"
    m.at 15, :"FLAIL"
    m.at 20, :"ANCIENTPOWER"
    m.at 25, :"ROCKPOLISH"
    m.at 30, :"LIGHTSCREEN"
    m.at 35, :"ROCKSLIDE"
    m.at 40, :"SKILLSWAP"
    m.at 45, :"POWERGEM"
    m.at 50, :"STEALTHROCK"
    m.at 55, :"MOONBLAST"
    m.at 60, :"STONEEDGE"
  end
  pkmn.tutor_moves :"AFTERYOU", :"ALLYSWITCH", :"BODYPRESS", :"CALMMIND", :"CHARM", :"CONFIDE", :"COVET", :"DAZZLINGGLEAM", :"DOUBLETEAM", :"EARTHPOWER", :"ENDURE", :"EXPLOSION", :"FACADE", :"FLASH", :"FRUSTRATION", :"GRAVITY", :"GUARDSWAP", :"GYROBALL", :"HAIL", :"HIDDENPOWER", :"IRONDEFENSE", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGNETRISE", :"METEORBEAM", :"MIMIC", :"MISTYEXPLOSION", :"NATURALGIFT", :"NATUREPOWER", :"POWERGEM", :"PROTECT", :"PSYCHIC", :"PSYCHUP", :"REFLECT", :"REST", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKTOMB", :"ROUND", :"SAFEGUARD", :"SANDSTORM", :"SANDTOMB", :"SECRETPOWER", :"SKILLSWAP", :"SLEEPTALK", :"SMACKDOWN", :"SNORE", :"STEALTHROCK", :"STOMPINGTANTRUM", :"STONEEDGE", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TELEKINESIS", :"TERRAINPULSE", :"TOXIC", :"TRICKROOM", :"WONDERROOM", :"TERABLAST"
  pkmn.egg_moves :"nil"
end

GameData::SpeciesMetrics.define :"CARBINK" do |m|
  m.back_sprite 0, 46
  m.front_sprite 0, 22
  m.shadow_sprite 0, 0, -2
end