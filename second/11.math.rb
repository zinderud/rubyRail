require 'prime'

puts "5 asal mi? #{5.prime?}"

puts Prime.take(88)


total=0
Prime.each(111){|p|total+=p}
p total


require 'benchmark'
p Benchmark.measure{Prime.each(411){|p|total+=p}
}
p total