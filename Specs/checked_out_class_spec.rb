require("minitest/autorun")
require("minitest/rg")
require_relative("../checked_out_class.rb")
require_relative("../guest_class.rb")

class TestCheckedOut < MiniTest::Test 

def setup
  @guest1 = Guest.new(name: "Jenny Hill", money: 400, nights: 3, room_wanted: "single room", beds_wanted: 1)
  @guest2 = Guest.new(name: "Bob Jackson", money: 432, nights: 1, room_wanted: "single room", beds_wanted: 1)
  @checked_out = CheckedOut.new

end

def test_can_receive_a_guest_object
  assert_equal([@guest1], @checked_out.check_out(@guest1))
end

def test_if_checked_out_guest_can_be_view_with_random_comment
  assert_equal({
    "Jenny Hill" => "comment",
    "Bob Jackson"=> "comment"
    }, @checked_out.comments(@guest1, @guest2))
end







end 