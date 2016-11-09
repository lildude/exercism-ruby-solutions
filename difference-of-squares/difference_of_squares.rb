class Squares
  def initialize num
    @n = num
  end

  def sum_of_squares
    (1..@n).collect { |i| i**2 }.inject(0, :+)
  end

  def square_of_sum
    (1..@n).inject(0, :+)**2
  end

  def difference
    self.square_of_sum - self.sum_of_squares
  end
end

module BookKeeping
  VERSION = 3
end
