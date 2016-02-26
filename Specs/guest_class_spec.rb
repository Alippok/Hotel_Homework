require("minitest/autorun")
require("minitest/rg")
require_relative("../guest_class.rb")

class TestGuest < MiniTest::Test

def setup
 @guest1 = Guest.new("Jenny Hill", 120)
 @guest2 = Guest.new("Bob Pratt", 100)
end

def test_if_guest_can_say_how_much_money
  assert_equal(120, @guest1.wallet)
end

def test_if_guest_can_take_money
  assert_equal(150, @guest1.receive(30))
end

# def test_if_guest_can_give_money_to_another_guest
#   result = @guest1.give_money(@guest2, 30)
#   assert_equal(130, result)

# end


end