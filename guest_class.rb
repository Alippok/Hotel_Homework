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

# def give_money(receiver, amount)
  
# end





end