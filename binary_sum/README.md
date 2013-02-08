Binary sum
==========

## Formal problem statement

**Input**: Two sequences of `n` binary digits `{a1, a2, …, an}` that represent
two binary numbers.

**Output**: A new sequence of numbers, consisting of `n + 1` binary digits that
are result of binary addition of two input sequences.

## Pseudocode

    Binary-Sum(A, B)
    1. for i = A.length downto 0
    2.   sum = A[i] + B[i] + C[i + 1]
    3.   C[i + 1] = sum % 2
    4.   C[i] = sum / 2

## Sample output

    A:[1, 1, 1, 0, 1] (29)
    B:[1, 1, 0, 0, 1] (25)
    C:[0, 0, 0, 0, 0, 0]

    1: [1, 1, 1, 0, 1]
       [1, 1, 0, 0, 1]
                    ^
    [0, 0, 0, 0, 0, 0]

    2: [1, 1, 1, 0, 1]
       [1, 1, 0, 0, 1]
                 ^
    [0, 0, 0, 0, 1, 0]

    3: [1, 1, 1, 0, 1]
       [1, 1, 0, 0, 1]
              ^
    [0, 0, 0, 0, 1, 0]

    4: [1, 1, 1, 0, 1]
       [1, 1, 0, 0, 1]
           ^
    [0, 0, 0, 1, 1, 0]

    5: [1, 1, 1, 0, 1]
       [1, 1, 0, 0, 1]
        ^
    [0, 1, 0, 1, 1, 0]

    Binary-Sum
      [1, 1, 1, 0, 1]
      [1, 1, 0, 0, 1]
    Result: [1, 1, 0, 1, 1, 0] (54)

## Implementations

### Ruby

Run the example.

    ruby ruby/binary_sum.rb

Run the example in debug mode.

    ruby -d ruby/binary_sum.rb

Unit tests.

    ruby ruby/binary_sum_spec.rb
