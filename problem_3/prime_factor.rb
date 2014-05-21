# https://projecteuler.net/problem=3
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

require 'prime'

def prime_factor(number)
  @factors_array = []
  @prime_array = []
  @number = number
  i = 1

  while i <= @number
    if i.prime?
      if @number % i == 0
        @prime_array << i
        @number = @number / i
      end
    end
    i += 1
  end

  return @prime_array.max

end

