#=============================================================================
# Hatenna - PSYCHIC Type
#=============================================================================

GameData::Species.define :"HATENNA" do |pkmn|
  pkmn.name "Hatenna"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 42, attack: 30, defense: 45,
                  sp_atk: 39, sp_def: 56, speed: 53
  pkmn.abilities :"HEALER", :"ANTICIPATION"
  pkmn.hidden_abilities :"MAGICBOUNCE"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Pink"
  pkmn.shape :"HeadLegs"
  pkmn.base_exp 53
  pkmn.catch_rate 235
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.4
  pkmn.weight 3.4
  pkmn.category "Calm"
  pkmn.pokedex_entry "Via the protrusion on its head, it senses other creatures' emotions. If you don't have a calm disposition, it will never warm up to you."
  pkmn.evs special_attack: 1
  pkmn.egg_groups :"Fairy"

  pkmn.moves do |m|
    m.at 1, :"CONFUSION"
    m.at 1, :"PLAYNICE"
    m.at 5, :"LIFEDEW"
    m.at 10, :"DISARMINGVOICE"
    m.at 15, :"AROMATHERAPY"
    m.at 20, :"PSYBEAM"
    m.at 25, :"HEALPULSE"
    m.at 30, :"DAZZLINGGLEAM"
    m.at 35, :"CALMMIND"
    m.at 40, :"PSYCHIC"
    m.at 45, :"HEALINGWISH"
  end
  pkmn.tutor_moves :"ATTRACT", :"BATONPASS", :"CALMMIND", :"CAPTIVATE", :"CHARM", :"CONFIDE", :"DARKPULSE", :"DAZZLINGGLEAM", :"DOUBLETEAM", :"DRAININGKISS", :"ENDURE", :"EXPANDINGFORCE", :"FACADE", :"FRUSTRATION", :"GIGADRAIN", :"HELPINGHAND", :"HIDDENPOWER", :"IMPRISON", :"LIGHTSCREEN", :"MAGICALLEAF", :"MIMIC", :"MYSTICALFIRE", :"NATURALGIFT", :"PLAYROUGH", :"PROTECT", :"PSYCHIC", :"PSYSHOCK", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SKILLSWAP", :"SLEEPTALK", :"SNORE", :"STOREDPOWER", :"SUBSTITUTE", :"SWAGGER", :"THUNDERWAVE", :"TOXIC", :"TERABLAST"
  pkmn.egg_moves :"AFTERYOU", :"AROMATICMIST", :"NUZZLE", :"QUASH"
end

GameData::SpeciesMetrics.define :"HATENNA" do |m|
  m.back_sprite 3, 5
  m.front_sprite 3, 30
end