class Game < ActiveRecord::Base
  has_one :game_type
  # has_one :winner, :class_name "Player"
  has_many :player_games
  has_many :players, :through => :player_games

  def num_players
    self.players.count
  end

  def winner
    
  end

  def reset_game
    self.players.each do |player|
      player.points = 0
    end
  end
end
