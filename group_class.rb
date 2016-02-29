class Group
attr_reader(:guests)

def initialize(*guests)
  @guests = guests
  # @group_list = {
  #    1 =>"",
  #    2 =>"",
  #    3 =>"",
  #    4 =>""
  # }

end

def list_group
  group_list = {}
  index = 1
  for guest in @guests
    group_list[index] = guest
    index +=1
  end
  return group_list
end

def list_names
  name_list = {}
  index = 1
  for guest in @guests
    name_list[index] = guest.name
    index +=1#Can always do index.to_s and then + Guest before it each time but have got the raw data for now
  end
  return name_list

end

def list_rooms
  room_list = []
    for guest in @guests
      room_list << guest.room_wanted
    end
  return room_list.uniq
end



# def list_beds
#   double_bed_list = 0
#   single_bed_list = 0
#   for guest in @guests
  

#   end
# end




end

