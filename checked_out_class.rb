class CheckedOut
attr_reader(:guests)
attr_reader
def initialize
  @guests = []
  @comments = ["Really enjoyed my stay!", "Horrible toilets, clean them.", "The breakfast was lovely and all of the staff were helpful and friendly.", "Price is a bit much for a basic hotel. Clean though and close to town.", "Reception staff were extremly helpful when there was an error on check-in.", "My breakfast was undercooked and there was no toilet paper upon arrival.", "Lift broken for entire stay. I will not be returning", "The bed was soft and has a great nights sleep...5 star!!", "Restaurant is far too expensive for what you get! Rubbish."]

end

def check_out(guest)
  @guests << guest
  return @guests

end








end