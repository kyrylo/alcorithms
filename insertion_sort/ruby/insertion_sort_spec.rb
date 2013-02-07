require 'minitest/autorun'
require File.expand_path('../insertion_sort', __FILE__)

describe Alcorithms do
  describe "::insertion_sort" do
    it "sorts a sequence of numbers" do
      Alcorithms::insertion_sort([5, 2, 4, 6, 1, 3]).must_equal [1, 2, 3, 4, 5, 6]
    end

    it "deals with 1 element sequences" do
      Alcorithms::insertion_sort([100]).must_equal [100]
    end

    it "returns the empty array if the argument is the empty array" do
      Alcorithms::insertion_sort([]).must_equal []
    end

    it "performs sorting in place" do
      nums = [2, 1]
      id = nums.object_id
      after_id = Alcorithms::insertion_sort(nums).object_id
      id.must_equal after_id
    end
  end
end
