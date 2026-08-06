#===============================================================================
# Codex Discovery Wire-up
#===============================================================================
# Auto-unlocks codex entries as the player progresses through chapters and
# specific story beats. Listens to :on_sc_chapter_completed and a handful of
# bespoke EventHandlers so we do not have to hand-place 30+ codexDiscover
# calls inside individual cutscenes.
#
# Add new chapter -> [keys...] entries below to extend.
#===============================================================================

module SCCodexUnlocks
  # Per-chapter entries — fired the moment Chapter.complete(:chN) runs.
  CHAPTER_TO_KEYS = {
    :ch0  => [:STARTER_BOND, :WILLOW, :SHADOW],
    :ch1  => [:ASGHEIM_OVERVIEW],
    :ch2  => [:ALDRIC_PROFILE],
    :ch3  => [:CROWN_SHATTER_MYTH, :THE_THREE_CHOSEN, :NIDHOGGR_ORIGIN],
    :ch4  => [:GYM1_FERN],
    :ch5  => [:THE_SHATTERED_HAND],
    :ch6  => [:GYM2_KAREL],
    :ch7  => [:RAGNAR_PROFILE],
    :ch9  => [:GYM3_KESTRA],
    :ch10 => [:MALACHAR_PROFILE],
    :ch11 => [:ZACIAN_PERSONALITY, :ZACIAN_AS_PARTNER],
    :ch12 => [:GENERAL_SHADE, :GYM4_SOREN],
    :ch14 => [:XERNEAS_PERSONALITY, :XERNEAS_AS_PARTNER],
    :ch16 => [:YVELTAL_PERSONALITY, :YVELTAL_AS_PARTNER],
    :ch17 => [:GYM5_INES],
    :ch18 => [:GENERAL_DREAD],
    :ch20 => [:SUBJECT_ZERO, :FIRST_CHOSEN],
    :ch21 => [:GYM6_PETRA],
    :ch22 => [:GENERAL_VEX],
    :ch23 => [:GENERAL_RUIN, :GYM7_TARQUIN],
    :ch24 => [:MARCUS_RETIRED],
    :ch25 => [:ETERNAL_SEAL],
    :ch26 => [:GYM8_VALA],
    :ch37 => [:ASTORIA_OVERVIEW]
  }.freeze
end

EventHandlers.add(:on_sc_chapter_completed, :sc_codex_unlock_by_chapter,
  proc { |chapter_id|
    next unless defined?(codexDiscover)
    keys = SCCodexUnlocks::CHAPTER_TO_KEYS[chapter_id]
    next unless keys
    keys.each { |k| codexDiscover(k) rescue nil }
  }
)
