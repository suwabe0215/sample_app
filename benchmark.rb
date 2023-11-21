require 'benchmark'
symbol = { :foo => "value" } 
string = { "foo" => "value" }
integer = { 1 => "value" } 
n = 100000000
Benchmark.benchmark do |x|
  x.report("Symbol") {n.times{ symbol[:foo] }}
  x.report("String") {n.times{ string["foo"] }}
  x.report("Integer") {n.times{ integer[1] }}
end