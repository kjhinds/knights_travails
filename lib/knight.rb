# frozen_string_literal: true

# Knight class that controls possible moves
class Knight
  attr_accessor :position, :previous, :next

  MOVES = [[1, 2], [1, 2], [2, -1], [1, -2],
           [-1, -2], [-2, -1], [-2, 1], [-1, 2]].freeze

  def initialize(position, previous = nil)
    @position = position
    @previous = previous
    @next = next_move
  end

  def next_move
    MOVES.map { |t| [@position[0] + t[0], @position[1] + t[1]] }
         .keep_if { |e| valid?(e) }
  end

  def valid?(position)
    position[0].between?(1, 8) && position[1].between?(1, 8)
  end
end
