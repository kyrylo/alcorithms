require 'minitest/autorun'
require File.expand_path('../binary_sum', __FILE__)

describe Alcorithms do
  describe "::binary_sum" do
    it "adds together binary numbers" do
      a = [1, 0, 1, 0] # (10)
      b = [1, 1, 0, 1] # (13)
      Alcorithms::binary_sum(a, b).must_equal [1, 0, 1, 1, 1] # (23)
    end

    it "adds together BIG binary numbers" do
      a = [1, 0, 1, 0, 0, 0, 0, 0, 1, 0] # (642)
      b = [1, 0, 0, 1, 0, 1, 1, 0, 0, 0] # (600)
      Alcorithms::binary_sum(a, b).
        must_equal [1, 0, 0, 1, 1, 0, 1, 1, 0, 1, 0] # (1242)
    end
  end
end
