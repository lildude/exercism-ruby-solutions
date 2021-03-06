class SumOfMultiples
  def initialize *args
    @numbers = *args
  end

  def to upto
    multiples = (0..upto-1).select do |i|
      @numbers.detect { |n| i % n == 0 }
    end
    multiples.sum
  end
end

# Great solution: http://exercism.io/submissions/44849506c5aa4af5b43245bb48c8ef6e
