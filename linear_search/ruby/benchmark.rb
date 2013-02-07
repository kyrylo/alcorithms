require 'benchmark'
require File.expand_path('../linear_search', __FILE__)

def moar?
  ARGV.include?('-m')
end

# Returns the value (not the index).
def median(list)
  list[list.length / 2]
end

nums10 = (1..10).to_a
mid10, last10 = median(nums10), nums10.last

nums100 = (1..100).to_a
mid100, last100 = median(nums100), nums100.last

nums1_000 = (1..1_000).to_a
mid1_000, last1_000 = median(nums1_000), nums1_000.last

nums10_000 = (1..10_000).to_a
mid10_000, last10_000 = median(nums10_000), nums10_000.last

if moar?
  nums20_000 = (1..20_000).to_a
  mid20_000, last20_000 = median(nums20_000), nums20_000.last

  nums25_000 = (1..25_000).to_a
  mid25_000, last25_000 = median(nums25_000), nums25_000.last
end

Benchmark.bmbm do |x|
  x.report('mid 10') do
    Alcorithms::linear_search(nums10, mid10)
  end

  x.report('last 10') do
    Alcorithms::linear_search(nums10, last10)
  end

  x.report('mid 100') do
    Alcorithms::linear_search(nums100, mid100)
  end

  x.report('last 100') do
    Alcorithms::linear_search(nums100, last100)
  end

  x.report('mid 1.000') do
    Alcorithms::linear_search(nums1_000, mid100)
  end

  x.report('last 1.000') do
    Alcorithms::linear_search(nums1_000, last100)
  end

  x.report('mid 10.000') do
    Alcorithms::linear_search(nums10_000, mid10_000)
  end

  x.report('last 10.000') do
    Alcorithms::linear_search(nums10_000, last10_000)
  end

  if moar?
    x.report('mid 20.000') do
      Alcorithms::linear_search(nums20_000, mid20_000)
    end

    x.report('last 20.000') do
      Alcorithms::linear_search(nums20_000, last20_000)
    end

    x.report('mid 25.000') do
      Alcorithms::linear_search(nums25_000, mid25_000)
    end

    x.report('last 25.000') do
      Alcorithms::linear_search(nums25_000, last25_000)
    end
  end
end
