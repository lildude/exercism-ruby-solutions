module BookKeeping
  VERSION = 3
end
class Hamming
  def self.compute(d1, d2)
    raise ArgumentError if d1.length != d2.length
    d1.chars.zip(d2.chars).count do |v|
      v[0] != v[1]
    end
  end
end
