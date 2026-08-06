#===============================================================================
# [SC] Move Tutor Network - Configuration
# Version: 1.0.0
# Distributed Move Tutors across both regions with tracking and discovery.
#===============================================================================

module MoveTutorNetwork
  ENABLED    = true
  DEBUG_MODE = false

  #=============================================================================
  # TUTOR DEFINITIONS
  # Each tutor has a key, name, location, and list of moves they teach.
  # currency: :shards, :money, :bp (Battle Points)
  #=============================================================================

  TUTORS = {
    :ASGHEIM_DOJO => {
      :name     => "Master Hiro",
      :location => "Asgheim City Dojo",
      :map_id   => nil,            # Set to actual map ID
      :currency => :shards,
      :moves    => [
        { :move => :FIREPUNCH,    :cost => 4 },
        { :move => :ICEPUNCH,     :cost => 4 },
        { :move => :THUNDERPUNCH, :cost => 4 },
        { :move => :DRAINPUNCH,   :cost => 6 },
      ]
    },
    :FROSTPEAK_HERMIT => {
      :name     => "Old Frost",
      :location => "Frostpeak Summit",
      :map_id   => nil,
      :currency => :shards,
      :moves    => [
        { :move => :ICICLECRASH,  :cost => 6 },
        { :move => :IRONHEAD,     :cost => 6 },
        { :move => :ZENHEADBUTT,  :cost => 4 },
      ]
    },
    :STORMHAVEN_SAGE => {
      :name     => "Storm Sage",
      :location => "Stormhaven Shrine",
      :map_id   => nil,
      :currency => :money,
      :moves    => [
        { :move => :HURRICANE,      :cost => 8000 },
        { :move => :THUNDERBOLT,    :cost => 5000 },
        { :move => :HEATWAVE,       :cost => 6000 },
      ]
    },
    :ASTORIA_ACADEMY => {
      :name     => "Professor Wei",
      :location => "Astoria Academy",
      :map_id   => nil,
      :currency => :shards,
      :moves    => [
        { :move => :EARTHPOWER,   :cost => 6 },
        { :move => :SIGNALBEAM,   :cost => 4 },
        { :move => :DARKPULSE,    :cost => 6 },
        { :move => :AURASPHERE,   :cost => 8 },
      ]
    },
    :VOID_WANDERER => {
      :name     => "???",
      :location => "Void Rift Entrance",
      :map_id   => nil,
      :currency => :shards,
      :moves    => [
        { :move => :DRACOMETEOR,  :cost => 10 },
        { :move => :OUTRAGE,      :cost => 8 },
        { :move => :SUPERPOWER,   :cost => 8 },
      ]
    },
  }

  #=============================================================================
  # CURRENCY ITEM (for shard-based tutors)
  #=============================================================================

  SHARD_ITEM = :STARDUST    # Item used as shard currency

  #=============================================================================
  # DISCOVERY
  #=============================================================================

  # Grant Codex entry when discovering a tutor (Lore Codex integration)
  CODEX_ON_DISCOVER = true

  #=============================================================================
  # UI
  #=============================================================================
  SE_LEARN_MOVE = "Pkmn move learnt"
  SE_DISCOVER   = "GUI sel decision"
end
