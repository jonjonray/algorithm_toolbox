#!/usr/bin/env ruby
# by Andronik Ordian

Segment = Struct.new("Segment", :start, :end)

def optimal_points(segments)
  points = []
  unused = []
  return points if segments.empty?
  low = segments.min { |a,b| a.end <=> b.end }
  points.push(low.end)
  segments.each do |segment|
    unused.push(segment) if segment.start > low.end || segment.end < low.start
  end

  points.concat(optimal_points(unused))
  points
end

a = Segment.new(4, 7)
b = Segment.new(1, 3)
c = Segment.new(2, 5)
d = Segment.new(5, 6)


if __FILE__ == $0
  data = STDIN.read.split().map(&:to_i)
  n = data[0]
  segments = data[1..2*n].each_slice(2).to_a.map { |e| Segment.new(e[0], e[1]) }
  points = optimal_points(segments)
  puts "#{points.size}"
  puts "#{points.join(' ')}"
end
