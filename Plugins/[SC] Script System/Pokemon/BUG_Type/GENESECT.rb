#=============================================================================
# Genesect - BUG Type
#=============================================================================

GameData::Species.define :"GENESECT" do |pkmn|
  pkmn.name "Genesect"
  pkmn.form_name "Normal"
  pkmn.types :"BUG", :"STEEL"
  pkmn.base_stats hp: 71, attack: 120, defense: 95,
                  sp_atk: 99, sp_def: 120, speed: 95
  pkmn.abilities :"DOWNLOAD"
  pkmn.flags :"Mythical"
  pkmn.gender_ratio :"Genderless"
  pkmn.growth_rate :"Slow"
  pkmn.color :"Purple"
  pkmn.shape :"Bipedal"
  pkmn.base_exp 270
  pkmn.catch_rate 3
  pkmn.happiness 0
  pkmn.hatch_steps 30840
  pkmn.height 1.5
  pkmn.weight 82.5
  pkmn.category "Paleozoic"
  pkmn.pokedex_entry "This ancient bug Pokémon was altered by Team Plasma. They upgraded the cannon on its back."
  pkmn.evs attack: 1
  pkmn.egg_groups :"Undiscovered"

  pkmn.moves do |m|
    m.at 1, :"TECHNOBLAST"
    m.at 1, :"QUICKATTACK"
    m.at 1, :"MAGNETRISE"
    m.at 1, :"METALCLAW"
    m.at 1, :"SCREECH"
    m.at 7, :"FURYCUTTER"
    m.at 11, :"LOCKON"
    m.at 18, :"FLAMECHARGE"
    m.at 22, :"MAGNETBOMB"
    m.at 29, :"SLASH"
    m.at 33, :"METALSOUND"
    m.at 40, :"SIGNALBEAM"
    m.at 44, :"TRIATTACK"
    m.at 51, :"XSCISSOR"
    m.at 55, :"BUGBUZZ"
    m.at 62, :"SIMPLEBEAM"
    m.at 66, :"ZAPCANNON"
    m.at 73, :"HYPERBEAM"
    m.at 77, :"SELFDESTRUCT"
  end
  pkmn.tutor_moves :"AERIALACE", :"BLIZZARD", :"BUGBITE", :"CHARGEBEAM", :"DARKPULSE", :"DOUBLETEAM", :"ELECTROWEB", :"ENDURE", :"ENERGYBALL", :"EXPLOSION", :"FACADE", :"FLAMECHARGE", :"FLAMETHROWER", :"FLASH", :"FLASHCANNON", :"FLY", :"FRUSTRATION", :"GIGADRAIN", :"GIGAIMPACT", :"GRAVITY", :"GUNKSHOT", :"HIDDENPOWER", :"HONECLAWS", :"HYPERBEAM", :"ICEBEAM", :"IRONDEFENSE", :"IRONHEAD", :"LASTRESORT", :"LIGHTSCREEN", :"MAGICCOAT", :"MAGNETRISE", :"MIMIC", :"NATURALGIFT", :"PROTECT", :"PSYCHIC", :"RECYCLE", :"REFLECT", :"REST", :"RETURN", :"ROCKPOLISH", :"ROUND", :"SECRETPOWER", :"SHADOWCLAW", :"SIGNALBEAM", :"SLEEPTALK", :"SNORE", :"SOLARBEAM", :"STRUGGLEBUG", :"SUBSTITUTE", :"SWAGGER", :"THUNDER", :"THUNDERBOLT", :"THUNDERWAVE", :"TOXIC", :"UTURN", :"XSCISSOR", :"ZENHEADBUTT"
end

GameData::SpeciesMetrics.define :"GENESECT" do |m|
  m.back_sprite 0, 0
  m.front_sprite -3, 18
  m.shadow_sprite 0, 0, 3
end