require 'bundler/setup'
Bundler.require :default

require_relative "prime"

class MultipChallenge
  def initialize(primes = 10)
    @primes = primes
    @max_number = max_number_for_prime
  end
  
  def table
    return unless @primes > 1
    Terminal::Table.new do |t|
      
      t << ['*'] + primes_all
      t.add_separator
      
      multiplications.each_with_index do |multip, idx|
        row = [primes_all[idx]] + multip
        t << row
      end
      
      (multiplications.size+1).times do |i|
         t.align_column i, :right
       end
    end
  end
  
  def multiplications
    @multiplications ||= primes_all.map do |prime|
      primes_all.map do |pri|
        prime*pri
      end
    end
  end
  
  private
  
  def primes_all
    @primes_all ||= Prime.new(@max_number).all[0..@primes-1]
  end
  
  def max_number_for_prime
    x = @primes
    x**2
  end

  # final: calculates the max number to shovel into the prime generator, based on formula using the lambert function
  #
  # def max_number_for_prime
  #   x = @primes
  #   x / lambert.call(x) # ...
  #   # TODO: implement it properly
  # end
  #
  # def lambert
  #   lambda{ |n| GSL::Sf::lambert_W0 n }
  # end
 
end