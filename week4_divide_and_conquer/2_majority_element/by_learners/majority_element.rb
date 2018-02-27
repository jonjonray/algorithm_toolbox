#!/usr/bin/env ruby
# by Andronik Ordian

def get_majority_element(a, left, right)
  return a[left] if right - left <= 1

  mid = left + ((right - left) / 2)

  left_r = get_majority_element(a, left, mid)
  right_r = get_majority_element(a, mid + 1, right)

  if left_r == right_r && left_r != -1
    return left_r
  elsif left_r != -1 && right_r == -1
    a[mid + 1..right].each do |int|
      return left_r if int == left_r
    end
  elsif left_r == -1 && right_r != -1
    a[left..mid].each do |int|
      return right_r if int == right_r
    end
  end
  -1
end

if __FILE__ == $0
  n, *a = STDIN.read.split().map(&:to_i)
  answer = get_majority_element(a, 0, n) != -1
  puts "#{answer ? 1 : 0}"
end
