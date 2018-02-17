#!/usr/bin/env ruby
# by Andronik Ordian

def largest_number(a)
  result = ""
  until a.empty?
    maxDigit = a[-1]
    a.each do |num|
      maxDigit = num if is_greater_or_equal(num, maxDigit)
    end

    result+= a.delete(maxDigit).to_s
  end
  result
end

def is_greater_or_equal(digit, maxDigit)
  string_digit = digit.to_s
  string_max_digit = maxDigit.to_s
  i = 0
  loop do
    if string_digit[i].to_i > string_max_digit[i].to_i
      return true
    elsif string_digit[i].to_i < string_max_digit[i].to_i
      return false
    elsif string_digit[i].to_i == string_max_digit[i].to_i
      i+= 1
      return true if string_digit[i] == nil
      return false if string_max_digit[i] == nil
    end
  end
end

if __FILE__ == $0
  a = STDIN.read.split().drop(1)
  puts largest_number(a)
end
