#!/usr/bin/env ruby
# by Andronik Ordian

def get_majority_element(a, left, right)
  return -1 if left >= right
  return a[left] if right - left == 1

  left_recur = get_majority_element(a, left, (left - right) / 2)
  right_recur = get_majority_element(a, ((left - right) / 2) + 1, right)

  if left_recur == right_recur
    return left_recur
  elsif left_recur != -1 && right_recur == -1
    a[(left - right) / 2 + 1..right].each do |int|
      return left_recur if int == left_recur
    end
  elsif right_recur != -1 && left_recur == -1
    a[left..(left - right) / 2].each do |int|
      return right_recur if int == right_recur
    end
  end
  -1
end

if __FILE__ == $0
  n, *a = STDIN.read.split().map(&:to_i)
  answer = get_majority_element(a, 0, n) != -1
  puts "#{answer ? 1 : 0}"
end
