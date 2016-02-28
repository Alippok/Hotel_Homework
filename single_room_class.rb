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
    return "UNAVAILABLE"
  end
end

def receive_guest(guest)
  @stats["Beds"] << guest
  return room_available
end

def occupant_name(guest)#This is only to have a customer in
  @stats["Beds"] << guest #Done this to make sure there is a 
  #guest acttually in the room. But won't be in the final 
  #method. This method will only be run on UNAVAILABLE ROOMS
  

  # guest_array = @stats["Beds"]
  guest_name = ""
  @stats["Beds"].each{|guest| guest_name = guest.name}
  return guest_name 
end







end