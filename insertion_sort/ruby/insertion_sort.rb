#!usr/bin/env ruby
=begin

             DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
                     Version 2, December 2004

  Copyright (C) 2013 Kyrylo Silin <kyrylosilin@gmail.com>

  Everyone is permitted to copy and distribute verbatim or modified
  copies of this license document, and changing it is allowed as long
  as the name is changed.

             DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
    TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION

   0. You just DO WHAT THE FUCK YOU WANT TO.

Insertion-Sort
--------------

## Benchmarks

* Intel Core 2 Duo T5870 2.00 GHz)
* ruby 1.9.3p374 (2013-01-15 revision 38858) [i686-linux]

Rehearsal ------------------------------------------
10       0.000000   0.000000   0.000000 (  0.000033)
100      0.000000   0.000000   0.000000 (  0.000699)
1.000    0.060000   0.000000   0.060000 (  0.059444)
10.000   5.850000   0.000000   5.850000 (  5.856897)
20.000  23.310000   0.010000  23.320000 ( 23.338355)
25.000  36.440000   0.010000  36.450000 ( 36.468256)
-------------------------------- total: 65.680000sec

             user     system      total        real
10       0.000000   0.000000   0.000000 (  0.000028)
100      0.010000   0.000000   0.010000 (  0.000743)
1.000    0.050000   0.000000   0.050000 (  0.057265)
10.000   5.660000   0.000000   5.660000 (  5.657997)
20.000  22.940000   0.010000  22.950000 ( 22.964874)
25.000  35.740000   0.000000  35.740000 ( 35.775918)

=end

module Alcorithms

  def self.insertion_sort(nums)
    nums.length.pred.times do |i|
      puts "#{ i+1 }:#{ nums }" if $DEBUG
      key = nums[i + 1]

      while i >= 0 && nums[i] > key
        nums[i + 1] = nums[i]
        puts "  #{ nums }" if $DEBUG
        i -= 1
      end

      nums[i + 1] = key
    end
    nums
  end

end

if __FILE__ == $0
  nums = [5, 2, 4, 6, 1, 3]
  puts "Insertion-Sort",
       "  Original: #{ nums }",
       "  Sorted:   #{ Alcorithms::insertion_sort(nums) }"
end
