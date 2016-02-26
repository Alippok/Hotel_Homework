require("minitest/autorun")
require("minitest/rg")
require_relative("../single_room_class.rb")


class TestSingleRoom < MiniTest::Test

def setup
@room1 = SingleRoom.new

end

def test_room_can_give_type
  result = @room1.stats["Type"]
  assert_equal("single", result)
end






end