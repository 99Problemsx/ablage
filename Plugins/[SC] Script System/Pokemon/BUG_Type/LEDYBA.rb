#=============================================================================
# Ledyba - BUG Type
#=============================================================================

GameData::Species.define :"LEDYBA" do |pkmn|
  pkmn.name "Ledyba"
  pkmn.types :"BUG", :"FLYING"
  pkmn.base_stats hp: 40, attack: 20, defense: 30,
                  sp_atk: 55, sp_def: 40, speed: 80
  pkmn.abilities :"SWARM", :"EARLYBIRD"
  pkmn.hidden_abilities :"RATTLED"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 9
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Red"
  pkmn.shape :"Winged"
  pkmn.base_exp 53
  pkmn.catch_rate 255
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 1.0
  pkmn.weight 10.8
  pkmn.category "Five Star"
  pkmn.pokedex_entry "Ledyba communicate using a fluid that they secrete from where the legs join the body. They are said to convey feelings to others by altering the fluid's scent."
  pkmn.evs special_defense: 1
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 6, :"SUPERSONIC"
    m.at 9, :"COMETPUNCH"
    m.at 14, :"LIGHTSCREEN"
    m.at 14, :"REFLECT"
    m.at 14, :"SAFEGUARD"
    m.at 17, :"MACHPUNCH"
    m.at 22, :"BATONPASS"
    m.at 25, :"SILVERWIND"
    m.at 30, :"AGILITY"
    m.at 33, :"SWIFT"
    m.at 38, :"DOUBLEEDGE"
    m.at 41, :"BUGBUZZ"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AIRCUTTER", :"ATTRACT", :"BRICKBREAK", :"BUGBITE", :"CAPTIVATE", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"DYNAMICPUNCH", :"ENDURE", :"FACADE", :"FLASH", :"FLING", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGADRAIN", :"HEADBUTT", :"HIDDENPOWER", :"ICEPUNCH", :"KNOCKOFF", :"LIGHTSCREEN", :"MEGAPUNCH", :"MIMIC", :"NATURALGIFT", :"OMINOUSWIND", :"PROTECT", :"REFLECT", :"REST", :"RETURN", :"ROLLOUT", :"ROOST", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SILVERWIND", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STRINGSHOT", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TAILWIND", :"THIEF", :"THUNDERPUNCH", :"TOXIC", :"UPROAR", :"UTURN"
  pkmn.egg_moves :"BIDE", :"BUGBITE", :"BUGBUZZ", :"DIZZYPUNCH", :"DRAINPUNCH", :"ENCORE", :"FOCUSPUNCH", :"KNOCKOFF", :"PSYBEAM", :"SCREECH", :"SILVERWIND"
end

GameData::SpeciesMetrics.define :"LEDYBA" do |m|
  m.back_sprite 4, 0
  m.front_sprite -1, 16
  m.shadow_sprite 0, 0, 2
end