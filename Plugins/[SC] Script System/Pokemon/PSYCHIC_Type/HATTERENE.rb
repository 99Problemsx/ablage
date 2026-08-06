#=============================================================================
# Hatterene - PSYCHIC Type
#=============================================================================

GameData::Species.define :"HATTERENE" do |pkmn|
  pkmn.name "Hatterene"
  pkmn.types :"PSYCHIC", :"FAIRY"
  pkmn.base_stats hp: 57, attack: 90, defense: 95,
                  sp_atk: 29, sp_def: 136, speed: 103
  pkmn.abilities :"HEALER", :"ANTICIPATION"
  pkmn.hidden_abilities :"MAGICBOUNCE"
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Pink"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 255
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 2.1
  pkmn.weight 5.1
  pkmn.category "Silent"
  pkmn.pokedex_entry "It emits psychic power strong enough to cause headaches as a deterrent to the approach of others."
  pkmn.evs special_attack: 3
  pkmn.egg_groups :"Fairy"

  pkmn.moves do |m|
    m.at 0, :"PSYCHOCUT"
    m.at 1, :"BRUTALSWING"
    m.at 1, :"CONFUSION"
    m.at 1, :"PLAYNICE"
    m.at 1, :"LIFEDEW"
    m.at 1, :"DISARMINGVOICE"
    m.at 15, :"AROMATHERAPY"
    m.at 20, :"PSYBEAM"
    m.at 25, :"HEALPULSE"
    m.at 30, :"DAZZLINGGLEAM"
    m.at 37, :"CALMMIND"
    m.at 46, :"PSYCHIC"
    m.at 55, :"HEALINGWISH"
    m.at 64, :"MAGICPOWDER"
  end
  pkmn.tutor_moves :"ATTRACT", :"BATONPASS", :"BRUTALSWING", :"CALMMIND", :"CAPTIVATE", :"CHARM", :"CONFIDE", :"DARKPULSE", :"DAZZLINGGLEAM", :"DOUBLETEAM", :"DRAININGKISS", :"ENDURE", :"EXPANDINGFORCE", :"FACADE", :"FRUSTRATION", :"FUTURESIGHT", :"GIGADRAIN", :"GIGAIMPACT", :"GUARDSWAP", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"IMPRISON", :"LIGHTSCREEN", :"MAGICALLEAF", :"MAGICROOM", :"MIMIC", :"MISTYEXPLOSION", :"MYSTICALFIRE", :"NATURALGIFT", :"PLAYROUGH", :"POWERSWAP", :"POWERWHIP", :"PROTECT", :"PSYCHIC", :"PSYCHOCUT", :"PSYSHOCK", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SHADOWCLAW", :"SKILLSWAP", :"SLEEPTALK", :"SNORE", :"STOREDPOWER", :"SUBSTITUTE", :"SWAGGER", :"SWORDSDANCE", :"THUNDERWAVE", :"TOXIC", :"TRICKROOM", :"WONDERROOM", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"HATTERENE" do |m|
  m.back_sprite 7, 41
  m.front_sprite -2, 7
end