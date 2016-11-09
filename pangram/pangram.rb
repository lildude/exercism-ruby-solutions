class Pangram
  def self.is_pangram? str
    str.downcase.chars.uniq.sort.join.include?(('a'..'z').to_a.join)
  end
end

module BookKeeping
  VERSION = 2
end
