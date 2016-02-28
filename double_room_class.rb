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
    return "UNAVAILABLE"
  end
end

def receive_guest(guest)
  @stats["Beds"] << guest
  return room_available
end

def receive_multi_guests(*guests)
  guests.each{|guest| @stats["Beds"] << guest }
  
  return room_available
end

def occupant_name(*guests)#This is only to have a customer in
  guests.each{|guest| @stats["Beds"] << guest }#Done this to make sure there is a 
  #guest acttually in the room. But won't be in the final 
  #method. This method will only be run on UNAVAILABLE ROOMS
  

  # guest_array = @stats["Beds"]
  guest_name = []
  @stats["Beds"].each{|guest| guest_name << guest.name}
  return guest_name 
end

def occupant_nights(*guests)#Again this in only to have a guest
  #in the room to have details returned
  guests.each{|guest| @stats["Beds"] << guest }
  
  guest_nights = 0
  @stats["Beds"].each{|guest| guest_nights += guest.nights_needed}
  return guest_nights - @stats["Beds"][1].nights_needed 
  #A bit long winded but added this to minus the nights of the
  #second person as they are in the same party
end



#   occupant_details = {
#     "Name"=> "",
#     "Nights remaining"=> 0,
#     "Ready for checkout" => ""
#   }
#   occupant_details["Name"] = name
#   occupant_details["Nights remaining"] = nights

#   if occupant_details["Nights remaining"] == 0
#     occupant_details["Ready for checkout"] = "Yes"
#     return occupant_details
#   elsif occupant_details["Nights remaining"]  > 0
#     occupant_details["Ready for checkout"] = "No"
#     return occupant_details
#   end

# end


end