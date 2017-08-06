class Trinary
  def initialize(trinary)
    @digits = trinary
  end

  def to_decimal
    return 0 if @digits.match?(/[^0-2]+/)
    @digits.chars.reverse.each_with_index.inject(0) do |total, (value, index)|
      total + value.to_i * 3**index
    end
  end
end

module BookKeeping
  VERSION = 1
end
