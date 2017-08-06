class ETL
  def self.transform(input)
    input.each_with_object({}) { |(k, v), hash| v.each { |n| hash[n.downcase] = k } }
  end
end

module BookKeeping
  VERSION = 1
end
