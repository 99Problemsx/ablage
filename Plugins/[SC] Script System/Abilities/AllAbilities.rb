#=============================================================================
# All Abilities
#=============================================================================

GameData::Ability.define :"STENCH" do |a|
  a.name "Stench"
  a.description "The stench may cause the target to flinch."
end

GameData::Ability.define :"DRIZZLE" do |a|
  a.name "Drizzle"
  a.description "The Pokémon makes it rain if it appears in battle."
end

GameData::Ability.define :"SPEEDBOOST" do |a|
  a.name "Speed Boost"
  a.description "Its Speed stat is gradually boosted."
end

GameData::Ability.define :"BATTLEARMOR" do |a|
  a.name "Battle Armor"
  a.description "The Pokémon is protected against critical hits."
end

GameData::Ability.define :"STURDY" do |a|
  a.name "Sturdy"
  a.description "It cannot be knocked out with one hit."
end

GameData::Ability.define :"DAMP" do |a|
  a.name "Damp"
  a.description "Prevents the use of self-destructing moves."
end

GameData::Ability.define :"LIMBER" do |a|
  a.name "Limber"
  a.description "The Pokémon is protected from paralysis."
end

GameData::Ability.define :"SANDVEIL" do |a|
  a.name "Sand Veil"
  a.description "Boosts the Pokémon's evasion in a sandstorm."
end

GameData::Ability.define :"STATIC" do |a|
  a.name "Static"
  a.description "Contact with the Pokémon may cause paralysis."
end

GameData::Ability.define :"VOLTABSORB" do |a|
  a.name "Volt Absorb"
  a.description "Restores HP if hit by an Electric-type move."
end

GameData::Ability.define :"WATERABSORB" do |a|
  a.name "Water Absorb"
  a.description "Restores HP if hit by a Water-type move."
end

GameData::Ability.define :"OBLIVIOUS" do |a|
  a.name "Oblivious"
  a.description "Prevents it from becoming infatuated."
end

GameData::Ability.define :"CLOUDNINE" do |a|
  a.name "Cloud Nine"
  a.description "Eliminates the effects of weather."
end

GameData::Ability.define :"COMPOUNDEYES" do |a|
  a.name "Compound Eyes"
  a.description "The Pokémon's accuracy is boosted."
end

GameData::Ability.define :"INSOMNIA" do |a|
  a.name "Insomnia"
  a.description "Prevents the Pokémon from falling asleep."
end

GameData::Ability.define :"COLORCHANGE" do |a|
  a.name "Color Change"
  a.description "Changes the Pokémon's type to the foe's move."
end

GameData::Ability.define :"IMMUNITY" do |a|
  a.name "Immunity"
  a.description "Prevents the Pokémon from getting poisoned."
end

GameData::Ability.define :"FLASHFIRE" do |a|
  a.name "Flash Fire"
  a.description "It powers up Fire-type moves if it's hit by one."
end

GameData::Ability.define :"SHIELDDUST" do |a|
  a.name "Shield Dust"
  a.description "Blocks the added effects of attacks taken."
end

GameData::Ability.define :"OWNTEMPO" do |a|
  a.name "Own Tempo"
  a.description "Prevents the Pokémon from becoming confused."
end

GameData::Ability.define :"SUCTIONCUPS" do |a|
  a.name "Suction Cups"
  a.description "Negates all moves that force switching out."
end

GameData::Ability.define :"INTIMIDATE" do |a|
  a.name "Intimidate"
  a.description "Lowers the foe's Attack stat."
end

GameData::Ability.define :"SHADOWTAG" do |a|
  a.name "Shadow Tag"
  a.description "Prevents the foe from escaping."
end

GameData::Ability.define :"ROUGHSKIN" do |a|
  a.name "Rough Skin"
  a.description "Inflicts damage to the foe on contact."
end

GameData::Ability.define :"WONDERGUARD" do |a|
  a.name "Wonder Guard"
  a.description "Only super-effective moves will hit."
end

GameData::Ability.define :"LEVITATE" do |a|
  a.name "Levitate"
  a.description "Gives full immunity to all Ground-type moves."
end

GameData::Ability.define :"EFFECTSPORE" do |a|
  a.name "Effect Spore"
  a.description "Contact may poison or cause paralysis or sleep."
end

GameData::Ability.define :"SYNCHRONIZE" do |a|
  a.name "Synchronize"
  a.description "Passes a burn, poison, or paralysis to the foe."
end

GameData::Ability.define :"CLEARBODY" do |a|
  a.name "Clear Body"
  a.description "Prevents other Pokémon from lowering its stats."
end

GameData::Ability.define :"NATURALCURE" do |a|
  a.name "Natural Cure"
  a.description "All status problems heal when it switches out."
end

GameData::Ability.define :"LIGHTNINGROD" do |a|
  a.name "Lightning Rod"
  a.description "Draws in all Electric-type moves to up Sp. Attack."
end

GameData::Ability.define :"SERENEGRACE" do |a|
  a.name "Serene Grace"
  a.description "Boosts the likelihood of added effects appearing."
end

GameData::Ability.define :"SWIFTSWIM" do |a|
  a.name "Swift Swim"
  a.description "Boosts the Pokémon's Speed in rain."
end

GameData::Ability.define :"CHLOROPHYLL" do |a|
  a.name "Chlorophyll"
  a.description "Boosts the Pokémon's Speed in sunshine."
end

GameData::Ability.define :"ILLUMINATE" do |a|
  a.name "Illuminate"
  a.description "Raises the likelihood of meeting wild Pokémon."
end

GameData::Ability.define :"TRACE" do |a|
  a.name "Trace"
  a.description "The Pokémon copies a foe's Ability."
end

GameData::Ability.define :"HUGEPOWER" do |a|
  a.name "Huge Power"
  a.description "Raises the Pokémon's Attack stat."
end

GameData::Ability.define :"POISONPOINT" do |a|
  a.name "Poison Point"
  a.description "Contact with the Pokémon may poison the attacker."
end

GameData::Ability.define :"INNERFOCUS" do |a|
  a.name "Inner Focus"
  a.description "The Pokémon is protected from flinching."
end

GameData::Ability.define :"MAGMAARMOR" do |a|
  a.name "Magma Armor"
  a.description "Prevents the Pokémon from becoming frozen."
  a.flags :"FasterEggHatching"
end

GameData::Ability.define :"WATERVEIL" do |a|
  a.name "Water Veil"
  a.description "Prevents the Pokémon from getting a burn."
end

GameData::Ability.define :"MAGNETPULL" do |a|
  a.name "Magnet Pull"
  a.description "Prevents Steel-type Pokémon from escaping."
end

GameData::Ability.define :"SOUNDPROOF" do |a|
  a.name "Soundproof"
  a.description "Gives full immunity to all sound-based moves."
end

GameData::Ability.define :"RAINDISH" do |a|
  a.name "Rain Dish"
  a.description "The Pokémon gradually regains HP in rain."
end

GameData::Ability.define :"SANDSTREAM" do |a|
  a.name "Sand Stream"
  a.description "The Pokémon summons a sandstorm in battle."
end

GameData::Ability.define :"PRESSURE" do |a|
  a.name "Pressure"
  a.description "The Pokémon raises the foe's PP usage."
end

GameData::Ability.define :"THICKFAT" do |a|
  a.name "Thick Fat"
  a.description "Ups resistance to Fire- and Ice-type moves."
end

GameData::Ability.define :"EARLYBIRD" do |a|
  a.name "Early Bird"
  a.description "The Pokémon awakens quickly from sleep."
end

GameData::Ability.define :"FLAMEBODY" do |a|
  a.name "Flame Body"
  a.description "Contact with the Pokémon may burn the attacker."
  a.flags :"FasterEggHatching"
end

GameData::Ability.define :"RUNAWAY" do |a|
  a.name "Run Away"
  a.description "Enables a sure getaway from wild Pokémon."
end

GameData::Ability.define :"KEENEYE" do |a|
  a.name "Keen Eye"
  a.description "Prevents other Pokémon from lowering accuracy."
end

GameData::Ability.define :"HYPERCUTTER" do |a|
  a.name "Hyper Cutter"
  a.description "Prevents other Pokémon from lowering Attack stat."
end

GameData::Ability.define :"PICKUP" do |a|
  a.name "Pickup"
  a.description "The Pokémon may pick up items."
end

GameData::Ability.define :"TRUANT" do |a|
  a.name "Truant"
  a.description "Pokémon can't attack on consecutive turns."
end

GameData::Ability.define :"HUSTLE" do |a|
  a.name "Hustle"
  a.description "Boosts the Attack stat, but lowers accuracy."
end

GameData::Ability.define :"CUTECHARM" do |a|
  a.name "Cute Charm"
  a.description "Contact with the Pokémon may cause infatuation."
end

GameData::Ability.define :"PLUS" do |a|
  a.name "Plus"
  a.description "Ups Sp. Atk if another Pokémon has Plus or Minus."
end

GameData::Ability.define :"MINUS" do |a|
  a.name "Minus"
  a.description "Ups Sp. Atk if another Pokémon has Plus or Minus."
end

GameData::Ability.define :"FORECAST" do |a|
  a.name "Forecast"
  a.description "Castform transforms with the weather."
end

GameData::Ability.define :"STICKYHOLD" do |a|
  a.name "Sticky Hold"
  a.description "Protects the Pokémon from item theft."
end

GameData::Ability.define :"SHEDSKIN" do |a|
  a.name "Shed Skin"
  a.description "The Pokémon may heal its own status problems."
end

GameData::Ability.define :"GUTS" do |a|
  a.name "Guts"
  a.description "Boosts Attack if there is a status problem."
end

GameData::Ability.define :"MARVELSCALE" do |a|
  a.name "Marvel Scale"
  a.description "Ups Defense if there is a status problem."
end

GameData::Ability.define :"LIQUIDOOZE" do |a|
  a.name "Liquid Ooze"
  a.description "Damages attackers using any draining move."
end

GameData::Ability.define :"OVERGROW" do |a|
  a.name "Overgrow"
  a.description "Powers up Grass-type moves in a pinch."
end

GameData::Ability.define :"BLAZE" do |a|
  a.name "Blaze"
  a.description "Powers up Fire-type moves in a pinch."
end

GameData::Ability.define :"TORRENT" do |a|
  a.name "Torrent"
  a.description "Powers up Water-type moves in a pinch."
end

GameData::Ability.define :"SWARM" do |a|
  a.name "Swarm"
  a.description "Powers up Bug-type moves in a pinch."
end

GameData::Ability.define :"ROCKHEAD" do |a|
  a.name "Rock Head"
  a.description "Protects the Pokémon from recoil damage."
end

GameData::Ability.define :"DROUGHT" do |a|
  a.name "Drought"
  a.description "Turns the sunlight harsh if it is in battle."
end

GameData::Ability.define :"ARENATRAP" do |a|
  a.name "Arena Trap"
  a.description "Prevents the foe from fleeing."
end

GameData::Ability.define :"VITALSPIRIT" do |a|
  a.name "Vital Spirit"
  a.description "Prevents the Pokémon from falling asleep."
end

GameData::Ability.define :"WHITESMOKE" do |a|
  a.name "White Smoke"
  a.description "Prevents other Pokémon from lowering its stats."
end

GameData::Ability.define :"PUREPOWER" do |a|
  a.name "Pure Power"
  a.description "Raises the Pokémon's Attack stat."
end

GameData::Ability.define :"SHELLARMOR" do |a|
  a.name "Shell Armor"
  a.description "The Pokémon is protected against critical hits."
end

GameData::Ability.define :"AIRLOCK" do |a|
  a.name "Air Lock"
  a.description "Eliminates the effects of weather."
end

GameData::Ability.define :"TANGLEDFEET" do |a|
  a.name "Tangled Feet"
  a.description "Raises evasion if the Pokémon is confused."
end

GameData::Ability.define :"MOTORDRIVE" do |a|
  a.name "Motor Drive"
  a.description "Raises Speed if hit by an Electric-type move."
end

GameData::Ability.define :"RIVALRY" do |a|
  a.name "Rivalry"
  a.description "Deals more damage to a foe of the same gender."
end

GameData::Ability.define :"STEADFAST" do |a|
  a.name "Steadfast"
  a.description "Raises Speed each time the Pokémon flinches."
end

GameData::Ability.define :"SNOWCLOAK" do |a|
  a.name "Snow Cloak"
  a.description "Raises evasion in a hailstorm."
end

GameData::Ability.define :"GLUTTONY" do |a|
  a.name "Gluttony"
  a.description "Encourages the early use of a held Berry."
end

GameData::Ability.define :"ANGERPOINT" do |a|
  a.name "Anger Point"
  a.description "Maxes Attack after taking a critical hit."
end

GameData::Ability.define :"UNBURDEN" do |a|
  a.name "Unburden"
  a.description "Raises Speed if a held item is used."
end

GameData::Ability.define :"HEATPROOF" do |a|
  a.name "Heatproof"
  a.description "Weakens the power of Fire-type moves."
end

GameData::Ability.define :"SIMPLE" do |a|
  a.name "Simple"
  a.description "The Pokémon is prone to wild stat changes."
end

GameData::Ability.define :"DRYSKIN" do |a|
  a.name "Dry Skin"
  a.description "Reduces HP if it is hot. Water restores HP."
end

GameData::Ability.define :"DOWNLOAD" do |a|
  a.name "Download"
  a.description "Adjusts power according to a foe's defenses."
end

GameData::Ability.define :"IRONFIST" do |a|
  a.name "Iron Fist"
  a.description "Boosts the power of punching moves."
end

GameData::Ability.define :"POISONHEAL" do |a|
  a.name "Poison Heal"
  a.description "Restores HP if the Pokémon is poisoned."
end

GameData::Ability.define :"ADAPTABILITY" do |a|
  a.name "Adaptability"
  a.description "Powers up moves of the same type."
end

GameData::Ability.define :"SKILLLINK" do |a|
  a.name "Skill Link"
  a.description "Increases the frequency of multi-strike moves."
end

GameData::Ability.define :"HYDRATION" do |a|
  a.name "Hydration"
  a.description "Heals status problems if it is raining."
end

GameData::Ability.define :"SOLARPOWER" do |a|
  a.name "Solar Power"
  a.description "In sunshine, Sp. Atk is boosted but HP decreases."
end

GameData::Ability.define :"QUICKFEET" do |a|
  a.name "Quick Feet"
  a.description "Boosts Speed if there is a status problem."
end

GameData::Ability.define :"NORMALIZE" do |a|
  a.name "Normalize"
  a.description "All the Pokémon's moves become the Normal type."
end

GameData::Ability.define :"SNIPER" do |a|
  a.name "Sniper"
  a.description "Powers up moves if they become critical hits."
end

GameData::Ability.define :"MAGICGUARD" do |a|
  a.name "Magic Guard"
  a.description "The Pokémon only takes damage from attacks."
end

GameData::Ability.define :"NOGUARD" do |a|
  a.name "No Guard"
  a.description "Ensures attacks by or against the Pokémon land."
end

GameData::Ability.define :"STALL" do |a|
  a.name "Stall"
  a.description "The Pokémon moves after all other Pokémon do."
end

GameData::Ability.define :"TECHNICIAN" do |a|
  a.name "Technician"
  a.description "Powers up the Pokémon's weaker moves."
end

GameData::Ability.define :"LEAFGUARD" do |a|
  a.name "Leaf Guard"
  a.description "Prevents problems with status in sunny weather."
end

GameData::Ability.define :"KLUTZ" do |a|
  a.name "Klutz"
  a.description "The Pokémon can't use any held items."
end

GameData::Ability.define :"MOLDBREAKER" do |a|
  a.name "Mold Breaker"
  a.description "Moves can be used regardless of Abilities."
end

GameData::Ability.define :"SUPERLUCK" do |a|
  a.name "Super Luck"
  a.description "Heightens the critical-hit ratios of moves."
end

GameData::Ability.define :"AFTERMATH" do |a|
  a.name "Aftermath"
  a.description "Damages the attacker landing the finishing hit."
end

GameData::Ability.define :"ANTICIPATION" do |a|
  a.name "Anticipation"
  a.description "Senses a foe's dangerous moves."
end

GameData::Ability.define :"FOREWARN" do |a|
  a.name "Forewarn"
  a.description "Determines what moves a foe has."
end

GameData::Ability.define :"UNAWARE" do |a|
  a.name "Unaware"
  a.description "Ignores any stat changes in the Pokémon."
end

GameData::Ability.define :"TINTEDLENS" do |a|
  a.name "Tinted Lens"
  a.description "Powers up \"not very effective\" moves."
end

GameData::Ability.define :"FILTER" do |a|
  a.name "Filter"
  a.description "Reduces damage from super-effective attacks."
end

GameData::Ability.define :"SLOWSTART" do |a|
  a.name "Slow Start"
  a.description "Temporarily halves Attack and Speed."
end

GameData::Ability.define :"SCRAPPY" do |a|
  a.name "Scrappy"
  a.description "Enables moves to hit Ghost-type Pokémon."
end

GameData::Ability.define :"STORMDRAIN" do |a|
  a.name "Storm Drain"
  a.description "Draws in all Water-type moves to up Sp. Attack."
end

GameData::Ability.define :"ICEBODY" do |a|
  a.name "Ice Body"
  a.description "The Pokémon gradually regains HP in a hailstorm."
end

GameData::Ability.define :"SOLIDROCK" do |a|
  a.name "Solid Rock"
  a.description "Reduces damage from super-effective attacks."
end

GameData::Ability.define :"SNOWWARNING" do |a|
  a.name "Snow Warning"
  a.description "The Pokémon summons a hailstorm in battle."
end

GameData::Ability.define :"HONEYGATHER" do |a|
  a.name "Honey Gather"
  a.description "The Pokémon may gather Honey from somewhere."
end

GameData::Ability.define :"FRISK" do |a|
  a.name "Frisk"
  a.description "The Pokémon can check a foe's held item."
end

GameData::Ability.define :"RECKLESS" do |a|
  a.name "Reckless"
  a.description "Powers up moves that have recoil damage."
end

GameData::Ability.define :"MULTITYPE" do |a|
  a.name "Multitype"
  a.description "Changes type to match the held Plate."
end

GameData::Ability.define :"FLOWERGIFT" do |a|
  a.name "Flower Gift"
  a.description "Powers up party Pokémon when it is sunny."
end

GameData::Ability.define :"BADDREAMS" do |a|
  a.name "Bad Dreams"
  a.description "Reduces a sleeping foe's HP."
end

GameData::Ability.define :"PICKPOCKET" do |a|
  a.name "Pickpocket"
  a.description "Steals an item when hit by another Pokémon."
end

GameData::Ability.define :"SHEERFORCE" do |a|
  a.name "Sheer Force"
  a.description "Removes added effects to increase move damage."
end

GameData::Ability.define :"CONTRARY" do |a|
  a.name "Contrary"
  a.description "Makes stat changes have an opposite effect."
end

GameData::Ability.define :"UNNERVE" do |a|
  a.name "Unnerve"
  a.description "Makes the foe nervous and unable to eat Berries."
end

GameData::Ability.define :"DEFIANT" do |a|
  a.name "Defiant"
  a.description "When its stats are lowered its Attack increases."
end

GameData::Ability.define :"DEFEATIST" do |a|
  a.name "Defeatist"
  a.description "Lowers stats when HP becomes half or less."
end

GameData::Ability.define :"CURSEDBODY" do |a|
  a.name "Cursed Body"
  a.description "May disable a move used on the Pokémon."
end

GameData::Ability.define :"HEALER" do |a|
  a.name "Healer"
  a.description "May heal an ally's status conditions."
end

GameData::Ability.define :"FRIENDGUARD" do |a|
  a.name "Friend Guard"
  a.description "Reduces damage done to allies."
end

GameData::Ability.define :"WEAKARMOR" do |a|
  a.name "Weak Armor"
  a.description "Physical attacks lower Defense and raise Speed."
end

GameData::Ability.define :"HEAVYMETAL" do |a|
  a.name "Heavy Metal"
  a.description "Doubles the Pokémon's weight."
end

GameData::Ability.define :"LIGHTMETAL" do |a|
  a.name "Light Metal"
  a.description "Halves the Pokémon's weight."
end

GameData::Ability.define :"MULTISCALE" do |a|
  a.name "Multiscale"
  a.description "Reduces damage when HP is full."
end

GameData::Ability.define :"TOXICBOOST" do |a|
  a.name "Toxic Boost"
  a.description "Powers up physical attacks when poisoned."
end

GameData::Ability.define :"FLAREBOOST" do |a|
  a.name "Flare Boost"
  a.description "Powers up special attacks when burned."
end

GameData::Ability.define :"HARVEST" do |a|
  a.name "Harvest"
  a.description "May create another Berry after one is used."
end

GameData::Ability.define :"TELEPATHY" do |a|
  a.name "Telepathy"
  a.description "Anticipates an ally's attack and dodges it."
end

GameData::Ability.define :"MOODY" do |a|
  a.name "Moody"
  a.description "Raises one stat and lowers another."
end

GameData::Ability.define :"OVERCOAT" do |a|
  a.name "Overcoat"
  a.description "Protects the Pokémon from damage from weather."
end

GameData::Ability.define :"POISONTOUCH" do |a|
  a.name "Poison Touch"
  a.description "May poison targets when a Pokémon makes contact."
end

GameData::Ability.define :"REGENERATOR" do |a|
  a.name "Regenerator"
  a.description "Restores a little HP when withdrawn from battle."
end

GameData::Ability.define :"BIGPECKS" do |a|
  a.name "Big Pecks"
  a.description "Protects from Defense-lowering attacks."
end

GameData::Ability.define :"SANDRUSH" do |a|
  a.name "Sand Rush"
  a.description "Boosts the Pokémon's Speed in a sandstorm."
end

GameData::Ability.define :"WONDERSKIN" do |a|
  a.name "Wonder Skin"
  a.description "Makes status-changing moves more likely to miss."
end

GameData::Ability.define :"ANALYTIC" do |a|
  a.name "Analytic"
  a.description "Boosts move power when the Pokémon moves last."
end

GameData::Ability.define :"ILLUSION" do |a|
  a.name "Illusion"
  a.description "Comes out disguised as the Pokémon in back."
end

GameData::Ability.define :"IMPOSTER" do |a|
  a.name "Imposter"
  a.description "It transforms itself into the Pokémon it is facing."
end

GameData::Ability.define :"INFILTRATOR" do |a|
  a.name "Infiltrator"
  a.description "Passes through the foe's barrier and strikes."
end

GameData::Ability.define :"MUMMY" do |a|
  a.name "Mummy"
  a.description "Contact with this Pokémon spreads this Ability."
end

GameData::Ability.define :"MOXIE" do |a|
  a.name "Moxie"
  a.description "Boosts Attack after knocking out any Pokémon."
end

GameData::Ability.define :"JUSTIFIED" do |a|
  a.name "Justified"
  a.description "Raises Attack when hit by a Dark-type move."
end

GameData::Ability.define :"RATTLED" do |a|
  a.name "Rattled"
  a.description "Some move types scare it and boost its Speed."
end

GameData::Ability.define :"MAGICBOUNCE" do |a|
  a.name "Magic Bounce"
  a.description "Reflects status-changing moves."
end

GameData::Ability.define :"SAPSIPPER" do |a|
  a.name "Sap Sipper"
  a.description "Boosts Attack when hit by a Grass-type move."
end

GameData::Ability.define :"PRANKSTER" do |a|
  a.name "Prankster"
  a.description "Gives priority to a status move."
end

GameData::Ability.define :"SANDFORCE" do |a|
  a.name "Sand Force"
  a.description "Boosts certain moves' power in a sandstorm."
end

GameData::Ability.define :"IRONBARBS" do |a|
  a.name "Iron Barbs"
  a.description "Inflicts damage to the Pokémon on contact."
end

GameData::Ability.define :"ZENMODE" do |a|
  a.name "Zen Mode"
  a.description "Changes the Pokémon's shape when HP is halved."
end

GameData::Ability.define :"VICTORYSTAR" do |a|
  a.name "Victory Star"
  a.description "Boosts the accuracy of its allies and itself."
end

GameData::Ability.define :"TURBOBLAZE" do |a|
  a.name "Turboblaze"
  a.description "Moves can be used regardless of Abilities."
end

GameData::Ability.define :"TERAVOLT" do |a|
  a.name "Teravolt"
  a.description "Moves can be used regardless of Abilities."
end

GameData::Ability.define :"AROMAVEIL" do |a|
  a.name "Aroma Veil"
  a.description "Protects against attacks that limit move choices."
end

GameData::Ability.define :"FLOWERVEIL" do |a|
  a.name "Flower Veil"
  a.description "Protects Grass-type allies from stat/status effects."
end

GameData::Ability.define :"CHEEKPOUCH" do |a|
  a.name "Cheek Pouch"
  a.description "Restores HP as well when the Pokémon eats a Berry."
end

GameData::Ability.define :"PROTEAN" do |a|
  a.name "Protean"
  a.description "It changes type to that of the move it's about to use."
end

GameData::Ability.define :"FURCOAT" do |a|
  a.name "Fur Coat"
  a.description "Halves the damage from physical moves."
end

GameData::Ability.define :"MAGICIAN" do |a|
  a.name "Magician"
  a.description "Steals the held item of a Pokémon it hits."
end

GameData::Ability.define :"BULLETPROOF" do |a|
  a.name "Bulletproof"
  a.description "Protects the Pokémon from some ball and bomb moves."
end

GameData::Ability.define :"COMPETITIVE" do |a|
  a.name "Competitive"
  a.description "Sharply boosts Sp. Atk when a stat is lowered."
end

GameData::Ability.define :"STRONGJAW" do |a|
  a.name "Strong Jaw"
  a.description "Boosts the power of biting moves."
end

GameData::Ability.define :"REFRIGERATE" do |a|
  a.name "Refrigerate"
  a.description "Normal-type moves become Ice-type and powered up."
end

GameData::Ability.define :"SWEETVEIL" do |a|
  a.name "Sweet Veil"
  a.description "Prevents itself and allies from falling asleep."
end

GameData::Ability.define :"STANCECHANGE" do |a|
  a.name "Stance Change"
  a.description "Changes between Blade and Shield Forme with attacks."
end

GameData::Ability.define :"GALEWINGS" do |a|
  a.name "Gale Wings"
  a.description "Flying-type moves gain priority when its HP is full."
end

GameData::Ability.define :"MEGALAUNCHER" do |a|
  a.name "Mega Launcher"
  a.description "Powers up aura and pulse moves."
end

GameData::Ability.define :"GRASSPELT" do |a|
  a.name "Grass Pelt"
  a.description "Boosts the Defense stat on Grassy Terrain."
end

GameData::Ability.define :"SYMBIOSIS" do |a|
  a.name "Symbiosis"
  a.description "Passes its held item to an ally that has used theirs."
end

GameData::Ability.define :"TOUGHCLAWS" do |a|
  a.name "Tough Claws"
  a.description "Powers up moves that make direct contact."
end

GameData::Ability.define :"PIXILATE" do |a|
  a.name "Pixilate"
  a.description "Normal-type moves become Fairy-type and powered up."
end

GameData::Ability.define :"GOOEY" do |a|
  a.name "Gooey"
  a.description "Contact with it lowers the attacker's Speed stat."
end

GameData::Ability.define :"AERILATE" do |a|
  a.name "Aerilate"
  a.description "Normal-type moves become Flying-type and power up."
end

GameData::Ability.define :"PARENTALBOND" do |a|
  a.name "Parental Bond"
  a.description "Parent and child each attacks."
end

GameData::Ability.define :"DARKAURA" do |a|
  a.name "Dark Aura"
  a.description "Powers up each Pokémon's Dark-type moves."
end

GameData::Ability.define :"FAIRYAURA" do |a|
  a.name "Fairy Aura"
  a.description "Powers up each Pokémon's Fairy-type moves."
end

GameData::Ability.define :"AURABREAK" do |a|
  a.name "Aura Break"
  a.description "Reverses \"Aura\" Abilities to weaken affected moves."
end

GameData::Ability.define :"PRIMORDIALSEA" do |a|
  a.name "Primordial Sea"
  a.description "Changes the weather to nullify Fire-type moves."
end

GameData::Ability.define :"DESOLATELAND" do |a|
  a.name "Desolate Land"
  a.description "Changes the weather to nullify Water-type moves."
end

GameData::Ability.define :"DELTASTREAM" do |a|
  a.name "Delta Stream"
  a.description "Alters weather to remove Flying-type's weaknesses."
end

GameData::Ability.define :"STAMINA" do |a|
  a.name "Stamina"
  a.description "Boosts Defense when hit by an attack."
end

GameData::Ability.define :"WIMPOUT" do |a|
  a.name "Wimp Out"
  a.description "Cowardly switches out if its HP becomes half or less."
end

GameData::Ability.define :"EMERGENCYEXIT" do |a|
  a.name "Emergency Exit"
  a.description "Switches out if its HP becomes half or less."
end

GameData::Ability.define :"WATERCOMPACTION" do |a|
  a.name "Water Compaction"
  a.description "Sharply ups Defense when hit by a Water-type move."
end

GameData::Ability.define :"MERCILESS" do |a|
  a.name "Merciless"
  a.description "Its attacks are critical hits when it is poisoned."
end

GameData::Ability.define :"SHIELDSDOWN" do |a|
  a.name "Shields Down"
  a.description "Its shell breaks if its HP becomes half or less."
end

GameData::Ability.define :"STAKEOUT" do |a|
  a.name "Stakeout"
  a.description "Deals doubles damage to a target's replacement."
end

GameData::Ability.define :"WATERBUBBLE" do |a|
  a.name "Water Bubble"
  a.description "Weakens incoming Fire-type moves and prevents burns."
end

GameData::Ability.define :"STEELWORKER" do |a|
  a.name "Steelworker"
  a.description "Powers up Steel-type moves."
end

GameData::Ability.define :"BERSERK" do |a|
  a.name "Berserk"
  a.description "Ups Sp. Atk if a hit makes its HP half or less."
end

GameData::Ability.define :"SLUSHRUSH" do |a|
  a.name "Slush Rush"
  a.description "Boosts the Pokémon's Speed stat in a hailstorm."
end

GameData::Ability.define :"LONGREACH" do |a|
  a.name "Long Reach"
  a.description "Uses moves without making contact with the target."
end

GameData::Ability.define :"LIQUIDVOICE" do |a|
  a.name "Liquid Voice"
  a.description "Its sound-based moves become Water-type."
end

GameData::Ability.define :"TRIAGE" do |a|
  a.name "Triage"
  a.description "Gives priority to a healing move."
end

GameData::Ability.define :"GALVANIZE" do |a|
  a.name "Galvanize"
  a.description "Normal-type moves become Electric-type and powered."
end

GameData::Ability.define :"SURGESURFER" do |a|
  a.name "Surge Surfer"
  a.description "Doubles Speed on Electric Terrain."
end

GameData::Ability.define :"SCHOOLING" do |a|
  a.name "Schooling"
  a.description "Forms a powerful school while it has a lot of HP."
end

GameData::Ability.define :"DISGUISE" do |a|
  a.name "Disguise"
  a.description "Its shroud protects it from an attack just once."
end

GameData::Ability.define :"BATTLEBOND" do |a|
  a.name "Battle Bond"
  a.description "Defeating a foe lets it become Ash-Greninja."
end

GameData::Ability.define :"POWERCONSTRUCT" do |a|
  a.name "Power Construct"
  a.description "Changes with other Cells if HP becomes half or less."
end

GameData::Ability.define :"CORROSION" do |a|
  a.name "Corrosion"
  a.description "It can poison Steel- and Poison-type targets."
end

GameData::Ability.define :"COMATOSE" do |a|
  a.name "Comatose"
  a.description "It's always drowsing, and attacks without waking."
end

GameData::Ability.define :"QUEENLYMAJESTY" do |a|
  a.name "Queenly Majesty"
  a.description "Makes foes unable to use priority attacks."
end

GameData::Ability.define :"INNARDSOUT" do |a|
  a.name "Innards Out"
  a.description "Damages an attacker that lands the finishing hit."
end

GameData::Ability.define :"DANCER" do |a|
  a.name "Dancer"
  a.description "Repeats another Pokémon's dance move immediately."
end

GameData::Ability.define :"BATTERY" do |a|
  a.name "Battery"
  a.description "Powers up ally Pokémon's special moves."
end

GameData::Ability.define :"FLUFFY" do |a|
  a.name "Fluffy"
  a.description "Resists contact damage but weaker to Fire-type."
end

GameData::Ability.define :"DAZZLING" do |a|
  a.name "Dazzling"
  a.description "Makes foes unable to use priority attacks."
end

GameData::Ability.define :"SOULHEART" do |a|
  a.name "Soul-Heart"
  a.description "Boosts Sp. Atk each time a Pokémon faints."
end

GameData::Ability.define :"TANGLINGHAIR" do |a|
  a.name "Tangling Hair"
  a.description "Contact with it lowers the attacker's Speed."
end

GameData::Ability.define :"RECEIVER" do |a|
  a.name "Receiver"
  a.description "Copies the Ability of a defeated ally."
end

GameData::Ability.define :"POWEROFALCHEMY" do |a|
  a.name "Power of Alchemy"
  a.description "Copies the Ability of a defeated ally."
end

GameData::Ability.define :"BEASTBOOST" do |a|
  a.name "Beast Boost"
  a.description "Boosts its best stat each time it deals a KO."
end

GameData::Ability.define :"RKSSYSTEM" do |a|
  a.name "RKS System"
  a.description "Its type matches the memory disc it holds."
end

GameData::Ability.define :"ELECTRICSURGE" do |a|
  a.name "Electric Surge"
  a.description "Turns the ground into Electric Terrain."
end

GameData::Ability.define :"PSYCHICSURGE" do |a|
  a.name "Psychic Surge"
  a.description "Turns the ground into Psychic Terrain."
end

GameData::Ability.define :"MISTYSURGE" do |a|
  a.name "Misty Surge"
  a.description "Turns the ground into Misty Terrain."
end

GameData::Ability.define :"GRASSYSURGE" do |a|
  a.name "Grassy Surge"
  a.description "Turns the ground into Grassy Terrain."
end

GameData::Ability.define :"FULLMETALBODY" do |a|
  a.name "Full Metal Body"
  a.description "Prevents other Pokémon from lowering its stats."
end

GameData::Ability.define :"SHADOWSHIELD" do |a|
  a.name "Shadow Shield"
  a.description "Resists damage while its HP is full."
end

GameData::Ability.define :"PRISMARMOR" do |a|
  a.name "Prism Armor"
  a.description "Reduces damage from super-effective attacks."
end

GameData::Ability.define :"NEUROFORCE" do |a|
  a.name "Neuroforce"
  a.description "Powers up moves that are super-effective."
end

GameData::Ability.define :"INTREPIDSWORD" do |a|
  a.name "Intrepid Sword"
  a.description "Boosts Attack when entering a battle."
end

GameData::Ability.define :"DAUNTLESSSHIELD" do |a|
  a.name "Dauntless Shield"
  a.description "Boosts Defense when entering a battle."
end

GameData::Ability.define :"LIBERO" do |a|
  a.name "Libero"
  a.description "It changes type to that of the move it's about to use."
end

GameData::Ability.define :"BALLFETCH" do |a|
  a.name "Ball Fetch"
  a.description "Retrieves the first thrown Poké Ball if it failed."
end

GameData::Ability.define :"COTTONDOWN" do |a|
  a.name "Cotton Down"
  a.description "Scatters Speed-lowering cotton fluff when hit."
end

GameData::Ability.define :"PROPELLERTAIL" do |a|
  a.name "Propeller Tail"
  a.description "This Pokémon's moves cannot be redirected."
end

GameData::Ability.define :"MIRRORARMOR" do |a|
  a.name "Mirror Armor"
  a.description "Bounces back stat-lowering effects."
end

GameData::Ability.define :"GULPMISSILE" do |a|
  a.name "Gulp Missile"
  a.description "Catches prey via Surf or Dive, spits it out when hit."
end

GameData::Ability.define :"STALWART" do |a|
  a.name "Stalwart"
  a.description "This Pokémon's moves cannot be redirected."
end

GameData::Ability.define :"STEAMENGINE" do |a|
  a.name "Steam Engine"
  a.description "Boosts Speed drastically if hit by a Fire or Water move."
  a.flags :"FasterEggHatching"
end

GameData::Ability.define :"PUNKROCK" do |a|
  a.name "Punk Rock"
  a.description "Powers up own sound moves. Resists other sound moves."
end

GameData::Ability.define :"SANDSPIT" do |a|
  a.name "Sand Spit"
  a.description "Creates a sandstorm when hit by an attack."
end

GameData::Ability.define :"ICESCALES" do |a|
  a.name "Ice Scales"
  a.description "Halves the damage taken from special moves."
end

GameData::Ability.define :"RIPEN" do |a|
  a.name "Ripen"
  a.description "Ripens Berries and doubles their effect."
end

GameData::Ability.define :"ICEFACE" do |a|
  a.name "Ice Face"
  a.description "Blocks a physical hit, but the ice head breaks."
end

GameData::Ability.define :"POWERSPOT" do |a|
  a.name "Power Spot"
  a.description "Just being next to the Pokémon powers up moves."
end

GameData::Ability.define :"MIMICRY" do |a|
  a.name "Mimicry"
  a.description "Changes type depending on the terrain."
end

GameData::Ability.define :"SCREENCLEANER" do |a|
  a.name "Screen Cleaner"
  a.description "On entering battle, clears effects of Reflect, etc."
end

GameData::Ability.define :"STEELYSPIRIT" do |a|
  a.name "Steely Spirit"
  a.description "Powers up ally Pokémon's Steel-type moves."
end

GameData::Ability.define :"PERISHBODY" do |a|
  a.name "Perish Body"
  a.description "Both Pokémon faint 3 turns after taking a contact hit."
end

GameData::Ability.define :"WANDERINGSPIRIT" do |a|
  a.name "Wandering Spirit"
  a.description "Swaps Abilities with contact-making Pokémon."
end

GameData::Ability.define :"GORILLATACTICS" do |a|
  a.name "Gorilla Tactics"
  a.description "Boosts Attack, but allows only one move to be used."
end

GameData::Ability.define :"NEUTRALIZINGGAS" do |a|
  a.name "Neutralizing Gas"
  a.description "Nullifies the effects of all other Abilities."
end

GameData::Ability.define :"PASTELVEIL" do |a|
  a.name "Pastel Veil"
  a.description "Protects the Pokémon and its allies from poisoning."
end

GameData::Ability.define :"HUNGERSWITCH" do |a|
  a.name "Hunger Switch"
  a.description "Changes between Full Belly and Hangry Mode each turn."
end

GameData::Ability.define :"QUICKDRAW" do |a|
  a.name "Quick Draw"
  a.description "Enables the Pokémon to move first occasionally."
end

GameData::Ability.define :"UNSEENFIST" do |a|
  a.name "Unseen Fist"
  a.description "The Pokémon's contact moves ignore protections."
end

GameData::Ability.define :"CURIOUSMEDICINE" do |a|
  a.name "Curious Medicine"
  a.description "Removes all allies' stat changes on joining battle."
end

GameData::Ability.define :"TRANSISTOR" do |a|
  a.name "Transistor"
  a.description "Powers up Electric-type moves."
end

GameData::Ability.define :"DRAGONSMAW" do |a|
  a.name "Dragon's Maw"
  a.description "Powers up Dragon-type moves."
end

GameData::Ability.define :"CHILLINGNEIGH" do |a|
  a.name "Chilling Neigh"
  a.description "When knocking out a target, raises Attack."
end

GameData::Ability.define :"GRIMNEIGH" do |a|
  a.name "Grim Neigh"
  a.description "When knocking out a target, raises Sp. Atk."
end

GameData::Ability.define :"ASONECHILLINGNEIGH" do |a|
  a.name "As One"
  a.description "Combines Unnerve and Chilling Neigh Abilities."
end

GameData::Ability.define :"ASONEGRIMNEIGH" do |a|
  a.name "As One"
  a.description "Combines Unnerve and Grim Neigh Abilities."
end

GameData::Ability.define :"ANGERSHELL" do |a|
  a.name "Anger Shell"
  a.description "Gets a powerful boost if a hit makes its HP half or less."
end

GameData::Ability.define :"ARMORTAIL" do |a|
  a.name "Armor Tail"
  a.description "Prevents opposing Pokémon from using priority moves."
end

GameData::Ability.define :"BEADSOFRUIN" do |a|
  a.name "Beads of Ruin"
  a.description "Lowers the Sp. Def of all Pokémon except the user."
end

GameData::Ability.define :"COMMANDER" do |a|
  a.name "Commander"
  a.description "Pairs up and commands with an active Dondozo."
end

GameData::Ability.define :"COSTAR" do |a|
  a.name "Costar"
  a.description "Copies an ally's stat changes upon entry to battle."
end

GameData::Ability.define :"CUDCHEW" do |a|
  a.name "Cud Chew"
  a.description "Reuses an eaten Berry at the end of the next turn."
end

GameData::Ability.define :"EARTHEATER" do |a|
  a.name "Earth Eater"
  a.description "Restores HP if hit by a Ground-type move."
end

GameData::Ability.define :"ELECTROMORPHOSIS" do |a|
  a.name "Electromorphosis"
  a.description "The Pokémon becomes charged upon taking damage."
end

GameData::Ability.define :"GOODASGOLD" do |a|
  a.name "Good as Gold"
  a.description "The Pokémon becomes immune to status moves."
end

GameData::Ability.define :"GUARDDOG" do |a|
  a.name "Guard Dog"
  a.description "Boosts Atk if intimidated and immune to being forced out."
end

GameData::Ability.define :"HADRONENGINE" do |a|
  a.name "Hadron Engine"
  a.description "Turns the ground into Electric Terrain and boosts Sp. Atk."
end

GameData::Ability.define :"LINGERINGAROMA" do |a|
  a.name "Lingering Aroma"
  a.description "Contact with this Pokémon spreads this Ability."
end

GameData::Ability.define :"MYCELIUMMIGHT" do |a|
  a.name "Mycelium Might"
  a.description "Status moves are unimpeded by this Ability but slower to use."
end

GameData::Ability.define :"OPPORTUNIST" do |a|
  a.name "Opportunist"
  a.description "Copies an opponent's stat boost during a turn."
end

GameData::Ability.define :"ORICHALCUMPULSE" do |a|
  a.name "Orichalcum Pulse"
  a.description "Turns the sunlight harsh while boosing Attack."
end

GameData::Ability.define :"PROTOSYNTHESIS" do |a|
  a.name "Protosynthesis"
  a.description "Boosts its best stat in harsh sunlight."
end

GameData::Ability.define :"PURIFYINGSALT" do |a|
  a.name "Purifying Salt"
  a.description "Gains protection from status effects and Ghost-type moves."
end

GameData::Ability.define :"QUARKDRIVE" do |a|
  a.name "Quark Drive"
  a.description "Boosts its best stat in Electric Terrain."
end

GameData::Ability.define :"ROCKYPAYLOAD" do |a|
  a.name "Rocky Payload"
  a.description "Powers up Rock-type moves."
end

GameData::Ability.define :"SEEDSOWER" do |a|
  a.name "Seed Sower"
  a.description "Turns the ground into Grassy Terrain upon taking damage."
end

GameData::Ability.define :"SHARPNESS" do |a|
  a.name "Sharpness"
  a.description "Powers up slicing moves."
end

GameData::Ability.define :"SUPREMEOVERLORD" do |a|
  a.name "Supreme Overlord"
  a.description "Boosts the power of its moves with every fainted ally."
end

GameData::Ability.define :"SWORDOFRUIN" do |a|
  a.name "Sword of Ruin"
  a.description "Lowers the Defense of all Pokémon except the user."
end

GameData::Ability.define :"TABLETSOFRUIN" do |a|
  a.name "Tablets of Ruin"
  a.description "Lowers the Attack of all Pokémon except the user."
end

GameData::Ability.define :"THERMALEXCHANGE" do |a|
  a.name "Thermal Exchange"
  a.description "Boosts Atk when hit by a Fire-type move and prevents burns."
end

GameData::Ability.define :"TOXICDEBRIS" do |a|
  a.name "Toxic Debris"
  a.description "Scatters poison spikes when hit by physical moves."
end

GameData::Ability.define :"VESSELOFRUIN" do |a|
  a.name "Vessel of Ruin"
  a.description "Lowers the Sp. Atk of all Pokémon except the user."
end

GameData::Ability.define :"WELLBAKEDBODY" do |a|
  a.name "Well-Baked Body"
  a.description "Fire-type moves deal no damage and sharply boost Defense."
end

GameData::Ability.define :"WINDPOWER" do |a|
  a.name "Wind Power"
  a.description "The Pokémon becomes charged from taking wind damage."
end

GameData::Ability.define :"WINDRIDER" do |a|
  a.name "Wind Rider"
  a.description "Boosts Attack in Tailwind or when attacked by wind moves."
end

GameData::Ability.define :"ZEROTOHERO" do |a|
  a.name "Zero to Hero"
  a.description "Transforms into its Hero Form when it switches out."
end

GameData::Ability.define :"SUPERSWEETSYRUP" do |a|
  a.name "Supersweet Syrup"
  a.description "Lowers the foe's evasion once per battle."
end

GameData::Ability.define :"HOSPITALITY" do |a|
  a.name "Hospitality"
  a.description "Restores ally's HP a little when entering battle."
end

GameData::Ability.define :"TOXICCHAIN" do |a|
  a.name "Toxic Chain"
  a.description "May badly poison targets when the user attacks."
end

GameData::Ability.define :"MINDSEYE" do |a|
  a.name "Mind's Eye"
  a.description "Prevents accuracy loss. Ignores Ghost immunities."
end

GameData::Ability.define :"EMBODYASPECT" do |a|
  a.name "Embody Aspect"
  a.description "The user's shining mask raises its Speed stat."
end

GameData::Ability.define :"EMBODYASPECT_1" do |a|
  a.name "Embody Aspect"
  a.description "The user's shining mask raises its Sp. Def stat."
end

GameData::Ability.define :"EMBODYASPECT_2" do |a|
  a.name "Embody Aspect"
  a.description "The user's shining mask raises its Attack stat."
end

GameData::Ability.define :"EMBODYASPECT_3" do |a|
  a.name "Embody Aspect"
  a.description "The user's shining mask raises its Defense stat."
end

GameData::Ability.define :"POISONPUPPETEER" do |a|
  a.name "Poison Puppeteer"
  a.description "Moves that inflict poison also cause confusion."
end

GameData::Ability.define :"TERASHIFT" do |a|
  a.name "Tera Shift"
  a.description "Enters Terastal Form when sent out."
end

GameData::Ability.define :"TERASHELL" do |a|
  a.name "Tera Shell"
  a.description "Resists all types when HP is full."
end

GameData::Ability.define :"TERAFORMZERO" do |a|
  a.name "Teraform Zero"
  a.description "Eliminates all weather and terrain."
end
