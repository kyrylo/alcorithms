Linear search
=============

## Pseudocode

    Linear-Search(A, v)
    1. for i = 1 to A.length
    2.   if A[i] == v
    3.     return i
    4. return NIL

## Sample output

    1:A[5]
    2:A[2]
    3:A[4]
    4:A[6]
    Linear-Search
      List: [5, 2, 4, 6, 1, 3]
      Sought-for value: 6
      Index of the value: 4

## Implementations

### Ruby

Run the example.

    ruby ruby/linear_search.rb

Run the example in debug mode.

    ruby -d ruby/linear_search.rb

Benchmarks.

    ruby ruby/benchmark.rb

Extended benchmarks (-[m]oar).

    ruby ruby/benchmark.rb -m

Unit tests.

    ruby ruby/linear_search_spec.rb
