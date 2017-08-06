class Trinary
  def initialize(trinary)
    @digits = trinary.split(//).reverse
  end

  def to_decimal
    return 0 if @digits.any? { |c| /[a-z3-9]/ =~ c.downcase }
    @digits.each_with_index.inject(0) { |total, (value, index)| total + value.to_i * 3**index }
  end
end

module BookKeeping
  VERSION = 1
end
