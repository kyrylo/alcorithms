require 'benchmark'
require File.expand_path('../../../alcorithms', __FILE__)
require File.expand_path('../linear_search', __FILE__)

def moar?
  ARGV.include?('-m')
end

mid10, last10 = Alcorithms::Median(Alcorithms::Nums.take(10)), 10
mid100, last100 = Alcorithms::Median(Alcorithms::Nums.take(100)), 100
mid1_000, last1_000 = Alcorithms::Median(Alcorithms::Nums.take(1_000)), 1_000
mid10_000, last10_000 = Alcorithms::Median(Alcorithms::Nums.take(10_000)), 10_000

if moar?
  mid20_000, last20_000 = Alcorithms::Median(Alcorithms::Nums.take(20_000)), 20_000
  mid25_000, last25_000 = Alcorithms::Median(Alcorithms::Nums.take(25_000)), 25_000
end

Benchmark.bmbm do |x|
  x.report('mid 10') do
    Alcorithms::linear_search(Alcorithms::Nums.take(10), mid10)
  end

  x.report('last 10') do
    Alcorithms::linear_search(Alcorithms::Nums.take(10), last10)
  end

  x.report('mid 100') do
    Alcorithms::linear_search(Alcorithms::Nums.take(100), mid100)
  end

  x.report('last 100') do
    Alcorithms::linear_search(Alcorithms::Nums.take(100), last100)
  end

  x.report('mid 1.000') do
    Alcorithms::linear_search(Alcorithms::Nums.take(1_000), mid1_000)
  end

  x.report('last 1.000') do
    Alcorithms::linear_search(Alcorithms::Nums.take(1_000), last1_000)
  end

  x.report('mid 10.000') do
    Alcorithms::linear_search(Alcorithms::Nums.take(10_000), mid10_000)
  end

  x.report('last 10.000') do
    Alcorithms::linear_search(Alcorithms::Nums.take(10_000), last10_000)
  end

  if moar?
    x.report('mid 20.000') do
      Alcorithms::linear_search(Alcorithms::Nums.take(20_000), mid20_000)
    end

    x.report('last 20.000') do
      Alcorithms::linear_search(Alcorithms::Nums.take(20_000), last20_000)
    end

    x.report('mid 25.000') do
      Alcorithms::linear_search(Alcorithms::Nums.take(25_000), mid25_000)
    end

    x.report('last 25.000') do
      Alcorithms::linear_search(Alcorithms::Nums.take(25_000), last25_000)
    end
  end
end
