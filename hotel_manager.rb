require_relative("./booking_manager_class.rb")
require_relative("./hotel_class.rb")
require_relative("./single_room_class.rb")
require_relative("./double_room_class.rb")
require_relative("./guest_class.rb")
require_relative("./reception_class.rb")
require_relative("./checked_out_class.rb")


@booking_manager = BookingManager.new


puts "HOTEL ROOMS:"
for room, status in @booking_manager.check_hotel
  puts "#{room}: #{status[0]}, #{status[1]}"
end

puts "[ RECEPTION: waiting guests / guest-details ]"
response = gets.chomp

case response
  when "waiting guests"
    puts @booking_manager.waiting_guests

  when "guest-details"
    for guest, details in @booking_manager.guests_rooms_nights
      puts "#{guest}: #{details[0]}, needs #{details[1].upcase}, for #{details[2]} nights"
    end
    puts "Check availability? [Y/N]"
    answer = gets.chomp
    if answer == "Y"
      for guest, availability in @booking_manager.guest_room_match
        puts "#{guest}: #{availability}"
      end      
    else
    puts "Thankyou for using booking manager"
    end
end


print "Choose guest for check-in: "
guest = gets.chomp
amount = @booking_manager.rate(guest)
puts "Cost for total stay: £#{amount}"
sleep(2)
  @booking_manager.collect_guest_money(guest)
  @booking_manager.deposit_revenue(amount)
  puts "Hotel revenue = £#{@booking_manager.view_hotel_safe}"
  puts "Choose a room number for guest: "
  answer = gets.chomp.to_i
  @booking_manager.guest_check_in(guest, answer)
  puts "HOTEL ROOMS:"
  for room, status in @booking_manager.check_hotel
    puts "#{room}: #{status[0]}, #{status[1]}"
  end

puts "[ check-out / check-in]"
response = gets.chomp

case response
  when "check-in"
    print "Choose guest for check-in: "
    guest = gets.chomp
    amount = @booking_manager.rate(guest)
    puts "Cost for total stay: £#{amount}"
    sleep(2)
      @booking_manager.collect_guest_money(guest)
      @booking_manager.deposit_revenue(amount)
      puts "Hotel revenue = £#{@booking_manager.view_hotel_safe}"
      puts "Choose a room number for guest: "
      answer = gets.chomp.to_i
      @booking_manager.guest_check_in(guest, answer)
      puts "HOTEL ROOMS:"
      for room, status in @booking_manager.check_hotel
        puts "#{room}: #{status[0]}, #{status[1]}"
      end
  when "check-out"
    puts "Please enter a guest to check-out:"
    guest = gets.chomp
    puts "Please enter their room number: "
    room = gets.chomp.to_i
    puts @booking_manager.guest_check_out(guest, room)

    
    puts "HOTEL ROOMS:"
    for room, status in @booking_manager.check_hotel
      puts "#{room}: #{status[0]}, #{status[1]}"
    end
end











