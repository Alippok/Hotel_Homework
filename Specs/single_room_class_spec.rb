require("minitest/autorun")
require("minitest/rg")
require_relative("../single_room_class.rb")
require_relative("../guest_class.rb")

class TestSingleRoom < MiniTest::Test

def setup
@room1 = SingleRoom.new
@guest1 = Guest.new(room_wanted: "double room", beds_wanted: 1, name: "Jenny Hill", money: 120, nights: 3)
end

def test_room_can_give_type
  result = @room1.stats["Type"]
  assert_equal("single", result)
end

def test_room_can_give_price_per_night
  result = @room1.stats["Price per night"]
  assert_equal(25, result)
end

def test_if_room_can_tell_its_capacity
  result = @room1.stats["Capacity"]
  assert_equal(1, result)
end

def test_if_room_can_tell_if_bed_is_available
  result = @room1.room_available
  assert_equal("AVAILABLE", result)
end

def test_if_room_can_receive_a_guest
  result = @room1.receive_guest(@guest1)
  assert_equal("UNAVAILABLE", result)
end

def test_if_room_can_return_guest_name
  result = @room1.occupant_name(@guest1)
  assert_equal("Jenny Hill", result)
end

def test_if_room_can_return_guest_nights
  result = @room1.occupant_nights(@guest1)
  assert_equal(3, result)
end

def test_if_room_can_give_guest_details
  result = @room1.occupant_query(@guest1)
  assert_equal({"Name"=>"Jenny Hill", "Nights remaining" => 3, "Ready for checkout"=>"No"}, result)
end

end