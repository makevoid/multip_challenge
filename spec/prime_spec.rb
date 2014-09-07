require "spec_helper"

describe Prime do
  
  before do 
    @prime = Prime.new 100
  end
  
  it "uses Sieve of Erathostenes" do
    @prime.should_receive :erathostenes
    @prime.all
  end
  
end