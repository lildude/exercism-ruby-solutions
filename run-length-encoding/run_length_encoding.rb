class RunLengthEncoding
  def self.encode str
    str.chars.slice_when(&:!=).map { |c| c.length > 1 ? c.length.to_s << c.first : c }.join
  end

  def self.decode str
    str.scan(/[0-9]*[\D]/).flat_map { |c| c.length > 1 ? c[-1]*c.chop.to_i : c }.join
  end
end

module BookKeeping
  VERSION = 2
end
