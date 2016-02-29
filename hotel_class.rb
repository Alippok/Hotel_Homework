class Hotel

attr_reader(:name, :rooms, :safe)

def initialize(name, *rooms)
@name = name
@rooms = rooms
@safe = {
  5910 => 0
}

end



def list_rooms
  room_list = {}
  index = 1
  for room in @rooms.flatten
    room_list[index] = room
    index += 1
  end
  return room_list
end

def total_rooms
  room_list = {}
  index = 1
  for room in @rooms.flatten
    room_list[index] = room.stats["Type"]
    index += 1
  end
  return room_list.count
  
end

def room_types
  room_list = list_rooms
  room_types = []
  room_list.each do |number, type| 
    room_types << type.stats["Type"]
  end
return room_types
end


def room_type_count
  room_types_array = room_types
  hash = Hash.new(0)
  room_types_array.each{|type| hash[type] += 1 }
  return hash

end

#Can then use above code to count number of available room types









end