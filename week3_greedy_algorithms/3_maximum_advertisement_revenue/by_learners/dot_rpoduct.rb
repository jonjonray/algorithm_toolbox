#!/usr/bin/env ruby
# by Andronik Ordian

def max_dot_product(a, b)
  sorted_ads = a.sort { |x, y| y <=> x}
  sorted_space = b.sort { |x, y| y <=> x}
  sum = 0
  sorted_ads.each_with_index {|ad, i| sum += ad * sorted_space[i]}
  sum
end

if __FILE__ == $0
  data = STDIN.read.split().map(&:to_i)
  n = data[0]
  a, b = data[1..n], data[n+1..2*n]
  puts "#{min_dot_product(a, b)}"
end
