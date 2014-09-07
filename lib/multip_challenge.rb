require_relative "prime"

class MultipChallenge
  def initialize(primes = 10)
    @primes = primes
  end
  
  def table
    puts @primes.inspect
    # TODO: implement
  end
end