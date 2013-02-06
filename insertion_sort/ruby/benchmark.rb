require 'benchmark'
require File.expand_path('../insertion_sort', __FILE__)

def moar?
  ARGV.include?('-m')
end

nums10 = (1..10).to_a.shuffle
nums100 = (1..100).to_a.shuffle
nums1_000 = (1..1_000).to_a.shuffle
nums10_000 = (1..10_000).to_a.shuffle

if moar?
  nums20_000 = (1..20_000).to_a.shuffle
  nums25_000 = (1..25_000).to_a.shuffle
end

Benchmark.bmbm do |x|
  x.report('10') do
    Alcorithms::insertion_sort(nums10.dup)
  end

  x.report('100') do
    Alcorithms::insertion_sort(nums100.dup)
  end

  x.report('1.000') do
    Alcorithms::insertion_sort(nums1_000.dup)
  end

  x.report('10.000') do
    Alcorithms::insertion_sort(nums10_000.dup)
  end

  if moar?
    x.report('20.000') do
      Alcorithms::insertion_sort(nums20_000.dup)
    end

    x.report('25.000') do
      Alcorithms::insertion_sort(nums25_000.dup)
    end
  end
end
