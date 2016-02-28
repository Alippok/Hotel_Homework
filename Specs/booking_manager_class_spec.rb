require("minitest/autorun")
require("minitest/rg")
require_relative("../booking_manager_class.rb")
require_relative("../hotel_class.rb")
require_relative("../single_room_class.rb")
require_relative("../double_room_class.rb")
require_relative("../guest_class.rb")
require_relative("../reception_class.rb")
require_relative("../checked_out_class.rb")



class TestBookingManager < MiniTest::Test

def setup
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
  @booking_manager = BookingManager.new(@hotel1, )
end

def test_booking_manager_can_check_reception_for_number_of_guests
  assert_equal(4, @booking_manager.waiting_guests)
end

end