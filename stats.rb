#!/usr/bin/env ruby

require_relative 'lib/player'
require_relative 'lib/card'
require_relative 'lib/deck'
require_relative 'lib/game'

game_count = (ARGV[0] || 100).to_i

game = Game.new

game_count.times do
  game.play_game
end

avg_num_wars = game.wars.inject(:+).to_f / game.wars.size
avg_num_hands = game.hands.inject(:+).to_f / game.hands.size

sorted_hands = game.hands.sort
low_num_hands = sorted_hands.first
high_num_hands = sorted_hands.last

puts "Number of games: #{game_count}"
puts "Average number of wars:  #{avg_num_wars.round(2)}"
puts "Average number of hands: #{avg_num_hands.round(2)}"
puts "Lowest number of hands:  #{low_num_hands}"
puts "Highest number of hands: #{high_num_hands}"
puts "Player 1 wins: #{game.player1.wins}"
puts "Player 2 wins: #{game.player2.wins}"
