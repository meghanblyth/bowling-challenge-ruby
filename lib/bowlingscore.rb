class Bowlingscore

  attr_reader :total 

  def initialize
    @total = 0
  end 
 
  def roll(pin)
    pin 
    @total += pin 
  end 

end 
