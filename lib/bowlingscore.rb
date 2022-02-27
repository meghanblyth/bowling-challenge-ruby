class Bowlingscore

  def initialize 
    @roll = []
    @score = 0
  end 
 
  def roll(points)
    @roll.push points
  end 

end
