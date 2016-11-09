class Raindrops
  def self.convert number
    out = ''
    out += "Pling" if number % 3 == 0
    out += "Plang" if number % 5 == 0
    out += "Plong" if number % 7 == 0
    out = out.empty? ? number.to_s : out
  end
end

module BookKeeping
  VERSION = 3
end
