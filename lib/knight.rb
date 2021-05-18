# frozen_string_literal: true

# Knight class that controls possible moves
class Knight
  attr_accessor :position, :previous, :next

  MOVES = [[1, 2], [1, 2], [2, -1], [1, -2],
           [-1, -2], [-2, -1], [-2, 1], [-1, 2]].freeze

  def initialize(position, previous = nil)
    @position = position
    @previous = previous
    @next = []
  end
end
