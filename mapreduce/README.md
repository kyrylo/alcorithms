MapReduce
=========

## Formal problem statement

**Input**: A string of words separated by spaces such that "word1 word2 wordn".

**Output**: A hash (or similar structure), in which pairs are unique words
found in the input string (key) and the number of their occurrences (value).

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
