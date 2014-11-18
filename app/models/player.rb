class Player < ActiveRecord::Base
  has_many :player_games
  has_many :games, :through => :player_games

  attr_accessor :points

  def increment_points
    points += 1
  end

  def decrement_points
    points -= 1
  end

  def num_wins(game_type)
    #given type of game, return the number of times a player has won that game; can do this with arel but would need winner to be column
  end
end
