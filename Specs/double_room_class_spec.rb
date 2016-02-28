require("minitest/autorun")
require("minitest/rg")
require_relative("../double_room_class.rb")
require_relative("../guest_class.rb")

class TestDoubleRoom < MiniTest::Test

def setup
  @room1 = DoubleRoom.new
  @guest1 = Guest.new(room_wanted: "double room", beds_wanted: 1, name: "Jenny Hill", money: 120, nights: 3)
  @guest2 = Guest.new(name: "Bob Pratt", money: 100, beds_wanted: 2, room_wanted: "double room", nights: 3)

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

def test_if_room_can_receive_a_guest
  result = @room1.receive_guest(@guest1)
  assert_equal("UNAVAILABLE", result)
end

def test_if_room_can_receive_two_guests
  result = @room1.receive_multi_guests(@guest1, @guest2)
  assert_equal("UNAVAILABLE", result)
end

def test_if_room_can_return_guest_name
  result = @room1.occupant_name(@guest1, @guest2)
  assert_equal(["Jenny Hill", "Bob Pratt"], result)
end

def test_if_room_can_retun_guest_nights
  result = @room1.occupant_nights(@guest1,@guest2)
  assert_equal(3, result)
end

def test_if_room_can_give_guest_details
  result = @room1.occupant_query(@guest1, @guest2)
  assert_equal({"Name"=>["Jenny Hill", "Bob Pratt"], "Nights remaining" => 3, "Ready for checkout"=>"No"}, result)
end

end




