# frozen_string_literal: true

require_relative 'knight'

# Chessboard class that keeps track of moves to destination
class Chessboard
  attr_accessor :history

  def initialize
    @history = []
  end

  def knight_moves(start, destination)
    puts "Starting position is: #{start}"
    puts "Ending position is: #{destination}"
    knight = Knight.new(start)
    loop do
      history.push(knight)
      break # if knight.position == destination
    end
    print_knight_moves
  end

  def print_knight_moves
    puts 'Moves to make:'
    history.each_with_index { |knight, i| puts "#{i + 1}: #{knight.position}" }
  end
end
