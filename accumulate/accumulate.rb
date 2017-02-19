class Array
  def accumulate
    result = []
    self.each do |operation|
      result.push yield operation
    end
    result
  end
end

module BookKeeping
  VERSION = 1
end
