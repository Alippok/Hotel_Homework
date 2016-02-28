class Reception

attr_reader(:guests, :wallets)

def initialize

@guest1 = Guest.new(name: "Jenny Hill", money: 400, nights: 3, room_wanted: "single room", beds_wanted: 1)
@guest2 = Guest.new(name: "Bob Jackson", money: 432, nights: 1,
  room_wanted: "single room", beds_wanted: 1)
@guest3 = Guest.new(name: "Jill Plairy", money: 520, nights: 5, room_wanted: "double room", beds_wanted: 1)
@guest4 = Guest.new(name: "Garry Trist", money: 546, nights: 7, room_wanted: "single room", beds_wanted: 1)

@guests = [@guest1, @guest2, @guest3, @guest4]


end

def number_guests
  return @guests.count
end

def wallets
  wallet_hash = {}
  index = 1
  for guest in @guests
    wallet_hash["Guest #{index}"] = guest.wallet
    index += 1
  end
  return wallet_hash
end

def guests_objects(number)
  
  guest_array = @guests.slice!(0, number)
  # @guests.select!{|guest| guest_array << guest}
  
  return guest_array
end

def guests_rooms_nights
  guest_hash = {}
  index = 1
  for guest in @guests
    guest_hash["Guest #{index}"] = [guest.name, guest.room_wanted, guest.nights_needed]
    index += 1
  end
  return guest_hash
end










end