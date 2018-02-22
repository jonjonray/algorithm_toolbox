#!/usr/bin/env ruby
# by Andronik Ordian

def binary_search(x, a)

  mid_idx = a.length / 2

  return mid_idx if a[mid_idx] == x
  return -1 if a.length <= 1

  if a[mid_idx] > x
    result = binary_search(x, a[0...mid_idx])
  else
    result = binary_search(x, a[mid_idx + 1..-1])
    result+= mid_idx + 1 if result != -1
  end

  result
end

if __FILE__ == $0
  data = STDIN.read.split().map(&:to_i)
  n = data[0]
  a = data[1..n]
  m = data[n+1]
  data[n+2, m].each { |b| print("#{binary_search(b, a)} ") }
  puts ""
end
