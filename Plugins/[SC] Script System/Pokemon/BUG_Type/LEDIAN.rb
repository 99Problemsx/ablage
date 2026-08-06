#=============================================================================
# Ledian - BUG Type
#=============================================================================

GameData::Species.define :"LEDIAN" do |pkmn|
  pkmn.name "Ledian"
  pkmn.types :"BUG", :"FLYING"
  pkmn.base_stats hp: 55, attack: 35, defense: 50,
                  sp_atk: 85, sp_def: 55, speed: 110
  pkmn.abilities :"SWARM", :"EARLYBIRD"
  pkmn.hidden_abilities :"IRONFIST"
  pkmn.flags :"HasGenderedSprites"
  pkmn.call_rate_sos 6
  pkmn.gender_ratio :"Female50Percent"
  pkmn.growth_rate :"Fast"
  pkmn.color :"Red"
  pkmn.shape :"Winged"
  pkmn.base_exp 137
  pkmn.catch_rate 90
  pkmn.happiness 70
  pkmn.hatch_steps 3855
  pkmn.height 1.4
  pkmn.weight 35.6
  pkmn.category "Five Star"
  pkmn.pokedex_entry "It is said that in lands with clean air, where the stars fill the sky, there live many Ledian. For good reason, they use the light of the stars as energy."
  pkmn.evs special_defense: 2
  pkmn.egg_groups :"Bug"

  pkmn.moves do |m|
    m.at 1, :"TACKLE"
    m.at 1, :"SUPERSONIC"
    m.at 1, :"COMETPUNCH"
    m.at 6, :"SUPERSONIC"
    m.at 9, :"COMETPUNCH"
    m.at 14, :"LIGHTSCREEN"
    m.at 14, :"REFLECT"
    m.at 14, :"SAFEGUARD"
    m.at 17, :"MACHPUNCH"
    m.at 24, :"BATONPASS"
    m.at 29, :"SILVERWIND"
    m.at 36, :"AGILITY"
    m.at 41, :"SWIFT"
    m.at 48, :"DOUBLEEDGE"
    m.at 53, :"BUGBUZZ"
  end
  pkmn.tutor_moves :"ACROBATICS", :"AERIALACE", :"AIRCUTTER", :"ATTRACT", :"BRICKBREAK", :"BUGBITE", :"CAPTIVATE", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAINPUNCH", :"DYNAMICPUNCH", :"ENDURE", :"FACADE", :"FLASH", :"FLING", :"FOCUSBLAST", :"FOCUSPUNCH", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"HEADBUTT", :"HIDDENPOWER", :"HYPERBEAM", :"ICEPUNCH", :"KNOCKOFF", :"LIGHTSCREEN", :"MEGAPUNCH", :"MIMIC", :"NATURALGIFT", :"OMINOUSWIND", :"PROTECT", :"REFLECT", :"REST", :"RETURN", :"ROCKSMASH", :"ROLLOUT", :"ROOST", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SILVERWIND", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STRENGTH", :"STRINGSHOT", :"STRUGGLEBUG", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"SWORDSDANCE", :"TAILWIND", :"THIEF", :"THUNDERPUNCH", :"TOXIC", :"UPROAR", :"UTURN"
end

GameData::SpeciesMetrics.define :"LEDIAN" do |m|
  m.back_sprite 1, 0
  m.front_sprite -1, 12
  m.shadow_sprite 0, 0, 1
end