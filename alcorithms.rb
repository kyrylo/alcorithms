module Alcorithms
  Nums = Enumerator.new do |y|
    s = 0
    loop do
      y << s += 1
    end
  end

  def self.Shuffled_nums(n)
    Nums.take(n).shuffle
  end

  # Returns the value (not the index).
  def self.Median(list)
    list[list.length / 2]
  end
end
