class Phrase
  def initialize words
    @words = words
  end

  def word_count
    @words.downcase.scan(/\b[\w']+\b/).each_with_object(Hash.new(0)) { |word,counts| counts[word] += 1 }
  end
end

module BookKeeping
  VERSION = 1
end
