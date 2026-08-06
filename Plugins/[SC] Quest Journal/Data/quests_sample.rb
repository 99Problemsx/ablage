#===============================================================================
# [SC] Quest Journal - Sample Quest Definitions
#===============================================================================

# ─── Main Story ──────────────────────────────────────────────────────────────

QuestRegistry.add(:MAIN_CH1_AWAKENING,
  name: "The Awakening",
  desc: "Strange marks have appeared on your body. Professor Aldric may have answers.",
  category: :MAIN,
  objectives: [
    "Visit Professor Aldric's lab",
    "Receive your starter Pokémon",
    "Investigate the strange marks"
  ],
  reward_text: "Unlock Chapter 2"
)

QuestRegistry.add(:MAIN_FIND_CHOSEN,
  name: "United We Stand",
  desc: "Find the other two Chosen and convince them to join your cause.",
  category: :MAIN,
  objectives: [
    "Find Lyra in the Northern Forest",
    "Find Kael in the Shadow Caves",
    "Return to Aldric together"
  ],
  reward_text: "Party members: Lyra & Kael"
)

# ─── Side Quests ─────────────────────────────────────────────────────────────

QuestRegistry.add(:SIDE_LOST_POKEMON,
  name: "Lost and Found",
  desc: "A child has lost their Pokémon in the forest. Help find it before nightfall.",
  category: :SIDE,
  objectives: [
    "Talk to the crying child in town",
    "Search the forest for the lost Pokémon",
    "Return the Pokémon safely"
  ],
  reward_text: "3 Great Balls + $2000",
  reward_items: [[:GREATBALL, 3]],
  reward_money: 2000
)

QuestRegistry.add(:SIDE_MERCHANT_REQUEST,
  name: "Supply Run",
  desc: "The Merchant Guild needs supplies delivered to the northern outpost.",
  category: :SIDE,
  objectives: [
    "Pick up the supplies from the shop",
    "Deliver to the northern outpost",
    "Report back to the guild master"
  ],
  reward_text: "Merchant Guild reputation + Rare Candy",
  reward_items: [[:RARECANDY, 1]]
)

# ─── Secret Quests ───────────────────────────────────────────────────────────

QuestRegistry.add(:SECRET_HIDDEN_GROTTO,
  name: "The Hidden Grotto",
  desc: "Rumors speak of a hidden grotto where ancient Pokémon still roam...",
  category: :SECRET,
  objectives: [
    "Find all 3 ancient stone tablets",
    "Decipher the tablet riddle",
    "Locate the hidden entrance"
  ],
  reward_text: "Access to Hidden Grotto + Legendary encounter"
)
