#!/usr/bin/env ruby

require_relative 'lib/player'
require_relative 'lib/card'
require_relative 'lib/deck'
require_relative 'lib/game'

require 'benchmark'

game_count = (ARGV[0] || 100).to_i
game = Game.new

Benchmark.bm do |x|
  x.report do
    game_count.times do
      game.play_game
    end
  end
end
