#===============================================================================
# [SC] Party Banter - Sample Banter Data
# Add your own lines here. This file can be duplicated for different regions.
#===============================================================================

# ─── Lyra Banter ─────────────────────────────────────────────────────────────

BanterRegistry.add(:LYRA, :NEW_AREA,
  text: "The air feels different here... can you feel it too?",
  priority: 5
)

BanterRegistry.add(:LYRA, :LOW_HP,
  text: "We should heal up soon. I don't want anyone getting hurt.",
  priority: 10
)

BanterRegistry.add(:LYRA, :WEATHER, weather: :Rain,
  text: "I've always loved the rain. It reminds me of home.",
  priority: 3
)

BanterRegistry.add(:LYRA, :WEATHER, weather: :Snow,
  text: "It's beautiful, but I hope we find shelter soon.",
  priority: 3
)

BanterRegistry.add(:LYRA, :TIME_OF_DAY, time: :night,
  text: "The stars are breathtaking tonight... Xerneas must be watching.",
  priority: 2
)

BanterRegistry.add(:LYRA, :RANDOM,
  text: "You know, I'm glad we're on this journey together.",
  priority: 1
)

# ─── Kael Banter ─────────────────────────────────────────────────────────────

BanterRegistry.add(:KAEL, :NEW_AREA,
  text: "Hmph. Another place that probably wants to kill us.",
  priority: 5
)

BanterRegistry.add(:KAEL, :LOW_HP,
  text: "We're in rough shape. Don't expect me to carry you.",
  priority: 10
)

BanterRegistry.add(:KAEL, :WEATHER, weather: :Storm,
  text: "Perfect weather for what's coming, don't you think?",
  priority: 3
)

BanterRegistry.add(:KAEL, :TIME_OF_DAY, time: :night,
  text: "Darkness isn't something to fear. I learned that the hard way.",
  priority: 2
)

BanterRegistry.add(:KAEL, :RANDOM,
  text: "... Don't read too much into this. I'm just walking the same direction.",
  priority: 1
)

BanterRegistry.add(:KAEL, :RANDOM,
  text: "Yveltal stirs. Something's close.",
  priority: 4
)

# ─── Aldric Banter ───────────────────────────────────────────────────────────

BanterRegistry.add(:ALDRIC, :NEW_AREA,
  text: "Fascinating! I've read about this area in the archives.",
  priority: 5
)

BanterRegistry.add(:ALDRIC, :LOW_HP,
  text: "A wise trainer knows when to retreat and regroup.",
  priority: 10
)

BanterRegistry.add(:ALDRIC, :TIME_OF_DAY, time: :morning,
  text: "A new day, a new chapter. Shall we see what it holds?",
  priority: 2
)

BanterRegistry.add(:ALDRIC, :RANDOM,
  text: "The Chosen ones aren't just warriors — they're the world's last hope. Remember that.",
  priority: 3, once: true
)
