require_relative 'knight'

class Chessboard
  def initialize
    @knight = Knight.new
  end

  def knight_moves(start, destination)
    puts "Starting position is: #{start}"
    puts "Ending position is: #{destination}"
  end
end
