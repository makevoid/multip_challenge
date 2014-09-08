# Multip Challenge

### Challenge

    Write a program that prints out a multiplication table of the first 10 prime numbers.
    The program must run from the command line and print to screen one table.
    Across the top and down the left side should be the 10 primes, and the body of the table should contain the product of multiplying these numbers.


### Requirements

ruby 2.0+


### Installation

    bundle install
  
### Running

    ./bin/multip_challenge


it defaults to: 


    ./bin/multip_challenge 10

### Example outputs


    ./bin/multip_challenge 2

    +---+---+---+
    |   | 2 | 3 |
    +---+---+---+
    | 2 | 4 | 6 |
    | 3 | 6 | 9 |
    +---+---+---+

---

     ./bin/multip_challenge 3
     
    +---+----+----+----+
    |   |  2 |  3 |  5 |
    +---+----+----+----+
    | 2 |  4 |  6 | 10 |
    | 3 |  6 |  9 | 15 |
    | 5 | 10 | 15 | 25 |
    +---+----+----+----+


and so on...

### Running tests

    rspec 

### Prime implementation reference:

<http://en.wikipedia.org/wiki/Sieve_of_Eratosthenes>
