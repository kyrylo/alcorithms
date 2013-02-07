Insertion sort
==============

## Pseudocode

    Insertion-Sort(A)
    1. for j = 2 to A.length
    2.   key = A[j]
    3.   // Insert A[j] into the sorted sequence A[1..j-1].
    4.   i = j - 1
    5.   while > 0 and A[i] > key
    6.     A[i + 1] = A[i]
    7.     i = i - 1
    8.   A[i + 1] = key

## Sample output

    1:[5, 2, 4, 6, 1, 3]
      [5, 5, 4, 6, 1, 3]
    2:[2, 5, 4, 6, 1, 3]
      [2, 5, 5, 6, 1, 3]
    3:[2, 4, 5, 6, 1, 3]
    4:[2, 4, 5, 6, 1, 3]
      [2, 4, 5, 6, 6, 3]
      [2, 4, 5, 5, 6, 3]
      [2, 4, 4, 5, 6, 3]
      [2, 2, 4, 5, 6, 3]
    5:[1, 2, 4, 5, 6, 3]
      [1, 2, 4, 5, 6, 6]
      [1, 2, 4, 5, 5, 6]
      [1, 2, 4, 4, 5, 6]
      --
      [1, 2, 3, 4, 5, 6]
    Insertion-Sort
      Original: [5, 2, 4, 6, 1, 3]
      Sorted:   [1, 2, 3, 4, 5, 6]

## Implementations

### Ruby

Run the example.

    ruby ruby/insertion_sort.rb

Run the example in debug mode.

    ruby -d ruby/insertion_sort.rb

Benchmarks.

    ruby ruby/benchmark.rb

Extended benchmarks (-[m]oar).

    ruby ruby/benchmark.rb -m

Unit tests.

    ruby ruby/insertion_sort_spec.rb
