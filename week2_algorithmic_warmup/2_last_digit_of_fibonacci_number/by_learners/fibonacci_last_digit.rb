#!/usr/bin/env ruby
# by Andronik Ordian

def fib_last_digit(n)
  fib_array = [0, 1]
  while n >= fib_array.length
    sum = (fib_array[-1] % 10) + (fib_array[-2] % 10)
    fib_array.push(sum)
  end

  fib_array[n]
end

if __FILE__ == $0
  n = gets.to_i
  puts "#{fib_last_digit(n)}"
end
