class Game

attr_reader :turns

def initialize(player, board)
  @player = player
  @board = board
  @turns = 10
end

def turns_remaining
  @turns -= 1
  return @turns
end

def turns_remaining_greater_than_0?(turn)
  if turn > 0
    return true
  else
    return false
  end
end

end