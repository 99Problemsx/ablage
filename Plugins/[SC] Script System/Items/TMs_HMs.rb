#=============================================================================
# TMs_HMs
#=============================================================================

GameData::Item.define :"TM01" do |i|
  i.name "TM01"
  i.name_plural "TM01s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"FOCUSPUNCH"
  i.description "The user focuses its mind before launching a punch. This move fails if the user is hit before it is used."
end

GameData::Item.define :"TM02" do |i|
  i.name "TM02"
  i.name_plural "TM02s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"DRAGONCLAW"
  i.description "The user slashes the target with huge sharp claws."
end

GameData::Item.define :"TM03" do |i|
  i.name "TM03"
  i.name_plural "TM03s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"WATERPULSE"
  i.description "The user attacks the target with a pulsing blast of water. This may also confuse the target."
end

GameData::Item.define :"TM04" do |i|
  i.name "TM04"
  i.name_plural "TM04s"
  i.pocket 4
  i.price 1500
  i.field_use :"TR"
  i.teaches :"CALMMIND"
  i.description "The user quietly focuses its mind and calms its spirit to raise its Sp. Atk and Sp. Def stats."
end

GameData::Item.define :"TM05" do |i|
  i.name "TM05"
  i.name_plural "TM05s"
  i.pocket 4
  i.price 1000
  i.field_use :"TR"
  i.teaches :"ROAR"
  i.description "The target is scared off, and a different Pokémon is dragged out. In the wild, this ends the battle."
end

GameData::Item.define :"TM06" do |i|
  i.name "TM06"
  i.name_plural "TM06s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"TOXIC"
  i.description "A move that leaves the target badly poisoned. Its poison damage worsens every turn."
end

GameData::Item.define :"TM07" do |i|
  i.name "TM07"
  i.name_plural "TM07s"
  i.pocket 4
  i.price 2000
  i.field_use :"TR"
  i.teaches :"HAIL"
  i.description "The user summons a hailstorm lasting five turns. It damages all Pokémon except Ice types."
end

GameData::Item.define :"TM08" do |i|
  i.name "TM08"
  i.name_plural "TM08s"
  i.pocket 4
  i.price 1500
  i.field_use :"TR"
  i.teaches :"BULKUP"
  i.description "The user tenses its muscles to bulk up its body, raising both its Attack and Defense stats."
end

GameData::Item.define :"TM09" do |i|
  i.name "TM09"
  i.name_plural "TM09s"
  i.pocket 4
  i.price 2000
  i.field_use :"TR"
  i.teaches :"BULLETSEED"
  i.description "The user forcefully shoots seeds at the target two to five times in a row."
end

GameData::Item.define :"TM10" do |i|
  i.name "TM10"
  i.name_plural "TM10s"
  i.pocket 4
  i.price 1500
  i.field_use :"TR"
  i.teaches :"WORKUP"
  i.description "The user is roused, and its Attack and Sp. Atk stats increase."
end

GameData::Item.define :"TM11" do |i|
  i.name "TM11"
  i.name_plural "TM11s"
  i.pocket 4
  i.price 2000
  i.field_use :"TR"
  i.teaches :"SUNNYDAY"
  i.description "The user intensifies the sun for five turns, powering up Fire-type moves and weakening Water-type moves."
end

GameData::Item.define :"TM12" do |i|
  i.name "TM12"
  i.name_plural "TM12s"
  i.pocket 4
  i.price 1500
  i.field_use :"TR"
  i.teaches :"TAUNT"
  i.description "The target is taunted into a rage that allows it to use only attack moves for three turns."
end

GameData::Item.define :"TM13" do |i|
  i.name "TM13"
  i.name_plural "TM13s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"ICEBEAM"
  i.description "The target is struck with an icy-cold beam of energy. This may also leave the target frozen."
end

GameData::Item.define :"TM14" do |i|
  i.name "TM14"
  i.name_plural "TM14s"
  i.pocket 4
  i.price 5500
  i.field_use :"TR"
  i.teaches :"BLIZZARD"
  i.description "A howling blizzard is summoned to strike opposing Pokémon. This may also leave them frozen."
end

GameData::Item.define :"TM15" do |i|
  i.name "TM15"
  i.name_plural "TM15s"
  i.pocket 4
  i.price 7500
  i.field_use :"TR"
  i.teaches :"HYPERBEAM"
  i.description "The target is attacked with a powerful beam. The user can't move on the next turn."
end

GameData::Item.define :"TM16" do |i|
  i.name "TM16"
  i.name_plural "TM16s"
  i.pocket 4
  i.price 2000
  i.field_use :"TR"
  i.teaches :"LIGHTSCREEN"
  i.description "A wondrous wall of light is put up to reduce damage from special attacks for five turns."
end

GameData::Item.define :"TM17" do |i|
  i.name "TM17"
  i.name_plural "TM17s"
  i.pocket 4
  i.price 2000
  i.field_use :"TR"
  i.teaches :"PROTECT"
  i.description "The user protects itself from all attacks. Its chance of failing rises if it is used in succession."
end

GameData::Item.define :"TM18" do |i|
  i.name "TM18"
  i.name_plural "TM18s"
  i.pocket 4
  i.price 2000
  i.field_use :"TR"
  i.teaches :"RAINDANCE"
  i.description "The user summons a heavy rain for five turns, powering up Water-type moves and weakening Fire-type ones."
end

GameData::Item.define :"TM19" do |i|
  i.name "TM19"
  i.name_plural "TM19s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"GIGADRAIN"
  i.description "A nutrient-draining attack. The user's HP is restored by half the damage taken by the target."
end

GameData::Item.define :"TM20" do |i|
  i.name "TM20"
  i.name_plural "TM20s"
  i.pocket 4
  i.price 2000
  i.field_use :"TR"
  i.teaches :"SAFEGUARD"
  i.description "The user creates a protective field that prevents status conditions for five turns."
end

GameData::Item.define :"TM21" do |i|
  i.name "TM21"
  i.name_plural "TM21s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"DAZZLINGGLEAM"
  i.description "The user damages opposing Pokémon by emitting a powerful flash."
end

GameData::Item.define :"TM22" do |i|
  i.name "TM22"
  i.name_plural "TM22s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"SOLARBEAM"
  i.description "In this two-turn attack, the user gathers light, then blasts a bundled beam on the next turn."
end

GameData::Item.define :"TM23" do |i|
  i.name "TM23"
  i.name_plural "TM23s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"IRONTAIL"
  i.description "The target is slammed with a steel-hard tail. This may also lower the target's Defense stat."
end

GameData::Item.define :"TM24" do |i|
  i.name "TM24"
  i.name_plural "TM24s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"THUNDERBOLT"
  i.description "A strong electric blast crashes down on the target. This may also leave the target with paralysis."
end

GameData::Item.define :"TM25" do |i|
  i.name "TM25"
  i.name_plural "TM25s"
  i.pocket 4
  i.price 5500
  i.field_use :"TR"
  i.teaches :"THUNDER"
  i.description "A wicked thunderbolt is dropped on the target to inflict damage. This may also leave them with paralysis."
end

GameData::Item.define :"TM26" do |i|
  i.name "TM26"
  i.name_plural "TM26s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"EARTHQUAKE"
  i.description "The user sets off an earthquake that strikes every Pokémon around it."
end

GameData::Item.define :"TM27" do |i|
  i.name "TM27"
  i.name_plural "TM27s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"LOWSWEEP"
  i.description "The user makes a swift attack on the target's legs, which lowers the target's Speed stat."
end

GameData::Item.define :"TM28" do |i|
  i.name "TM28"
  i.name_plural "TM28s"
  i.pocket 4
  i.price 2000
  i.field_use :"TR"
  i.teaches :"DIG"
  i.description "The user burrows into the ground, then attacks on the next turn. It can also be used to exit dungeons."
end

GameData::Item.define :"TM29" do |i|
  i.name "TM29"
  i.name_plural "TM29s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"PSYCHIC"
  i.description "The target is hit by a strong telekinetic force. This may also lower the target's Sp. Def stat."
end

GameData::Item.define :"TM30" do |i|
  i.name "TM30"
  i.name_plural "TM30s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"SHADOWBALL"
  i.description "The user hurls a shadowy blob at the target. This may also lower the target's Sp. Def stat."
end

GameData::Item.define :"TM31" do |i|
  i.name "TM31"
  i.name_plural "TM31s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"BRICKBREAK"
  i.description "The user attacks with a swift chop. It can also break barriers, such as Light Screen and Reflect."
end

GameData::Item.define :"TM32" do |i|
  i.name "TM32"
  i.name_plural "TM32s"
  i.pocket 4
  i.price 1000
  i.field_use :"TR"
  i.teaches :"DOUBLETEAM"
  i.description "By moving rapidly, the user makes illusory copies of itself to raise its evasiveness."
end

GameData::Item.define :"TM33" do |i|
  i.name "TM33"
  i.name_plural "TM33s"
  i.pocket 4
  i.price 2000
  i.field_use :"TR"
  i.teaches :"REFLECT"
  i.description "A wondrous wall of light is put up to reduce damage from physical attacks for five turns."
end

GameData::Item.define :"TM34" do |i|
  i.name "TM34"
  i.name_plural "TM34s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"SHOCKWAVE"
  i.description "The user strikes the target with a quick jolt of electricity. This attack never misses."
end

GameData::Item.define :"TM35" do |i|
  i.name "TM35"
  i.name_plural "TM35s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"FLAMETHROWER"
  i.description "The target is scorched with an intense blast of fire. This may also leave the target with a burn."
end

GameData::Item.define :"TM36" do |i|
  i.name "TM36"
  i.name_plural "TM36s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"SLUDGEBOMB"
  i.description "Unsanitary sludge is hurled at the target. This may also poison the target."
end

GameData::Item.define :"TM37" do |i|
  i.name "TM37"
  i.name_plural "TM37s"
  i.pocket 4
  i.price 2000
  i.field_use :"TR"
  i.teaches :"SANDSTORM"
  i.description "A five-turn sandstorm is summoned to hurt all combatants except Rock, Ground, and Steel types."
end

GameData::Item.define :"TM38" do |i|
  i.name "TM38"
  i.name_plural "TM38s"
  i.pocket 4
  i.price 5500
  i.field_use :"TR"
  i.teaches :"FIREBLAST"
  i.description "The target is attacked with an intense blast of all-consuming fire. This may also leave them with a burn."
end

GameData::Item.define :"TM39" do |i|
  i.name "TM39"
  i.name_plural "TM39s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"ROCKTOMB"
  i.description "Boulders are hurled at the target. This also lowers the target's Speed stat by preventing its movement."
end

GameData::Item.define :"TM40" do |i|
  i.name "TM40"
  i.name_plural "TM40s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"AERIALACE"
  i.description "The user confounds the target with speed, then slashes. This attack never misses."
end

GameData::Item.define :"TM41" do |i|
  i.name "TM41"
  i.name_plural "TM41s"
  i.pocket 4
  i.price 1500
  i.field_use :"TR"
  i.teaches :"TORMENT"
  i.description "The user torments and enrages the target, making it incapable of using the same move twice in a row."
end

GameData::Item.define :"TM42" do |i|
  i.name "TM42"
  i.name_plural "TM42s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"FACADE"
  i.description "This attack move doubles its power if the user is poisoned, burned, or paralyzed."
end

GameData::Item.define :"TM43" do |i|
  i.name "TM43"
  i.name_plural "TM43s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"VOLTSWITCH"
  i.description "After making its attack, the user rushes back to switch places with a party Pokémon in waiting."
end

GameData::Item.define :"TM44" do |i|
  i.name "TM44"
  i.name_plural "TM44s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"REST"
  i.description "The user goes to sleep for two turns. This fully restores the user's HP and heals any status conditions."
end

GameData::Item.define :"TM45" do |i|
  i.name "TM45"
  i.name_plural "TM45s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"ATTRACT"
  i.description "If it is the opposite gender of the user, the target becomes infatuated and less likely to attack."
end

GameData::Item.define :"TM46" do |i|
  i.name "TM46"
  i.name_plural "TM46s"
  i.pocket 4
  i.price 2000
  i.field_use :"TR"
  i.teaches :"THIEF"
  i.description "The user attacks and steals the target's held item simultaneously."
end

GameData::Item.define :"TM47" do |i|
  i.name "TM47"
  i.name_plural "TM47s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"STEELWING"
  i.description "The target is hit with wings of steel. This may also raise the user's Defense stat."
end

GameData::Item.define :"TM48" do |i|
  i.name "TM48"
  i.name_plural "TM48s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"SKILLSWAP"
  i.description "The user employs its psychic power to exchange Abilities with the target."
end

GameData::Item.define :"TM49" do |i|
  i.name "TM49"
  i.name_plural "TM49s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"SCALD"
  i.description "The user shoots boiling hot water at its target. This may also leave the target with a burn."
end

GameData::Item.define :"TM50" do |i|
  i.name "TM50"
  i.name_plural "TM50s"
  i.pocket 4
  i.price 5500
  i.field_use :"TR"
  i.teaches :"OVERHEAT"
  i.description "The user attacks the target at full power. The attack's recoil harshly lowers the user's Sp. Atk stat."
end

GameData::Item.define :"TM51" do |i|
  i.name "TM51"
  i.name_plural "TM51s"
  i.pocket 4
  i.price 2000
  i.field_use :"TR"
  i.teaches :"ROOST"
  i.description "The user lands and rests its body. This move restores the user's HP by up to half of its max HP."
end

GameData::Item.define :"TM52" do |i|
  i.name "TM52"
  i.name_plural "TM52s"
  i.pocket 4
  i.price 5500
  i.field_use :"TR"
  i.teaches :"FOCUSBLAST"
  i.description "The user heightens its mental focus and unleashes its power. This may also lower the target's Sp. Def stat."
end

GameData::Item.define :"TM53" do |i|
  i.name "TM53"
  i.name_plural "TM53s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"ENERGYBALL"
  i.description "The user draws power from nature and fires it at the target. This may also lower the target's Sp. Def stat."
end

GameData::Item.define :"TM54" do |i|
  i.name "TM54"
  i.name_plural "TM54s"
  i.pocket 4
  i.price 2000
  i.field_use :"TR"
  i.teaches :"FALSESWIPE"
  i.description "A restrained attack that prevents the target from fainting. The target is left with at least 1 HP."
end

GameData::Item.define :"TM55" do |i|
  i.name "TM55"
  i.name_plural "TM55s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"BRINE"
  i.description "If the target's HP is half or less, this attack will hit with double the power."
end

GameData::Item.define :"TM56" do |i|
  i.name "TM56"
  i.name_plural "TM56s"
  i.pocket 4
  i.price 2000
  i.field_use :"TR"
  i.teaches :"FLING"
  i.description "The user flings its held item at the target to attack. This move's power and effects depend on the item."
end

GameData::Item.define :"TM57" do |i|
  i.name "TM57"
  i.name_plural "TM57s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"CHARGEBEAM"
  i.description "The user attacks the target with an electric charge. The user may use any remaining charge to raise its Sp. Atk."
end

GameData::Item.define :"TM58" do |i|
  i.name "TM58"
  i.name_plural "TM58s"
  i.pocket 4
  i.price 2000
  i.field_use :"TR"
  i.teaches :"ENDURE"
  i.description "The user endures any attack with at least 1 HP. Its chance of failing rises if it is used in succession."
end

GameData::Item.define :"TM59" do |i|
  i.name "TM59"
  i.name_plural "TM59s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"DRAGONPULSE"
  i.description "The target is attacked with a shock wave generated by the user's gaping mouth."
end

GameData::Item.define :"TM60" do |i|
  i.name "TM60"
  i.name_plural "TM60s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"DRAINPUNCH"
  i.description "An energy-draining punch. The user's HP is restored by half the damage taken by the target."
end

GameData::Item.define :"TM61" do |i|
  i.name "TM61"
  i.name_plural "TM61s"
  i.pocket 4
  i.price 2000
  i.field_use :"TR"
  i.teaches :"WILLOWISP"
  i.description "The user shoots a sinister flame at the target to inflict a burn."
end

GameData::Item.define :"TM62" do |i|
  i.name "TM62"
  i.name_plural "TM62s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"BUGBUZZ"
  i.description "The user generates a damaging sound wave by vibration. This may also lower the target's Sp. Def stat."
end

GameData::Item.define :"TM63" do |i|
  i.name "TM63"
  i.name_plural "TM63s"
  i.pocket 4
  i.price 2000
  i.field_use :"TR"
  i.teaches :"NASTYPLOT"
  i.description "The user stimulates its brain by thinking bad thoughts. This sharply raises the user's Sp. Atk stat."
end

GameData::Item.define :"TM64" do |i|
  i.name "TM64"
  i.name_plural "TM64s"
  i.pocket 4
  i.price 7500
  i.field_use :"TR"
  i.teaches :"EXPLOSION"
  i.description "The user attacks everything around it by causing a tremendous explosion. The user faints upon using this move."
end

GameData::Item.define :"TM65" do |i|
  i.name "TM65"
  i.name_plural "TM65s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"SHADOWCLAW"
  i.description "The user slashes with a sharp claw made from shadows. Critical hits land more easily."
end

GameData::Item.define :"TM66" do |i|
  i.name "TM66"
  i.name_plural "TM66s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"PAYBACK"
  i.description "The user stores power, then attacks. If the user moves after the target, this attack's power will be doubled."
end

GameData::Item.define :"TM67" do |i|
  i.name "TM67"
  i.name_plural "TM67s"
  i.pocket 4
  i.price 1000
  i.field_use :"TR"
  i.teaches :"RECYCLE"
  i.description "The user recycles a held item that has been used in battle so it can be used again."
end

GameData::Item.define :"TM68" do |i|
  i.name "TM68"
  i.name_plural "TM68s"
  i.pocket 4
  i.price 7500
  i.field_use :"TR"
  i.teaches :"GIGAIMPACT"
  i.description "The user charges at the target using every bit of its power. The user can't move on the next turn."
end

GameData::Item.define :"TM69" do |i|
  i.name "TM69"
  i.name_plural "TM69s"
  i.pocket 4
  i.price 1500
  i.field_use :"TR"
  i.teaches :"ROCKPOLISH"
  i.description "The user polishes its body to reduce drag. This sharply raises the Speed stat."
end

GameData::Item.define :"TM70" do |i|
  i.name "TM70"
  i.name_plural "TM70s"
  i.pocket 4
  i.price 1000
  i.field_use :"TR"
  i.teaches :"FLASH"
  i.description "The user flashes a light that lowers the target's accuracy. It can also be used to illuminate caves."
end

GameData::Item.define :"TM71" do |i|
  i.name "TM71"
  i.name_plural "TM71s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"STONEEDGE"
  i.description "The user stabs the target from below with sharpened stones. Critical hits land more easily."
end

GameData::Item.define :"TM72" do |i|
  i.name "TM72"
  i.name_plural "TM72s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"AVALANCHE"
  i.description "The power of this attack move is doubled if the user has been hurt by the target in the same turn."
end

GameData::Item.define :"TM73" do |i|
  i.name "TM73"
  i.name_plural "TM73s"
  i.pocket 4
  i.price 2000
  i.field_use :"TR"
  i.teaches :"THUNDERWAVE"
  i.description "The user launches a weak jolt of electricity that paralyzes the target."
end

GameData::Item.define :"TM74" do |i|
  i.name "TM74"
  i.name_plural "TM74s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"GYROBALL"
  i.description "The user tackles with a high-speed spin. This move is stronger the slower the user is than the target."
end

GameData::Item.define :"TM75" do |i|
  i.name "TM75"
  i.name_plural "TM75s"
  i.pocket 4
  i.price 1500
  i.field_use :"TR"
  i.teaches :"SWORDSDANCE"
  i.description "A frenetic dance to uplift the fighting spirit. This sharply raises the user's Attack stat."
end

GameData::Item.define :"TM76" do |i|
  i.name "TM76"
  i.name_plural "TM76s"
  i.pocket 4
  i.price 2000
  i.field_use :"TR"
  i.teaches :"STEALTHROCK"
  i.description "The user lays a trap of levitating stones around the opposing team that hurt Pokémon that switch in."
end

GameData::Item.define :"TM77" do |i|
  i.name "TM77"
  i.name_plural "TM77s"
  i.pocket 4
  i.price 1500
  i.field_use :"TR"
  i.teaches :"PSYCHUP"
  i.description "The user hypnotizes itself into copying any stat change made by the target."
end

GameData::Item.define :"TM78" do |i|
  i.name "TM78"
  i.name_plural "TM78s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"SNARL"
  i.description "The user yells as if it's ranting about something, which lowers the Sp. Atk stats of opposing Pokémon."
end

GameData::Item.define :"TM79" do |i|
  i.name "TM79"
  i.name_plural "TM79s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"DARKPULSE"
  i.description "The user releases a horrible aura imbued with dark thoughts. This may also make the target flinch."
end

GameData::Item.define :"TM80" do |i|
  i.name "TM80"
  i.name_plural "TM80s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"ROCKSLIDE"
  i.description "Large boulders are hurled at opposing Pokémon to inflict damage. This may also make them flinch."
end

GameData::Item.define :"TM81" do |i|
  i.name "TM81"
  i.name_plural "TM81s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"XSCISSOR"
  i.description "The user slashes at the target by crossing its scythes or claws as if they were a pair of scissors."
end

GameData::Item.define :"TM82" do |i|
  i.name "TM82"
  i.name_plural "TM82s"
  i.pocket 4
  i.price 1000
  i.field_use :"TR"
  i.teaches :"SLEEPTALK"
  i.description "While it is asleep, the user randomly uses one of the moves it knows."
end

GameData::Item.define :"TM83" do |i|
  i.name "TM83"
  i.name_plural "TM83s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"BULLDOZE"
  i.description "The user strikes everything around it by stomping down on the ground. This lowers the Speed of those hit."
end

GameData::Item.define :"TM84" do |i|
  i.name "TM84"
  i.name_plural "TM84s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"POISONJAB"
  i.description "The target is stabbed with a tentacle, arm, or the like steeped in poison. This may also poison them."
end

GameData::Item.define :"TM85" do |i|
  i.name "TM85"
  i.name_plural "TM85s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"DREAMEATER"
  i.description "The user eats the dreams of a sleeping target. The user's HP is restored by half the damage dealt."
end

GameData::Item.define :"TM86" do |i|
  i.name "TM86"
  i.name_plural "TM86s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"GRASSKNOT"
  i.description "The user snares the target with grass and trips it. The heavier the target, the strong the move is."
end

GameData::Item.define :"TM87" do |i|
  i.name "TM87"
  i.name_plural "TM87s"
  i.pocket 4
  i.price 1500
  i.field_use :"TR"
  i.teaches :"SWAGGER"
  i.description "The user enrages and confuses the target. However, this also sharply raises the target's Attack stat."
end

GameData::Item.define :"TM88" do |i|
  i.name "TM88"
  i.name_plural "TM88s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"PLUCK"
  i.description "The user pecks the target. If the target is holding a Berry, the user eats it and gains its effect."
end

GameData::Item.define :"TM89" do |i|
  i.name "TM89"
  i.name_plural "TM89s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"UTURN"
  i.description "After making its attack, the user rushes back to switch places with a party Pokémon in waiting."
end

GameData::Item.define :"TM90" do |i|
  i.name "TM90"
  i.name_plural "TM90s"
  i.pocket 4
  i.price 2000
  i.field_use :"TR"
  i.teaches :"SUBSTITUTE"
  i.description "The user creates a substitute for itself using some of its HP. The substitute serves as a decoy."
end

GameData::Item.define :"TM91" do |i|
  i.name "TM91"
  i.name_plural "TM91s"
  i.pocket 4
  i.price 3000
  i.field_use :"TR"
  i.teaches :"FLASHCANNON"
  i.description "The user gathers all its light energy and releases it all at once. This may also lower the target's Sp. Def stat."
end

GameData::Item.define :"TM92" do |i|
  i.name "TM92"
  i.name_plural "TM92s"
  i.pocket 4
  i.price 5500
  i.field_use :"TR"
  i.teaches :"TRICKROOM"
  i.description "The user creates a bizarre area in which slower Pokémon get to move first for five turns."
end

GameData::Item.define :"TM93" do |i|
  i.name "TM93"
  i.name_plural "TM93s"
  i.pocket 4
  i.price 2000
  i.field_use :"TR"
  i.teaches :"CUT"
  i.description "The target is cut with a scythe or claw."
end

GameData::Item.define :"TM94" do |i|
  i.name "TM94"
  i.name_plural "TM94s"
  i.pocket 4
  i.price 2000
  i.field_use :"TR"
  i.teaches :"FLY"
  i.description "The user flies up into the sky and then strikes its target on the next turn."
end

GameData::Item.define :"TM95" do |i|
  i.name "TM95"
  i.name_plural "TM95s"
  i.pocket 4
  i.price 2500
  i.field_use :"TR"
  i.teaches :"SURF"
  i.description "The user attacks everything around it by swamping its surroundings with a giant wave."
end

GameData::Item.define :"HM01" do |i|
  i.name "HM01"
  i.name_plural "HM01s"
  i.pocket 4
  i.field_use :"HM"
  i.teaches :"CUT"
  i.description "The target is cut with a scythe or claw. This can also be used to cut down thin trees."
end

GameData::Item.define :"HM02" do |i|
  i.name "HM02"
  i.name_plural "HM02s"
  i.pocket 4
  i.field_use :"HM"
  i.teaches :"FLY"
  i.description "The user soars and then strikes on the next turn. This can also be used to fly to any familiar town."
end

GameData::Item.define :"HM03" do |i|
  i.name "HM03"
  i.name_plural "HM03s"
  i.pocket 4
  i.field_use :"HM"
  i.teaches :"SURF"
  i.description "Attacks everything by swamping the surroundings with a giant wave. This can also be used to cross water."
end

GameData::Item.define :"HM04" do |i|
  i.name "HM04"
  i.name_plural "HM04s"
  i.pocket 4
  i.field_use :"HM"
  i.teaches :"STRENGTH"
  i.description "The target is slugged with a punch thrown at maximum power. This can also be used to move heavy boulders."
end

GameData::Item.define :"HM05" do |i|
  i.name "HM05"
  i.name_plural "HM05s"
  i.pocket 4
  i.field_use :"HM"
  i.teaches :"WATERFALL"
  i.description "The user charges at the target and may make it flinch. It can also be used to climb a waterfall."
end

GameData::Item.define :"HM06" do |i|
  i.name "HM06"
  i.name_plural "HM06s"
  i.pocket 4
  i.field_use :"HM"
  i.teaches :"DIVE"
  i.description "Diving on the first turn, the user floats up and attacks on the second. It can be used to dive underwater."
end

GameData::Item.define :"TM96" do |i|
  i.name "TM96"
  i.name_plural "TM96s"
  i.pocket 4
  i.price 2000
  i.field_use :"TR"
  i.teaches :"STRENGTH"
  i.description "The target is slugged with a punch thrown at maximum power."
end

GameData::Item.define :"TM97" do |i|
  i.name "TM97"
  i.name_plural "TM97s"
  i.pocket 4
  i.price 2000
  i.field_use :"TR"
  i.teaches :"DEFOG"
  i.description "A strong wind blows away the target's barriers, such as Reflect, and lowers their evasiveness."
end

GameData::Item.define :"TM98" do |i|
  i.name "TM98"
  i.name_plural "TM98s"
  i.pocket 4
  i.price 2000
  i.field_use :"TR"
  i.teaches :"ROCKSMASH"
  i.description "The user attacks with a punch that may lower the target's Defense stat."
end

GameData::Item.define :"TM99" do |i|
  i.name "TM99"
  i.name_plural "TM99s"
  i.pocket 4
  i.price 2500
  i.field_use :"TR"
  i.teaches :"WATERFALL"
  i.description "The user charges at the target and may make it flinch."
end

GameData::Item.define :"TM100" do |i|
  i.name "TM100"
  i.name_plural "TM100s"
  i.pocket 4
  i.price 2000
  i.field_use :"TR"
  i.teaches :"ROCKCLIMB"
  i.description "A charging attack that may also leave the foe confused."
end
