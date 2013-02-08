require 'benchmark'
require File.expand_path('../../../alcorithms', __FILE__)
require File.expand_path('../insertion_sort', __FILE__)

def moar?
  ARGV.include?('-m')
end

Benchmark.bmbm do |x|
  x.report('10') do
    Alcorithms::insertion_sort(Alcorithms::Shuffled_nums(10))
  end

  x.report('100') do
    Alcorithms::insertion_sort(Alcorithms::Shuffled_nums(100))
  end

  x.report('1.000') do
    Alcorithms::insertion_sort(Alcorithms::Shuffled_nums(1_000))
  end

  x.report('10.000') do
    Alcorithms::insertion_sort(Alcorithms::Shuffled_nums(10_000))
  end

  if moar?
    x.report('20.000') do
      Alcorithms::insertion_sort(Alcorithms::Shuffled_nums(20_000))
    end

    x.report('25.000') do
      Alcorithms::insertion_sort(Alcorithms::Shuffled_nums(25_000))
    end
  end
end
