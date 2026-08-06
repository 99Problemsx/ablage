#=============================================================================
# Tapu Lele - PSYCHIC Type
#=============================================================================

GameData::Species.define :"TAPULELE" do |pkmn|
  pkmn.name "Tapu Lele"
  pkmn.types :"PSYCHIC", :"FAIRY"
  pkmn.base_stats hp: 70, attack: 85, defense: 75,
                  sp_atk: 95, sp_def: 130, speed: 115
  pkmn.abilities :"PSYCHICSURGE"
  pkmn.hidden_abilities :"TELEPATHY"
  pkmn.flags :"Legendary"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Pink"
  pkmn.shape :"HeadArms"
  pkmn.base_exp 285
  pkmn.catch_rate 3
  pkmn.happiness 50
  pkmn.hatch_steps 3840
  pkmn.height 1.2
  pkmn.weight 18.6
  pkmn.category "Land Spirit"
  pkmn.pokedex_entry "As it flutters about, it scatters its strangely glowing scales. Touching them is said to restore good health on the spot."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"ASTONISH"
    m.at 1, :"CONFUSION"
    m.at 5, :"WITHDRAW"
    m.at 10, :"AROMATHERAPY"
    m.at 15, :"DRAININGKISS"
    m.at 20, :"PSYBEAM"
    m.at 25, :"FLATTER"
    m.at 30, :"AROMATICMIST"
    m.at 35, :"SWEETSCENT"
    m.at 40, :"EXTRASENSORY"
    m.at 45, :"PSYSHOCK"
    m.at 50, :"MEANLOOK"
    m.at 55, :"NATURESMADNESS"
    m.at 60, :"MOONBLAST"
    m.at 65, :"TICKLE"
    m.at 70, :"SKILLSWAP"
    m.at 75, :"PSYCHICTERRAIN"
  end
  pkmn.tutor_moves :"ALLYSWITCH", :"CALMMIND", :"CHARGEBEAM", :"CHARM", :"CONFIDE", :"DAZZLINGGLEAM", :"DOUBLETEAM", :"DRAININGKISS", :"ECHOEDVOICE", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLING", :"FOCUSBLAST", :"FRUSTRATION", :"FUTURESIGHT", :"GIGAIMPACT", :"GRASSKNOT", :"GRAVITY", :"GUARDSWAP", :"HIDDENPOWER", :"HYPERBEAM", :"IRONDEFENSE", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGICROOM", :"MIMIC", :"NATURALGIFT", :"NATUREPOWER", :"PLAYROUGH", :"POWERSWAP", :"PROTECT", :"PSYCHIC", :"PSYCHICTERRAIN", :"PSYCHOCUT", :"PSYCHUP", :"PSYSHOCK", :"REFLECT", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SKILLSWAP", :"SLEEPTALK", :"SNORE", :"SPEEDSWAP", :"STOREDPOWER", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"TAUNT", :"TELEKINESIS", :"THIEF", :"THUNDER", :"THUNDERBOLT", :"TORMENT", :"TOXIC", :"WONDERROOM", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"TAPULELE" do |m|
  m.back_sprite 5, 50
  m.front_sprite 3, 15
  m.shadow_sprite 0, 0, -1
end