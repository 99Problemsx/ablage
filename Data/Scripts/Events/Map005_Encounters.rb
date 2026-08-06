GameData::Encounter.define 5, dex: :limited do |e|
  e.density :Land, 21
  e.method :Land do |m|
    m.rate 10, :PIDGEY,    level: 5..10
    m.rate 10, :PIDGEY,    level: 5..10
    m.rate 10, :BULBASAUR, level: 5..10
  end
end
