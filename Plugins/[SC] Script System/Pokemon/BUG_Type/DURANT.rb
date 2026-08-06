#=============================================================================
# Durant - BUG Type
#=============================================================================

GameData::Species.define :"DURANT" do |pkmn|
  pkmn.name "Durant"
  pkmn.types :"BUG", :"STEEL"
  pkmn.base_stats hp: 58, attack: 109, defense: 112,
                  sp_atk: 109, sp_def: 48, speed: 48
  pkmn.abilities :"SWARM", :"HUSTLE"
  pkmn.hidden_abilities :"TRUANT"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Gray"
  pkmn.shape :"Insectoid"
  pkmn.base_exp 169
  pkmn.catch_rate 90
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.3
  pkmn.weight 33.0
  pkmn.category "Iron Ant"
  pkmn.pokedex_entry "Durant dig nests in mountains. They build their complicated, interconnected tunnels in mazes."
  pkmn.evs defense: 2
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"VICEGRIP"
    m.at 1, :"SANDATTACK"
    m.at 6, :"FURYCUTTER"
    m.at 11, :"BITE"
    m.at 16, :"AGILITY"
    m.at 21, :"METALCLAW"
    m.at 26, :"BUGBITE"
    m.at 31, :"CRUNCH"
    m.at 36, :"IRONHEAD"
    m.at 41, :"DIG"
    m.at 46, :"ENTRAINMENT"
    m.at 51, :"XSCISSOR"
    m.at 56, :"IRONDEFENSE"
    m.at 61, :"GUILLOTINE"
    m.at 66, :"METALSOUND"
  end
  pkmn.tutor_moves :"AERIALACE", :"ATTRACT", :"BUGBITE", :"CAPTIVATE", :"CUT", :"DIG", :"DOUBLETEAM", :"ENDEAVOR", :"ENDURE", :"ENERGYBALL", :"FACADE", :"FLASHCANNON", :"FRUSTRATION", :"GIGAIMPACT", :"HIDDENPOWER", :"HONECLAWS", :"IRONDEFENSE", :"IRONHEAD", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"REST", :"RETALIATE", :"RETURN", :"ROCKPOLISH", :"ROCKSLIDE", :"ROCKSMASH", :"ROCKTOMB", :"ROUND", :"SANDSTORM", :"SECRETPOWER", :"SHADOWCLAW", :"SLEEPTALK", :"SNORE", :"STONEEDGE", :"STRENGTH", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUPERPOWER", :"SWAGGER", :"THUNDERWAVE", :"TOXIC", :"XSCISSOR"
  pkmn.egg_moves :"BATONPASS", :"ENDURE", :"FEINTATTACK", :"ROCKCLIMB", :"SCREECH", :"THUNDERFANG"
end

GameData::SpeciesMetrics.define :"DURANT" do |m|
  m.back_sprite 0, 0
  m.front_sprite 1, 34
  m.shadow_sprite 0, 0, 3
end