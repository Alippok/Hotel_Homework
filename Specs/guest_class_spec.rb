require("minitest/autorun")
require("minitest/rg")
require_relative("../guest_class.rb")

class TestGuest < MiniTest::Test

def setup
  # guest1_hash = {
  #   room_wanted: "double_room",
  #   beds_wanted: 2,
  #   name: "Jenny Hill",
  #   wallet: 120
  # }
  # @guest1 = Guest.new("Jenny Hill", 120, guest1_hash)
  @guest1 = Guest.new(room_wanted: "double room", beds_wanted: 1, name: "Jenny Hill", money: 120, nights: 3)
  @guest2 = Guest.new(name: "Bob Pratt", money: 100, beds_wanted: 2, room_wanted: "twin room", nights: 4)
end

def test_if_guest_can_say_how_much_money
  assert_equal(120, @guest1.wallet)
end

def test_if_guest_can_tell_name
  assert_equal("Jenny Hill", @guest1.name)
end

def test_if_guest_can_take_money
  assert_equal(150, @guest1.receive(30))
end

def test_if_guest_can_give_number_of_nights_wanted
  assert_equal(3, @guest1.number_of_nights_needed)
end

def test_if_guest_can_give_money_to_another_guest
  result = @guest1.give_money(@guest2, 30)
  assert_equal(90, result)
end

def test_if_guest_can_tell_desired_room
 assert_equal("double room", @guest1.room_wanted)
end



end