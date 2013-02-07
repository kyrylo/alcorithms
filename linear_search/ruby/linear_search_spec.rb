require 'minitest/autorun'
require File.expand_path('../linear_search', __FILE__)

describe Alcorithms do
  describe "::linear_search" do
    it "finds an index of the given value" do
      Alcorithms::linear_search([5, 2, 4, 6, 1, 3], 6).must_equal 4
    end

    it "finds an idex of the list of" do
      Alcorithms::linear_search([100], 100).must_equal 1
    end

    it "returns `nil` if the argument is the empty array" do
      Alcorithms::linear_search([], 4).must_equal nil
    end

    it "returns `nil` if it cannot find an element" do
      Alcorithms::linear_search([5, 2, 4, 6, 1, 3], 100).must_equal nil
    end
  end
end
