class Fixnum
  def to_roman
    number_hash = {
      1000 => "M",
      900 => "CM",
      500 => "D",
      400 => "CD",
      100 => "C",
      90 => "XC",
      50 => "L",
      40 => "XL",
      10 => "X",
      9 => "IX",
      5 => "V",
      4 => "IV",
      1 => "I"
    }

    output = ""
    remainder = self
    while remainder > 0
      number_hash.each do |n, roman|
        output << roman * (remainder/n) if (remainder/n) > 0
        remainder = remainder % n
      end
    end
    output
  end
end

module BookKeeping
  VERSION = 2
end
