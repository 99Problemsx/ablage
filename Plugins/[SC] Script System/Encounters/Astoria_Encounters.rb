#===============================================================================
# Astoria Region — Wild Encounter Tables
#===============================================================================
# Three biome tables for the Astoria region maps:
#   Map 44 — Fracture / Astoria coast town (Ch37-38)
#   Map 45 — Three Temples plateau (Ch39-41)
#   Map 46 — Crown Chamber approach (Ch42, post-trials)
#
# Astoria themes: living-fossil ocean, exposed sea-cliffs, salt-storm groves.
# Pokemon are biased toward water, rock/ground, ancient/fossil, and the few
# steel-line natives the codex established.
#===============================================================================

#-------------------------------------------------------------------------------
# Map 44 — Astoria Coast (Fracture town, Ch37-38)
#-------------------------------------------------------------------------------
GameData::Encounter.define 44 do |e|
  e.density :Land, 22

  e.method :Land do |m|
    m.rate 22, :WINGULL,    level: 22..26
    m.rate 18, :KRABBY,     level: 22..25
    m.rate 14, :PSYDUCK,    level: 22..26
    m.rate 10, :MAGIKARP,   level: 22..28
    m.rate 10, :CORSOLA,    level: 24..28
    m.rate  8, :SHELLDER,   level: 24..28
    m.rate  6, :STARYU,     level: 25..28
    m.rate  6, :CHINCHOU,   level: 25..28
    m.rate  4, :SKRELP,     level: 26..29
    m.rate  2, :MANTYKE,    level: 26..30
  end

  e.method :Water do |m|
    m.rate 30, :MAGIKARP,   level: 25..30
    m.rate 20, :TENTACOOL,  level: 25..30
    m.rate 18, :CHINCHOU,   level: 27..32
    m.rate 12, :REMORAID,   level: 28..32
    m.rate 10, :HORSEA,     level: 28..33
    m.rate  6, :LAPRAS,     level: 30..34
    m.rate  4, :RELICANTH,  level: 30..35
  end

  e.method :OldRod do |m|
    m.rate 70, :MAGIKARP,   level: 10..20
    m.rate 30, :TENTACOOL,  level: 15..20
  end

  e.method :GoodRod do |m|
    m.rate 60, :MAGIKARP,   level: 20..28
    m.rate 20, :HORSEA,     level: 24..30
    m.rate 15, :CHINCHOU,   level: 24..30
    m.rate  5, :CORSOLA,    level: 28..32
  end

  e.method :SuperRod do |m|
    m.rate 45, :GYARADOS,   level: 30..38
    m.rate 25, :SEADRA,     level: 30..36
    m.rate 15, :LANTURN,    level: 32..38
    m.rate 10, :RELICANTH,  level: 34..40
    m.rate  5, :LAPRAS,     level: 34..40
  end
end

#-------------------------------------------------------------------------------
# Map 45 — Three Temples Plateau (Ch39-41)
#-------------------------------------------------------------------------------
GameData::Encounter.define 45 do |e|
  e.density :Land, 18

  e.method :Land do |m|
    m.rate 18, :SKARMORY,   level: 28..32
    m.rate 14, :NOSEPASS,   level: 28..32
    m.rate 14, :ARON,       level: 28..32
    m.rate 12, :GLIGAR,     level: 28..32
    m.rate 10, :LARVITAR,   level: 28..32
    m.rate  8, :RHYHORN,    level: 30..34
    m.rate  8, :CRANIDOS,   level: 30..34   # ancient pool
    m.rate  6, :ANORITH,    level: 30..34
    m.rate  4, :SHIELDON,   level: 30..34
    m.rate  4, :LILEEP,     level: 30..34
    m.rate  2, :AERODACTYL, level: 34..38   # very rare
  end

  e.method :Cave do |m|
    m.rate 25, :ZUBAT,      level: 28..32
    m.rate 18, :ARON,       level: 30..34
    m.rate 14, :GEODUDE,    level: 30..34
    m.rate 12, :ONIX,       level: 32..36
    m.rate 10, :NOSEPASS,   level: 30..34
    m.rate  8, :LARVITAR,   level: 32..36
    m.rate  6, :MAWILE,     level: 32..36
    m.rate  4, :SHIELDON,   level: 32..36
    m.rate  3, :CRANIDOS,   level: 32..36
  end
end

#-------------------------------------------------------------------------------
# Map 46 — Crown Chamber Approach (Ch42 — post-trials, dragon/ancient mix)
#-------------------------------------------------------------------------------
GameData::Encounter.define 46 do |e|
  e.density :Land, 12

  e.method :Land do |m|
    m.rate 18, :BAGON,      level: 36..40
    m.rate 16, :SHELGON,    level: 38..42
    m.rate 14, :DRUDDIGON,  level: 38..42
    m.rate 12, :NOIBAT,     level: 36..40
    m.rate 12, :SALAMENCE,  level: 42..46   # rare
    m.rate 10, :METANG,     level: 40..44
    m.rate  8, :TYRANITAR,  level: 42..46   # rare
    m.rate  6, :ARCHEN,     level: 38..42
    m.rate  4, :TYRUNT,     level: 38..42
  end
end
