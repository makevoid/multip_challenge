class Prime
  def initialize(last)
    @last = last
  end
  
  def all
    erathostenes
  end
  
  private
  
  def erathostenes
    n = @last
    return unless n > 1

    @arr = Array.new(n-1, true)
    
    max = Math.sqrt(n).to_i + 1
    cur = 2
    while cur < max
      erathostenes_filter cur
      cur = @arr.map.with_index{ |prime, idx| idx+2 if prime && idx+2 > cur }.compact.first
    end
    
    @arr.map.with_index{ |prime, idx| idx+2 if prime }.compact
  end
  
  def erathostenes_filter(cur)
    cur.upto(@last) do |i|
      @arr[(cur*i)-2] = false
    end
  end
end