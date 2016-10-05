require('minitest/autorun')
require('minitest/rg')
require_relative('../player')


class TestPlayer < MiniTest::Test

  def setup
    @player = Player.new("Cookie")
  end

  def test_player_has_name
    assert_equal("Cookie", @player.name)
  end

  def test_player_has_10_turns_to_start
    assert_equal(10, @player.turns)
  end



end