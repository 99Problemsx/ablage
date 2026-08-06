#=============================================================================
# Hattrem - PSYCHIC Type
#=============================================================================

GameData::Species.define :"HATTREM" do |pkmn|
  pkmn.name "Hattrem"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 57, attack: 40, defense: 65,
                  sp_atk: 49, sp_def: 86, speed: 73
  pkmn.abilities :"HEALER", :"ANTICIPATION"
  pkmn.hidden_abilities :"MAGICBOUNCE"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"AlwaysFemale"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Pink"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 130
  pkmn.catch_rate 120
  pkmn.happiness 50
  pkmn.hatch_steps 5120
  pkmn.height 0.6
  pkmn.weight 4.8
  pkmn.category "Serene"
  pkmn.pokedex_entry "Using the braids on its head, it pummels foes to get them to quiet down. One blow from those braids would knock out a professional boxer."
  pkmn.evs special_attack: 2
  pkmn.egg_groups :"Fairy"

  pkmn.moves do |m|
    m.at 0, :"BRUTALSWING"
    m.at 1, :"CONFUSION"
    m.at 1, :"PLAYNICE"
    m.at 1, :"LIFEDEW"
    m.at 1, :"DISARMINGVOICE"
    m.at 15, :"AROMATHERAPY"
    m.at 20, :"PSYBEAM"
    m.at 25, :"HEALPULSE"
    m.at 30, :"DAZZLINGGLEAM"
    m.at 37, :"CALMMIND"
    m.at 44, :"PSYCHIC"
    m.at 51, :"HEALINGWISH"
  end
  pkmn.tutor_moves :"ATTRACT", :"BATONPASS", :"BRUTALSWING", :"CALMMIND", :"CAPTIVATE", :"CHARM", :"CONFIDE", :"DARKPULSE", :"DAZZLINGGLEAM", :"DOUBLETEAM", :"DRAININGKISS", :"ENDURE", :"EXPANDINGFORCE", :"FACADE", :"FRUSTRATION", :"GIGADRAIN", :"HELPINGHAND", :"HIDDENPOWER", :"IMPRISON", :"LIGHTSCREEN", :"MAGICALLEAF", :"MIMIC", :"MYSTICALFIRE", :"NATURALGIFT", :"PLAYROUGH", :"PROTECT", :"PSYCHIC", :"PSYSHOCK", :"REST", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SKILLSWAP", :"SLEEPTALK", :"SNORE", :"STOREDPOWER", :"SUBSTITUTE", :"SWAGGER", :"THUNDERWAVE", :"TOXIC", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"HATTREM" do |m|
  m.back_sprite 0, 37
  m.front_sprite 1, 23
end