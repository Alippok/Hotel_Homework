require("minitest/autorun")
require("minitest/rg")
require_relative("../guest_class.rb")

class TestGuest < MiniTest::Test

def setup
 @guest1 = Guest.new("Jenny Hill", 120)
end

def test_if_guest_can_say_how_much_money
  assert_equal(120, @guest1.wallet)
end



end