require "spec_helper"

describe Prime do
  
  before :all do 
    @prime = Prime.new 100
  end
  
  it "uses Sieve of Erathostenes" do
    @prime.should_receive :erathostenes
    @prime.all
  end
  
  it "returns prime numbers (1..100)" do
    primes = %w(2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67 71 73 79 83 89 97).map(&:to_i)
    @prime.all.size.should == 25
    @prime.all.should == primes
  end
  
  it "returns prime numbers (1..1000)" do
    prime = Prime.new 1000
    prime.all.size.should == 168
  end
  
  # it "returns prime numbers (1..10000)" do
  #   prime = Prime.new 10000
  #   prime.all.size.should == 1229
  # end
  
  # and so forth: http://primes.utm.edu/howmany.html ( see pi(x) )
  
end