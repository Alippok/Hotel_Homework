class Guest

attr_reader(:name, :wallet, :room_wanted, :beds_wanted, :number_of_nights_needed)

def initialize(params)
  @name = params[:name]
  @wallet = params[:money]
  @room_wanted = params[:room_wanted]
  @beds_wanted = params[:beds_wanted]
  @number_of_nights_needed = params[:nights]
end



def receive(amount)
  @wallet += amount
  return @wallet
end

def give_money(receiver, amount)
  @wallet -= amount
  receiver.receive(amount)
  return @wallet
end





end