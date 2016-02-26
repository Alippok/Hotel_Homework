class Group
attr_reader(:guests)

def initialize(*guests)
  @guests = guests

end

def list_group
  group_list = ""
  for guest in @guests
    group_list << guest.name + ", "
  end
  length = group_list.length
   return group_list.byteslice(0, length-2)
end

def list_rooms
  room_list = []
    for guest in @guests
      room_list << guest.room_wanted
    end
  return room_list.uniq
end





end

