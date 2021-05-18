require_relative 'chessboard'

def string_to_array(string)
  return false unless string.match?(/^[1-8],[1-8]$/m)

  string.split(',').map(&:to_i)
end

puts 'This script shows the simplest path for a knight'
puts 'to move from a given chessboard square to a destination'

loop do
  puts '------------------------------------------------'
  start, destination = nil
  loop do
    puts 'Enter a starting coordinate ( 1,1 through 8,8 )'
    start = string_to_array(gets.chomp)
    break if start
  end
  loop do
    puts 'Enter a destination coordinate ( 1,1 through 8,8)'
    destination = string_to_array(gets.chomp)
    break if destination
  end
  board = Chessboard.new
  board.knight_moves(start, destination)
  puts ''
  puts 'Type q to quit or anything else to try again.'
  response = gets.chomp.downcase
  break if response == 'q'
end
