class DoubleRoom

  attr_reader(:stats)

  def initialize
    @stats = {
      "Type" => "double",
      "Capacity" => 2,
      "Beds" => [],
      "Price per night" => 50

      }

  end


def room_available
  if @stats["Beds"].empty?
    return "AVAILABLE"
  else
    return "TAKEN"
  end
end

def receive_guest(guest)
  @stats["Beds"] << guest
  return room_available
end









end