#=============================================================================
# Wobbuffet - PSYCHIC Type
#=============================================================================

GameData::Species.define :"WOBBUFFET" do |pkmn|
  pkmn.name "Wobbuffet"
  pkmn.types :"PSYCHIC"
  pkmn.base_stats hp: 190, attack: 33, defense: 58,
                  sp_atk: 33, sp_def: 33, speed: 58
  pkmn.abilities :"SHADOWTAG"
  pkmn.hidden_abilities :"TELEPATHY"
  pkmn.flags :"HasGenderedSprites"
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Blue"
  pkmn.shape :"HeadBase"
  pkmn.base_exp 142
  pkmn.catch_rate 45
  pkmn.happiness 70
  pkmn.hatch_steps 5140
  pkmn.height 1.3
  pkmn.weight 28.5
  pkmn.category "Patient"
  pkmn.pokedex_entry "Usually docile, a Wobbuffet strikes back ferociously if its black tail is attacked. It makes its lair in caves where it waits for nightfall."
  pkmn.evs hp: 2
  pkmn.egg_groups :"Amorphous"

  pkmn.moves do |m|
    m.at 1, :"COUNTER"
    m.at 1, :"MIRRORCOAT"
    m.at 1, :"SAFEGUARD"
    m.at 1, :"DESTINYBOND"
  end
  pkmn.tutor_moves :"AMNESIA", :"CHARM", :"ENCORE", :"SAFEGUARD"
end

GameData::SpeciesMetrics.define :"WOBBUFFET" do |m|
  m.back_sprite -3, 0
  m.front_sprite 0, 16
  m.shadow_sprite 0, 0, 2
end