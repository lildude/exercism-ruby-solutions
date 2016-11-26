class Prime
  def self.nth nth
    primes = [2]
    counter = 1

    raise ArgumentError if nth <= 0

    return primes[0] if nth == 1

    (3..Float::INFINITY).step(2) do |pr|
      prime = true
      sqrt = Math.sqrt(pr).ceil
      0.upto(sqrt) do |i|
        if i < counter
          if pr % primes[i] == 0
            prime = false
            break
          end
        end
      end

      if prime
        return pr if (counter += 1) == nth
        primes << pr
      end
    end
  end
end

module BookKeeping
  VERSION = 1
end
