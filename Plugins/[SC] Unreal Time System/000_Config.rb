#===============================================================================
# [SC] Unreal Time System - Configuration
# Compatible rewrite of FL's Essentials-UnrealTime public API.
#===============================================================================
module UnrealTime
  ENABLED             = true
  PROPORTION          = 50.0   # 50 game seconds per real second
  INITIAL_DATE        = [2000, 1, 1, 12, 0, 0]
  TIME_STOPS          = true   # Advance only in explicitly supported scenes
  BATTLE_PASS         = true
  TALK_PASS           = true
  SWITCH_STOPS        = -1
  EXTRA_SECONDS       = -1
  EXTRA_DAYS          = -1
  TONE_CHECK_INTERVAL = 1.0
end
