class Game

attr_reader :players

  def self.new_game(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.current_game
    @game
  end

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
