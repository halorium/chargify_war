#!/usr/bin/env ruby

require_relative 'stats'

require 'benchmark'

argument = (ARGV[0] || 100).to_i

Benchmark.bm do |x|
  x.report { Stats.new(argument).run }
end
