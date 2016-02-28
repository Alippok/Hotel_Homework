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
 
  @booking_manager = BookingManager.new
end

def test_booking_manager_can_check_reception_for_number_of_guests
  assert_equal(4, @booking_manager.waiting_guests)
end

def test_booking_manager_can_access_customers_details
  assert_equal({
    "Guest 1" => ["Jenny Hill", "single room", 3],
    "Guest 2" => ["Bob Jackson", "single room", 1],
    "Guest 3" => ["Jill Plairy", "double room", 5], 
    "Guest 4" => ["Garry Trist", "single room", 7]
     }, @booking_manager.guests_rooms_nights)
end

def test_booking_manager_can_check_for_available_rooms
  assert_equal({
  1 => ["single", "AVAILABLE"],
  2 => ["single", "AVAILABLE"],
  3 => ["single", "AVAILABLE"],
  4 => ["single", "AVAILABLE"],
  5 => ["double", "AVAILABLE"],
  6 => ["double", "AVAILABLE"],
  7 => ["double", "AVAILABLE"],
  8 => ["double", "AVAILABLE"]
  }, @booking_manager.check_hotel)
end

def test_if_booking_manager_can_match_guests_with_rooms
assert_equal({
  "Guest 1" => "Room is available",
  "Guest 2" => "Room is available",
  "Guest 3" => "Room is available",
  "Guest 4" => "Room is available"
  }, @booking_manager.guest_room_match)
end

def test_if_booking_manager_can_take_money_and_add_to_hotel
 assert_equal(75, @booking_manager.rate("Guest 1"))
end

def test_if_booking_manager_can_add_money_to_hotel
  assert_equal(75, @booking_manager.collect_revenue(75))
end




end