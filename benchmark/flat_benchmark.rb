require 'benchmark'
require_relative '../lib/flat'

# Simple class to encapsulate benchmark code
class FlatBenchmark
  ARRAY = (1..1000).map { [[1, 2, [3]], 4] }

  include Flat

  def benchmark
    Benchmark.bmbm do |x|
      x.report('recurse_flatten') { recurse_flatten(ARRAY) }
      x.report('reduce_flatten') { reduce_flatten(ARRAY) }
    end
  end
end

FlatBenchmark.new.benchmark
