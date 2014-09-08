require "spec_helper"

describe MultipChallenge do
  
  before :all do 
    @multip = MultipChallenge.new
  end
  
  it "returns the max number for prime" do
    # TODO: use Lambert's function and fix this spec
    @multip.send(:max_number_for_prime).should == 100
  end
  
  it "multiplies the first 10 prime numbers" do
    multiplications = [
      [4,   6,  10,  14,  22,  26,  34,  38,  46,  58], 
      [6,   9,  15,  21,  33,  39,  51,  57,  69,  87], 
      [10, 15,  25,  35,  55,  65,  85,  95, 115, 145], 
      [14, 21,  35,  49,  77,  91, 119, 133, 161, 203], 
      [22, 33,  55,  77, 121, 143, 187, 209, 253, 319], 
      [26, 39,  65,  91, 143, 169, 221, 247, 299, 377], 
      [34, 51,  85, 119, 187, 221, 289, 323, 391, 493], 
      [38, 57,  95, 133, 209, 247, 323, 361, 437, 551], 
      [46, 69, 115, 161, 253, 299, 391, 437, 529, 667], 
      [58, 87, 145, 203, 319, 377, 493, 551, 667, 841]
    ]
    @multip.multiplications.size.should == 10
    @multip.multiplications.should == multiplications
  end
  
  it "displays the multipl. table of the first 3 prime numbers" do
    output = "
+---+----+----+----+
| * |  2 |  3 |  5 |
+---+----+----+----+
| 2 |  4 |  6 | 10 |
| 3 |  6 |  9 | 15 |
| 5 | 10 | 15 | 25 |
+---+----+----+----+
    ".strip
    @multip = MultipChallenge.new 3
    @multip.table.to_s.should == output
  end
  
  it "displays the multipl. table of the first 10 prime numbers" do
    output = "
+----+----+----+-----+-----+-----+-----+-----+-----+-----+-----+
|  * |  2 |  3 |   5 |   7 |  11 |  13 |  17 |  19 |  23 |  29 |
+----+----+----+-----+-----+-----+-----+-----+-----+-----+-----+
|  2 |  4 |  6 |  10 |  14 |  22 |  26 |  34 |  38 |  46 |  58 |
|  3 |  6 |  9 |  15 |  21 |  33 |  39 |  51 |  57 |  69 |  87 |
|  5 | 10 | 15 |  25 |  35 |  55 |  65 |  85 |  95 | 115 | 145 |
|  7 | 14 | 21 |  35 |  49 |  77 |  91 | 119 | 133 | 161 | 203 |
| 11 | 22 | 33 |  55 |  77 | 121 | 143 | 187 | 209 | 253 | 319 |
| 13 | 26 | 39 |  65 |  91 | 143 | 169 | 221 | 247 | 299 | 377 |
| 17 | 34 | 51 |  85 | 119 | 187 | 221 | 289 | 323 | 391 | 493 |
| 19 | 38 | 57 |  95 | 133 | 209 | 247 | 323 | 361 | 437 | 551 |
| 23 | 46 | 69 | 115 | 161 | 253 | 299 | 391 | 437 | 529 | 667 |
| 29 | 58 | 87 | 145 | 203 | 319 | 377 | 493 | 551 | 667 | 841 |
+----+----+----+-----+-----+-----+-----+-----+-----+-----+-----+    ".strip
    @multip.table.to_s.should == output
  end   
 
end