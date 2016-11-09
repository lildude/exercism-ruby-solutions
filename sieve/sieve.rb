class Sieve
  def initialize limit
    @nums = (2..limit).to_a
  end

  def primes
    @nums.each do |n|
      @nums.delete_if {|i| i % n == 0 and i != n }
    end
  end
end

module BookKeeping
  VERSION = 1
end
