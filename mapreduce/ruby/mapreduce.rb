=begin

             DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
                     Version 2, December 2004

  Copyright (C) 2012 Kyrylo Silin <kyrylosilin@gmail.com>

  Everyone is permitted to copy and distribute verbatim or modified
  copies of this license document, and changing it is allowed as long
  as the name is changed.

             DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
    TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION

   0. You just DO WHAT THE FUCK YOU WANT TO.

MapReduce
=========

=end

module Alcorithms

  def self.map(word)
    [word, 1]
  end

  def self.reduce(tuple)
    [tuple.first, tuple.last.inject(0, :+)]
  end

  def self.mapreduce(input)
    input.split(' ')
  end

end

if __FILE__ == $0
  input = 'foo bar baz bar'
binding.pry

  puts "MapReduce",
       "  Input: %s" % [input],
       "Result: %s" % [Alcorithms::mapreduce(input)]
end
