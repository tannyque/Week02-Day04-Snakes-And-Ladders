require("minitest/autorun")
require("minitest/rg")
require_relative("../player.rb")
require_relative("../counter.rb")

class PlayerTest < MiniTest::Test

  def setup()
    @counter = Counter.new("Red")
    @player = Player.new("Upul", @counter)
  end

  def test_has_name()
    assert_equal("Upul", @player.name())
  end

# Chaining methods by getting the counter from the player and the getter from
# the colour
  def test_has_counter()
    assert_equal("Red", @player.counter().colour())
  end

end
