class Reception

attr_reader(:guests)

def initialize

@guest1 = Guest.new(name: "Jenny Hill", money: 200, nights: 3, room_wanted: "single room", beds_wanted: 1)
@guest2 = Guest.new(name: "Bob Jackson", money: 432, nights: 1,
  room_wanted: "single room", beds_wanted: 1)
@guest3 = Guest.new(name: "Jill Plairy", money: 120, nights: 5, room_wanted: "double room", beds_wanted: 1)
@guest4 = Guest.new(name: "Garry Trist", money: 546, nights: 7, room_wanted: "single room", beds_wanted: 1)

@guests = [@guest1, @guest2, @guest3, @guest4]


end

def number_guests
  return @guests.count
end















end