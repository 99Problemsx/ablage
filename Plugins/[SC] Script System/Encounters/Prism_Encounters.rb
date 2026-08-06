# Prism-managed wild encounters

GameData::Encounter.define 5 do |e|
  e.density :Land, 21
  e.method :Land do |m|
    m.rate 20, :ABRA, level: 10..15
    m.rate 20, :BELLSPROUT, level: 10..15
  end
end
