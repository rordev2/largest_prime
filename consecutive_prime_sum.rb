require 'mathn'

def largest_prime_sum
  prime_numbers = Prime.each(10000).to_a  # generate prime numbers till 10000
  largest_prime = []
  sum = 0             # make sum for each consective prime number 

  prime_numbers[0..10].each_with_index do |p, i|
    n = i
    begin 
      n += 1
      consective_prime = prime_numbers[i..n]
      sum = consective_prime.reduce(:+)
      if sum.prime? && consective_prime.length > largest_prime.length
        largest_prime = consective_prime
      end
    end while sum < 1000000
  end
  puts "The largest prime is: #{largest_prime.reduce(:+)}"
end

largest_prime_sum