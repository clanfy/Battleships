require('minitest/autorun')
require('minitest/rg')
require_relative('../board')
require_relative('../torpedo')
require_relative('../player')
require_relative('../game')


class TestGame < MiniTest::Test

  def setup

    positions = {
      5 => 1,
      9 => 1,
      13 => 1
    }
    board = Board.new(16,positions)

    @player1 = Player.new("Cookie")
  # @player2 = Player.new("Max")

  # players = [@player1, player2]

  @game = Game.new(@player1, board)


  end

def test_turns_remaining
  @game.turns_remaining
  assert_equal(9, @game.turns)
end

# def test_turns_remaining_greater_than_0
#   assert_equal(true, @game.turns_remaining(4))
# end

def test_turns_remaining_greater_than_0?
  assert_equal(true, @game.turns_remaining_greater_than_0?(@game.turns_remaining))
end

def test_game_over_no_turns_remaining
  assert_equal(false, @game.turns_remaining_greater_than_0?(0))
end


end




