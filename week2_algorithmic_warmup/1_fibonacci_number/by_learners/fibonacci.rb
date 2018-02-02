#!/usr/bin/env ruby
# by Andronik Ordian

def calc_fib(n)
  fib_array = [0,1]
  while n >= fib_array.length
    fib_array.push(fib_array[-1] + fib_array[-2])
  end

  fib_array[n]
end

if __FILE__ == $0
  n = gets.to_i
  puts "#{calc_fib(n)}"
end
