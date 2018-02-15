#!/usr/bin/env ruby
# by Andronik Ordian

def fib_partial_sum(m, n)
  int_n = n % 60
  fib_array = [0, 1]

  while fib_array.length <= int_n
    fib_array.push(fib_array[-1] + fib_array[-2])
  end

  fib_array.slice(m)
end

if __FILE__ == $0
  m, n = gets.split().map(&:to_i)
  puts "#{fib_partial_sum(m, n)}"
end
