class SingleRoom

  attr_reader(:stats)

  def initialize
    @stats = {
      "Type" => "single",
      "Capacity" => 1,
      "Beds" => [],
      "Price per night" => 25

      }

  end


def room_available
  if @stats["Beds"].empty?
    return "AVAILABLE"
  else
    return "TAKEN"
  end
end









end