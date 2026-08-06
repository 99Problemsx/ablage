#=============================================================================
# Wynaut - PSYCHIC Type
#=============================================================================

GameData::Species.define :"WYNAUT" do |pkmn|
  pkmn.name "Wynaut"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 95, attack: 23, defense: 48,
                  sp_atk: 23, sp_def: 23, speed: 48
  pkmn.abilities :"SHADOWTAG"
  pkmn.hidden_abilities :"TELEPATHY"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"BipedalTail"
  pkmn.base_exp 52
  pkmn.catch_rate 125
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 0.6
  pkmn.weight 14.0
  pkmn.category "Bright"
  pkmn.pokedex_entry "A Wynaut loves to eat sweet fruits. It cleverly picks fruits using its earlike arms. They gather in fruit gardens, drawn by the fragrance."
  pkmn.evs hp: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"SPLASH"
    m.at 1, :"CHARM"
    m.at 1, :"ENCORE"
    m.at 15, :"COUNTER"
    m.at 15, :"MIRRORCOAT"
    m.at 15, :"SAFEGUARD"
    m.at 15, :"DESTINYBOND"
  end
  pkmn.tutor_moves :"AMNESIA", :"CHARM", :"ENCORE", :"SAFEGUARD"
end

GameData::SpeciesMetrics.define :"WYNAUT" do |m|
  m.back_sprite 2, 0
  m.front_sprite 1, 22
  m.shadow_sprite 0, 0, 1
end