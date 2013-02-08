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

Binary-Sum
----------

=end

module Alcorithms

  def self.binary_sum(a, b)
    c = Array.new(a.length + 1, 0)
    if $DEBUG
      puts "A:%s (%s)\nB:%s (%s)\nC:%s\n\n" %
        [a, Integer(a.join(''), 2), b, Integer(b.join(''), 2), c]
      j = 0
    end

    a.length.pred.downto 0 do |i|
      if $DEBUG
        puts "%s: %s" % [j += 1, a],
             "%s  %s" % [' ' * j.to_s.length, b],
             ' ' * (i.to_s.length + 3 +  i * 3) + '^',
             "%s" % [c]
        puts # An extra newline.
      end

      sum = a[i] + b[i] + c[i + 1]
      c[i + 1] = sum % 2
      c[i] = sum / 2
    end
    c
  end

end

if __FILE__ == $0
  a = [1, 1, 1, 0, 1]
  b = [1, 1, 0, 0, 1]
  puts "Binary-Sum",
       "  Summand 1: %s" % [a],
       "  Summand 2: %s" % [b],
       "  Result: %s (%s)" % [z=Alcorithms::binary_sum(a, b), Integer(z.join(''), 2)]
end
