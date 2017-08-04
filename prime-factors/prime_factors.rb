class PrimeFactors
  def self.for(number, factors = [])
    return factors if number == 1
    new_factor = (2..number).find { |f| (number % f).zero? }
    self.for(number / new_factor, factors + [new_factor])
  end
end
