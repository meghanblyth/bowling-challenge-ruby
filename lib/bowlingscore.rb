class Bowlingscore
  def initialize
    @rolls = []
  end

  def roll(points)
    @rolls << points
  end

  def score
    scores = 0
    roll_turn = 0
    20.times do
      result += @rolls[roll_turn]
      roll_turn += 1
    end
    result
  end
end
