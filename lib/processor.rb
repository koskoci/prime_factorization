module PrimeFactorization
  class Processor
    def initialize(target)
      @target = target
    end

    def process
      factorize(target, primes_upto(target/2))
    end

    private

    attr_reader :target

    def factorize(n, primes)
      return [n] if prime?(n)

      p = primes.first

      n % p == 0 ? [p, *factorize(n / p, primes)] : factorize(n, primes.drop(1))
    end

    def prime?(n)
      return false unless n.is_a?(Integer)
      return false unless n > 1

      2.upto(n/2).none? {|i| n % i == 0}
    end

    def primes_upto(n)
      2.upto(n).select { |i| prime?(i) }
    end
  end
end