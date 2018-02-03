#!/usr/bin/env ruby
# by Andronik Ordian
def pisano_period(m)
  i = 0
  a = 0
  b = 1
  c = a + b
  while i < m * m
    c = (a + b) % m
    a = b
    b = c

    return i + 1 if a == 0 && b == 1
    i+= 1
  end
end

def fib_huge(n, m)
  remainder = n % pisano_period(m)

  fibonacci_nums = [0,1]

  i = 2
  while i <= remainder
    fibonacci_nums.push(fibonacci_nums[-1] + fibonacci_nums[-2])
    i+= 1
  end

  fibonacci_nums[-1] % m
end

if __FILE__ == $0
  a, b = gets.split().map(&:to_i)
  puts "#{fib_huge(a, b)}"
end
