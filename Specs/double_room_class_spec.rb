require("minitest/autorun")
require("minitest/rg")
require_relative("../double_room_class.rb")

class TestDoubleRoom < MiniTest::Test

def setup
  @room1 = DoubleRoom.new

end

def test_room_can_give_type
  result = @room1.stats["Type"]
  assert_equal("double", result)
end

def test_room_can_give_price_per_night
  result = @room1.stats["Price per night"]
  assert_equal(50, result)
end

def test_if_room_can_tell_its_capacity
  result = @room1.stats["Capacity"]
  assert_equal(2, result)
end

def test_if_room_can_tell_if_bed_is_available
  result = @room1.room_available
  assert_equal("AVAILABLE", result)
end




end




