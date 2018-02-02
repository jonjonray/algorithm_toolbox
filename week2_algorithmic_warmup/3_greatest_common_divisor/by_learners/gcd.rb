#!/usr/bin/env ruby
# by Andronik Ordian

def gcd(a, b)
  return a if b == 0
  return b if a == 0

  gcd(b, a % b)
end

if __FILE__ == $0
  a, b = gets.split().map(&:to_i)
  puts "#{gcd(a, b)}"
end
