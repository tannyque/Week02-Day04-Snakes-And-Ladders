require("minitest/autorun")
require("minitest/rg")
require_relative("../sladder.rb")
require_relative("../board.rb")

class BoardTest < MiniTest::Test

  def setup()
    @ladder = Sladder.new(6, 3)
    @snake = Sladder.new(43, -9)
    @board = Board.new(50, [@ladder, @snake])
  end

end
