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

def guest_room_match
  list = guests_rooms_nights
  hotel = check_hotel
  index = 1
  availability = []
  
  for guest, details in list
    details[1]

    for room, type in hotel
      if details[1].include?(type[0])
        availability.push(type[1])
      end
    end
   if availability.include?("AVAILABLE")
    list["Guest #{index}"] = "Room is available"
   elsif availability.include?("UNAVAILABLE")
    list["Guest #{index}"] = "Room is unavailable"
   end
   index += 1
  end
  return list
end

def rate(guest)
  guests = guests_rooms_nights
  list = guest_room_match
  money = @reception1.wallets

  nights = guests[guest][2]
  room = guests[guest][1]
  if room.include?("single")
    return nights * 25
  elsif room_include?("double")
    return nights * 50
  end
   #have amount just need to take it from guest and add to hotel
   #Also need to move a customer to and from hotel

end

def collect_guest_money(guest)
  amount_to_take = rate(guest)
  wallets_hash = @reception1.wallets
  wallets_hash[guest] -= amount_to_take
  return wallets_hash[guest]

end

def deposit_revenue(amount)
  @hotel1.safe[5910] += amount  
  return @hotel1.safe[5910]
end


end