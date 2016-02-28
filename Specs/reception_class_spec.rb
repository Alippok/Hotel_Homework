require("minitest/autorun")
require("minitest/rg")
require_relative("../reception_class.rb")
require_relative("../guest_class.rb")


class TestReception < MiniTest::Test

def setup

@reception1 = Reception.new

end

def test_reception_can_list_number_of_guests_waiting
  assert_equal(4, @reception1.number_guests)
end



end