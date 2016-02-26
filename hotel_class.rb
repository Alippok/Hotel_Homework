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
    room_list[index] = room.stats["Type"]
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
    room_types << type
  end
return room_types
end

# def room_type_count
#   room_list = list_rooms
#    room_count = {
#     "single" => 0, 
#     "double" => 0
#    }
#    room_array = []
#    room_list.each do |number, type| 
#      room_array << 
#     end
#   end
#   return room_count

# end










end