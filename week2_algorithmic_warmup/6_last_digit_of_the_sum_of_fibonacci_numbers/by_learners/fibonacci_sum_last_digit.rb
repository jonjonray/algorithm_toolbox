#!/usr/bin/env ruby
# by Andronik Ordian

def fib_sum_last_digit(n)
  int_n = n % 60
  fib_array = [0,1]

  while fib_array.length <= int_n
    fib_array.push(fib_array[-1] + fib_array[-2])
  end

  fib_array.reduce(:+) % 10
end


if __FILE__ == $0
  n = gets.to_i
  puts "#{fib_sum_last_digit(n)}"
end
