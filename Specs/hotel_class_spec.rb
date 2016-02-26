require("minitest/autorun")
require("minitest/rg")
require_relative("../hotel_class.rb")
require_relative("../single_room_class.rb")
require_relative("../double_room_class.rb")

class TestHotel < MiniTest::Test

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

end

def test_if_hotel_can_list_numbered_rooms_and_types
assert_equal({
  1 => "single",
  2 => "single",
  3 => "single",
  4 => "single",
  5 => "double",
  6 => "double",
  7 => "double",
  8 => "double",
  }, @hotel1.list_rooms)
end

def test_if_hotel_can_give_number_of_rooms
  result = @hotel1.total_rooms
  assert_equal(8, result)
end





end