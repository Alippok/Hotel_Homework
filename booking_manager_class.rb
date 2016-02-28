class BookingManager

attr_reader(:reception, :hotel, :rooms, :checked_out)
def initialize(hotel)

@reception1 = Reception.new
@checked_out = CheckedOut.new

end


def waiting_guests
  return @reception1.number_guests
end




end