# Array Flattener

### Installation

```
bundle
```

### Test suite

```
rake
```

### Documentation

```
rake yard
```

### Linting

```
rubocop
```

### Benchmark

```
ruby benchmark/flat_benchmark.rb
```

Benchmark results of the two methods:

```
➜  flatten git:(master) ✗ ruby benchmark/flat_benchmark.rb
Rehearsal ---------------------------------------------------
recurse_flatten   0.000000   0.000000   0.000000 (  0.001217)
reduce_flatten    0.010000   0.000000   0.010000 (  0.015583)
------------------------------------------ total: 0.010000sec

                      user     system      total        real
recurse_flatten   0.010000   0.000000   0.010000 (  0.001311)
reduce_flatten    0.000000   0.010000   0.010000 (  0.009673)
```
