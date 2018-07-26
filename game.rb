class Game

  def initialize(players, board, dice)
    @players = players
    @board = board
    @dice = dice
  end

  def check_winner(player)
    return player.counter.position >= @board.number_of_squares
  end

end
