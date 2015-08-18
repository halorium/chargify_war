#!/usr/bin/env ruby

require_relative 'lib/player'
require_relative 'lib/card'
require_relative 'lib/deck'
require_relative 'lib/game'

class Stats
  attr_reader :game_count, :game
  attr_accessor :wars, :hands

  def initialize(num_of_games)
    @game_count = num_of_games
    @game = Game.new
    @wars = [ ]
    @hands = [ ]
  end

  def run
    game_count.times do
      stats_hash = game.play_game
      hands << stats_hash[:hand_count]
      wars << stats_hash[:war_count]
    end
    self
  end

  def display
    avg_num_wars = (wars.inject(:+).to_f / wars.size) / game_count
    avg_num_hands = (hands.inject(:+).to_f / hands.size) / game_count

    sorted_hands = hands.sort
    low_num_hands = sorted_hands.first
    high_num_hands = sorted_hands.last

    puts "Number of games: #{game_count}"
    puts "Average number of wars:  #{avg_num_wars.round(2)}"
    puts "Average number of hands: #{avg_num_hands.round(2)}"
    puts "Lowest number of hands:  #{low_num_hands}"
    puts "Highest number of hands: #{high_num_hands}"
    puts "Player 1 wins: #{game.player1.wins}"
    puts "Player 2 wins: #{game.player2.wins}"
  end
end

argument = (ARGV[0] || 100).to_i

Stats.new(argument).run.display
