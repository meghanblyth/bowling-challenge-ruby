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
    2
  end
end
