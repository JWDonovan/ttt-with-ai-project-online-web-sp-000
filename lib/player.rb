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
    else
      Game::WIN_COMBINATIONS.detect do |combo|
        if combo.select do |index|
          board.position(index + 1) == token
        end.size == 2 && combo.any? do |index|
          board.position(i + 1) == " "
        end
          move = combo.select do |index|
            !board.taken?(index + 1)
          end.first.to_i.+(1).to_s
        elsif cmb.select{|i| board.position(i+1) != " " && board.position(i+1) != token}.size == 2 && cmb.any?{|i| board.position(i+1) == " "}
          move = cmb.select{|i| !board.taken?(i+1)}.first.to_i.+(1).to_s
        end
      end

      move = [1, 3, 7, 9, 2, 4, 6, 8].detect do |index|
        !board.taken?(index)
      end if move == nil
    end

    move
  end
end
