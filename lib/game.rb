class Game

attr_reader :players

def initialize(player1, player2)
  @players = [player1, player2]
end

  def attack(player)
    player.lose_points
  end

  def swap_turn
    @players << @players.shift
  end

end
