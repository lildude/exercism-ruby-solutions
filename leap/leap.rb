class Year
  def self.leap? yr

    if yr % 4 == 0
      ( yr % 100 == 0 && yr % 400 != 0 ) ? false : true
    end

  end
end

module BookKeeping
  VERSION = 2
end
