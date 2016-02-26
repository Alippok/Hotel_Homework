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










end