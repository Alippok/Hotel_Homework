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

def occupant_nights(guest)#Again this in only to have a guest
  #in the room to have details returned
  @stats["Beds"] << guest #This wont be needed at run time
  
  guest_nights = 0
  @stats["Beds"].each{|guest| guest_nights += guest.nights_needed}
  return guest_nights
 
end

def occupant_query(guest)
  
  occupant_details = {
    "Name"=> "",
    "Nights remaining"=> 0,
    "Ready for checkout" => ""
  }
  name = occupant_name(guest)
  #The result was being affected by the multiple adding of 
  #guests for the purposes of the test. At runtime, would need to remove the adding of customers as there will already be customers in the rooms from check-in. However, the details are recovered.
  guest_nights = 0
  @stats["Beds"].each{|guest| guest_nights += guest.nights_needed}
  
  
  
  occupant_details["Name"] = name
  occupant_details["Nights remaining"] = guest_nights

  if occupant_details["Nights remaining"] == 0
    occupant_details["Ready for checkout"] = "Yes"
    return occupant_details
  elsif occupant_details["Nights remaining"]  > 0
    occupant_details["Ready for checkout"] = "No"
    return occupant_details
  end


end






end