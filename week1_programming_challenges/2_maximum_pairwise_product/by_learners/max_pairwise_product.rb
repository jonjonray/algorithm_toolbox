#!/usr/bin/env ruby
# by Andronik Ordian

def max_pairwise_product(a)

  first = 0
  a.each_with_index do |int, i|
    first = i if int > a[first]
  end

  second = nil
  a.each_with_index do |int, i|
    if i == first
      next
    elsif second == nil || int > a[second]
      second = i
    end
  end

  a[first] * a[second]
end



if __FILE__ == $0
  data = STDIN.read.split().map(&:to_i)
  n = data[0]
  a = data[1..n]
  puts "#{max_pairwise_product(a)}"
end
