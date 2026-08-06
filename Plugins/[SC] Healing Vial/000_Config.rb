#===============================================================================
# [SC] Healing Vial - Configuration
# Version: 1.0.0
# A portable Pokecenter in vial form. Fully heals all party Pokemon (HP,
# status, PP) but has limited charges. Recharges at any Pokemon Center.
#===============================================================================

module HealingVial
  ENABLED = true

  #=============================================================================
  # CHARGES
  #=============================================================================

  # Maximum charges the vial can hold when fully charged.
  MAX_CHARGES = 3

  # Starting charges when the player first obtains the vial.
  STARTING_CHARGES = MAX_CHARGES

  #=============================================================================
  # SOUNDS
  #=============================================================================
  SE_HEAL    = "Pkmn healing"
  SE_EMPTY   = "GUI sel buzzer"
  SE_CHARGE  = "Pkmn move learnt"
end
