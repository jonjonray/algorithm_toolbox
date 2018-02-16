#!/usr/bin/env ruby
# by Andronik Ordian

def get_optimal_value(capacity, weights, values)
  value = 0.0
  current_capacity = capacity
  per_unit = weights.map.with_index do |weight, i|
    [values[i].to_f / weight.to_f, weight, values[i]]
  end
  per_unit.sort! {|a,b| b[0] <=> a[0]}

  per_unit.each do |mapping|
    if current_capacity >= mapping[1]
      value+= mapping[2].to_f
      current_capacity-= mapping[1]
    elsif current_capacity != 0
      value += current_capacity.to_f * mapping[0].to_f
    end
  end

  value
end


if __FILE__ == $0
  data = STDIN.read.split().map(&:to_i)
  n, capacity = data[0,2]
  values = data.values_at(*(2..2*n).step(2))
  weights = data.values_at(*(3..2*n+1).step(2))

  answer = get_optimal_value(capacity, weights, values)
  puts "#{'%.4f' % answer}"
end
