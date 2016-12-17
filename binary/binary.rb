class Binary
  def initialize binary_str
    @binary_str = binary_str
    raise ArgumentError if /[^01]+/ =~ @binary_str
  end

  def to_decimal
    dec=0
    @binary_str.reverse.chars.each_with_index do |c,i|
      dec += c.to_i * 2**i
    end
    dec
  end
end

module BookKeeping
  VERSION = 2
end
