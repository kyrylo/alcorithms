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

Linear-Search
-------------

## Benchmarks

* Intel Core 2 Duo T5870 2.00 GHz)
* ruby 1.9.3p374 (2013-01-15 revision 38858) [i686-linux]

Rehearsal -----------------------------------------------
mid 10        0.000000   0.000000   0.000000 (  0.000017)
last 10       0.000000   0.000000   0.000000 (  0.000008)
mid 100       0.000000   0.000000   0.000000 (  0.000014)
last 100      0.000000   0.000000   0.000000 (  0.000021)
mid 1.000     0.000000   0.000000   0.000000 (  0.000014)
last 1.000    0.000000   0.000000   0.000000 (  0.000021)
mid 10.000    0.010000   0.000000   0.010000 (  0.000798)
last 10.000   0.000000   0.000000   0.000000 (  0.001615)
mid 20.000    0.000000   0.000000   0.000000 (  0.001591)
last 20.000   0.000000   0.000000   0.000000 (  0.003203)
mid 25.000    0.000000   0.000000   0.000000 (  0.002000)
last 25.000   0.010000   0.000000   0.010000 (  0.003970)
-------------------------------------- total: 0.020000sec

                  user     system      total        real
mid 10        0.000000   0.000000   0.000000 (  0.000010)
last 10       0.000000   0.000000   0.000000 (  0.000010)
mid 100       0.000000   0.000000   0.000000 (  0.000016)
last 100      0.000000   0.000000   0.000000 (  0.000024)
mid 1.000     0.000000   0.000000   0.000000 (  0.000016)
last 1.000    0.000000   0.000000   0.000000 (  0.000024)
mid 10.000    0.010000   0.000000   0.010000 (  0.000794)
last 10.000   0.000000   0.000000   0.000000 (  0.001592)
mid 20.000    0.000000   0.000000   0.000000 (  0.001628)
last 20.000   0.000000   0.000000   0.000000 (  0.003171)
mid 25.000    0.000000   0.000000   0.000000 (  0.001968)
last 25.000   0.000000   0.000000   0.000000 (  0.003995)

=end

module Alcorithms

  def self.linear_search(list, v)
    list.length.times do |i|
      puts "#{i+1}:A[#{list[i]}]" if $DEBUG

      if list[i] == v
        return i + 1
      end
    end
    nil
  end

end

if __FILE__ == $0
  list = [5, 2, 4, 6, 1, 3]
  val  = 6
  puts "Linear-Search",
       "  List: #{ list }",
       "  Sought-for value: #{ val }",
       "  Index of the value: #{ Alcorithms::linear_search(list, val) || 'NIL' }"
end
