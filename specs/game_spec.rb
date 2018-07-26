require("minitest/autorun")
require("minitest/rg")
require_relative("../game.rb")
require_relative("../counter.rb")
require_relative("../player.rb")
require_relative("../dice.rb")
require_relative("../sladder.rb")
require_relative("../board.rb")

class GameTest < MiniTest::Test

  def setup()
    @counter1 = Counter.new("Red")
    @counter2 = Counter.new("Yellow")
    @ladder = Sladder.new(6, 3)
    @snake = Sladder.new(43, -9)
    @board = Board.new(50, [@ladder, @snake])
    @player1 = Player.new("Upul", @counter1)
    @player1 = Player.new("Alistair", @counter2)
    @dice = Dice.new(6)
    @game = Game.new([@player1, @player2], @board, @dice)

  end

  def test_player_has_won()
    @player1.move_counter(50)
    result = @game.check_winner(@player1)
    assert_equal(true, result)
  end

end
