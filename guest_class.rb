class Guest

attr_reader(:name, :wallet, :room_wanted)

def initialize(params)
  @name = params[:name]
  @wallet = params[:money]
  @room_wanted = params[:room_wanted]
  @beds_wanted = params[:beds_wanted]
end



# def receive(amount)
#   @wallet += amount
#   return @wallet
# end

# def give_money(receiver, amount)
#   actual_money = @wallet -= amount
#   money_to_give = @wallet - actual_money
  
#   receiver.receive(money_to_give)
#   return @wallet
# end





end