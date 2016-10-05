require('minitest/autorun')
require('minitest/rg')
require_relative('../board')

class TestBoard < MiniTest::Test

  def setup
    positions = {
      5 => 1,
      9 => 1,
      13 => 1
    }

    @board = Board.new(16,positions)

  end

  def test_board_should_have_16_tiles
    assert_equal(16, @board.number_of_tiles)
  end

  def test_ship_position_at_5_9_13
    assert_equal(1, @board.ship_at_position(5))
    assert_equal(1, @board.ship_at_position(9))
    assert_equal(1, @board.ship_at_position(13))
  end

  def test_game_not_won
    assert_equal(true, @board.win_game?)
  end


end
