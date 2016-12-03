class RunLengthEncoding
  def self.encode str
    str.chars.slice_when(&:!=).map { |c| c.length > 1 ? c.length.to_s << c.first : c }.join
  end

  def self.decode str
    str.gsub(/(\d+)(\D)/) {$2 * $1.to_i}
  end
end

module BookKeeping
  VERSION = 2
end
