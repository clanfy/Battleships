require('minitest/autorun')
require('minitest/rg')
require_relative('../torpedo')
require_relative('../board')

class TestTorpedo < MiniTest::Test

  # def setup
  #  # @torpedo = Torpedo.new
  # end


  def test_hit_ship_turn_value_0
    # assert_equal(0, @board.turn_value_to_0(5))
    assert_equal(0, @board.turn_value_to_0(6))
  end

  # def test_hits_water

  # end


end
