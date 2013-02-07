Insertion sort
==============

## Pseudocode

    1. for j = 2 to A.length
    2.   key = A[j]
    3.   // Insert A[j] into the sorted sequence A[1..j-1].
    4.   i = j - 1
    5.   while > 0 and A[i] > key
    6.     A[i + 1] = A[i]
    7.     i = i - 1
    8.   A[i + 1] = key

## Ruby

Run the example.

```
ruby ruby/insertion_sort.rb
```

Run the example in debug mode.

```
ruby -d ruby/insertion_sort.rb
```

Benchmarks.

```
ruby ruby/benchmark.rb
```

Extended benchmarks (-[m]oar).

```
ruby ruby/benchmark.rb -m
```

Unit tests.

```
ruby ruby/insertion_sort_spec.rb
```
