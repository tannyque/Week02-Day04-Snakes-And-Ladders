require("minitest/autorun")
require("minitest/rg")
require_relative("../dice.rb")

class DiceTest < MiniTest::Test

  def setup()
    @dice = Dice.new(6)
  end

  def test_has_6_sides()
    assert_equal(6, @dice.sides())
  end

end
