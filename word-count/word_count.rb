class Phrase
  def initialize words
    @words = words.downcase.scan(/\w+(?:'\w+)*/)
  end

  def word_count
    @words.each_with_object(Hash.new(0)) { |word,counts| counts[word] += 1 }
  end
end

module BookKeeping
  VERSION = 1
end
