require("minitest/autorun")
require("minitest/rg")
require_relative("../group_class.rb")
require_relative("../guest_class.rb")

class TestGroup < MiniTest::Test

def setup
  @guest1 = Guest.new(room_wanted: "double room", beds_wanted: 1, name: "Jenny Hill", money: 120)
  @guest2 = Guest.new(room_wanted: "double room", beds_wanted: 1, name: "Garry Hill", money: 100)
  @guest3 = Guest.new(room_wanted: "twin room", beds_wanted: 1, name: "Faye Hill", money: 20)
  @guest4 = Guest.new(room_wanted: "twin room", beds_wanted: 1, name: "Susan Hill", money: 24)
  @group1 = Group.new(@guest1, @guest2, @guest3, @guest4)
end

def test_to_map_guests_to_a_hash
  assert_equal({
     1 => @guest1, 
     2 => @guest2,
     3 => @guest3,
     4 => @guest4
    }, @group1.list_group)
end

def test_to_give_all_guests_in_booking
  assert_equal({
    1 => @guest1.name,
    2 => @guest2.name,
    3 => @guest3.name,
    4 => @guest4.name
    }, @group1.list_names)
end

def test_to_give_rooms_wanted_by_group
  assert_equal(["double room", "twin room"], @group1.list_rooms)
end





end