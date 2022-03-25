class Bowlingscore
  attr_reader :total, :rolls

  def initialize
    @total = 0
    @rolls = []
  end

  def roll(pin)
    @total += pin
  end

  def frame
    roll = 0
    while roll < 2
      roll += 1
    end 
    return roll 
  end

  def game(frame)
    frame = 0 
    while frame < 10 
      frame += 1
    end 
    return frame   
  end 

end
