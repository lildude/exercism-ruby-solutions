module BookKeeping
  VERSION = 5
end

class Gigasecond
  def self.from moment
    moment + 10**9
  end
end
