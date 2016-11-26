class Year
  def self.leap? yr
    yr % 4 == 0 && (yr % 100 != 0 || yr % 400 == 0)
  end
end

module BookKeeping
  VERSION = 2
end
