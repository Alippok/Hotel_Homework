class BookingManager

attr_reader(:reception, :hotel, :rooms, :checked_out)
def initialize
  @room1 = SingleRoom.new
  @room2 = SingleRoom.new
  @room3 = SingleRoom.new
  @room4 = SingleRoom.new
  @room5 = DoubleRoom.new
  @room6 = DoubleRoom.new
  @room7 = DoubleRoom.new
  @room8 = DoubleRoom.new

  @rooms = [@room1, @room2, @room3, @room4, @room5, @room6, @room7, @room8, ]

  @hotel1 = Hotel.new("Hotel California", @rooms )
  
@reception1 = Reception.new
@checked_out = CheckedOut.new

end


def waiting_guests
  return @reception1.number_guests
end

def guests_rooms_nights
 return @reception1.guests_rooms_nights
end

def check_hotel
  hotel_list = @hotel1.list_rooms
  index = 1
  for room, type in hotel_list
    hotel_list[index] = [type.stats["Type"], type.room_available]
    index += 1
  end
end




end