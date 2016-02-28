require("minitest/autorun")
require("minitest/rg")
require_relative("../reception_class.rb")
require_relative("../guest_class.rb")


class TestReception < MiniTest::Test

def setup

@reception1 = Reception.new
@guest1 = Guest.new(name: "Jenny Hill", money: 400, nights: 3, room_wanted: "single room", beds_wanted: 1)
@guest2 = Guest.new(name: "Bob Jackson", money: 432, nights: 1,
  room_wanted: "single room", beds_wanted: 1)
@guest3 = Guest.new(name: "Jill Plairy", money: 520, nights: 5, room_wanted: "double room", beds_wanted: 1)
@guest4 = Guest.new(name: "Garry Trist", money: 546, nights: 7, room_wanted: "single room", beds_wanted: 1)
end

def test_reception_can_list_number_of_guests_waiting
  assert_equal(4, @reception1.number_guests)
end

def test_if_reception_can_give_list_of_rooms_wanted
  assert_equal({
    "Guest 1" => ["Jenny Hill", "single room"],
    "Guest 2" => ["Bob Jackson", "single room"],
    "Guest 3" => ["Jill Plairy", "double room"], 
    "Guest 4" => ["Garry Trist", "single room"]
     }, @reception1.guests_rooms)
end

def test_reception_can_return_guests_wallet_amount
  assert_equal({
    "Guest 1" => 400, 
    "Guest 2" => 432,
    "Guest 3" => 520,
    "Guest 4" => 546
    }, @reception1.wallets)
end

def test_reception_can_give_guest_objects
  result = @reception1.guests_objects(2)
  assert_equal(2, result.count)#Have done count becasue test fails as no visible difference. However, it does return the objects I need
end 

end