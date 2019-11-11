# frozen_string_literal: true

class SportsTeam
  attr_accessor :team_name, :players, :coach
  attr_reader :points

  def initialize(input_team_name, input_players, input_coach)
    @team_name = input_team_name
    @players = input_players
    @coach = input_coach
    @points = 0
  end

  def add_new_player(new_player)
    @players.push(new_player)
    return @players
  end

  def check_player_name(player_name)
    if @players.include?(player_name)
      'Yes'
    else
      'No'
    end
  end

  def update_points(result)
    if result == 'win'
      @points += 3
    elsif result == 'lose'
      @points += 1
    else
      @points += 2
    end
  end
end
