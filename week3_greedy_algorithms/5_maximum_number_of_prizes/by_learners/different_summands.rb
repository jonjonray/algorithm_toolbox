#!/usr/bin/env ruby
# by Andronik Ordian

def optimal_summands(n)
  summands = [1]
  return [n] if n <= 2
  current = n - 1
  while current > 0
    if current - (summands[-1] + 1) <= summands[-1] + 1
      summands.push(current)
      current = 0
    else
      current-= summands[-1] + 1
      summands.push(summands[-1] + 1)
    end
  end
  summands
end

if __FILE__ == $0
  n = gets.to_i
  summands = optimal_summands(n)
  puts "#{summands.size}"
  puts "#{summands.join(' ')}"
end
