#!/usr/bin/env ruby
# by Andronik Ordian

def get_change(n)
  count = 0
  coins = [1, 5, 10]
  value = 0
  i = -1
  while value < n
    if n - value < coins[i]
      i-=1
    else
      count+= 1
      value+= coins[i]
    end
  end

  count
end

if __FILE__ == $0
  n = gets.to_i
  puts "#{get_change(n)}"
end
