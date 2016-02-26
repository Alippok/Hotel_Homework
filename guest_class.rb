class Guest

attr_reader(:name, :wallet)

def initialize(name, money)
  @name = name
  @wallet = money
 
end

def receive(amount)
  @wallet += amount
  return @wallet
end

def give_money(receiver, amount)
  actual_money = @wallet -= amount
  money_to_give = @wallet - actual_money
  
  receiver.receive(money_to_give)
  return @wallet
end





end