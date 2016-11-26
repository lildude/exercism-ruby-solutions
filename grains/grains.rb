class Grains
  MAX_SQUARES = 64
  
  def self.square n
    2 ** (n - 1)
  end

  def self.total
    (2 ** MAX_SQUARES) - 1
  end
end
