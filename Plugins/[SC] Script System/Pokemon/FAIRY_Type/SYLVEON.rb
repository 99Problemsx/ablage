#=============================================================================
# Sylveon - FAIRY Type
#=============================================================================

GameData::Species.define :"SYLVEON" do |pkmn|
  pkmn.name "Sylveon"
  pkmn.types :"FAIRY"
  pkmn.base_stats hp: 95, attack: 65, defense: 65,
                  sp_atk: 60, sp_def: 110, speed: 130
  pkmn.abilities :"CUTECHARM"
  pkmn.hidden_abilities :"PIXILATE"
  pkmn.gender_ratio :"FemaleOneEighth"
  pkmn.growth_rate :"Medium"
  pkmn.color :"Pink"
  pkmn.shape :"Quadruped"
  pkmn.base_exp 184
  pkmn.catch_rate 45
  pkmn.happiness 50
  pkmn.hatch_steps 8960
  pkmn.height 1.0
  pkmn.weight 23.5
  pkmn.category "Intertwining"
  pkmn.pokedex_entry "Its ribbonlike feelers give off an aura that weakens hostility in its prey, causing them to let down their guard. Then it attacks."
  pkmn.evs special_defense: 2
  pkmn.egg_groups :"Field"

  pkmn.moves do |m|
    m.at 0, :"DISARMINGVOICE"
    m.at 1, :"COVET"
    m.at 1, :"BITE"
    m.at 1, :"COPYCAT"
    m.at 1, :"BATONPASS"
    m.at 1, :"TAKEDOWN"
    m.at 1, :"CHARM"
    m.at 1, :"DOUBLEEDGE"
    m.at 1, :"HELPINGHAND"
    m.at 1, :"TACKLE"
    m.at 1, :"GROWL"
    m.at 1, :"TAILWHIP"
    m.at 5, :"SANDATTACK"
    m.at 10, :"QUICKATTACK"
    m.at 15, :"BABYDOLLEYES"
    m.at 20, :"SWIFT"
    m.at 25, :"LIGHTSCREEN"
    m.at 30, :"DRAININGKISS"
    m.at 35, :"MISTYTERRAIN"
    m.at 40, :"SKILLSWAP"
    m.at 45, :"PSYCHUP"
    m.at 50, :"MOONBLAST"
    m.at 55, :"LASTRESORT"
  end
  pkmn.tutor_moves :"ATTRACT", :"BATONPASS", :"BODYSLAM", :"CALMMIND", :"CAPTIVATE", :"CHARM", :"CONFIDE", :"COVET", :"CUT", :"DAZZLINGGLEAM", :"DIG", :"DOUBLEEDGE", :"DOUBLETEAM", :"DRAININGKISS", :"ECHOEDVOICE", :"ENDURE", :"FACADE", :"FAKETEARS", :"FLASH", :"FOCUSENERGY", :"FRUSTRATION", :"GIGAIMPACT", :"HEADBUTT", :"HEALBELL", :"HELPINGHAND", :"HIDDENPOWER", :"HYPERBEAM", :"HYPERVOICE", :"IRONTAIL", :"LASERFOCUS", :"LASTRESORT", :"LIGHTSCREEN", :"MAGICALLEAF", :"MAGICCOAT", :"MIMIC", :"MISTYEXPLOSION", :"MISTYTERRAIN", :"MUDSLAP", :"MYSTICALFIRE", :"NATURALGIFT", :"PAYDAY", :"PLAYROUGH", :"PROTECT", :"PSYCHUP", :"PSYSHOCK", :"RAINDANCE", :"REFLECT", :"REST", :"RETALIATE", :"RETURN", :"ROUND", :"SAFEGUARD", :"SECRETPOWER", :"SHADOWBALL", :"SKILLSWAP", :"SLEEPTALK", :"SNORE", :"STOREDPOWER", :"SUBSTITUTE", :"SUNNYDAY", :"SWAGGER", :"SWIFT", :"TELEKINESIS", :"TOXIC", :"WEATHERBALL", :"WORKUP", :"TERABLAST"
end

GameData::SpeciesMetrics.define :"SYLVEON" do |m|
  m.back_sprite 0, 44
  m.front_sprite -1, 22
end