class Player
  attr_reader :token

  def initialize(token)
    @token = token
  end
end

class Human < Player
  def move(board)
    puts "Please enter 1-9:"
    input = gets.strip.to_i
  end
end

class Computer < Player
  def move(board)
    move = nil

    if !board.taken?(5)
    end

    move
  end
end