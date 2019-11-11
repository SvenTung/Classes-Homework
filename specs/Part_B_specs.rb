require('minitest/autorun')
require('minitest/rg')
require_relative('../Part_B')

class TestBankAccount < MiniTest::Test

  def test_add_new_player
    peters_team = SportsTeam.new("The Renegades", ["Jack", "Steven", "Harley", "Killian", "Tommy"], "Peter")
    result = peters_team.add_new_player("Robbie")
    assert_equal(["Jack", "Steven", "Harley", "Killian", "Tommy", "Robbie"], result)
  end

  def test_check_player_name
    peters_team = SportsTeam.new("The Renegades", ["Jack", "Steven", "Harley", "Killian", "Tommy"], "Peter")
    result = peters_team.check_player_name("Tommy")
    assert_equal("Yes", result)
    result = peters_team.check_player_name("Robbie")
    assert_equal("No", result)
  end

  def test_update_points
    peters_team = SportsTeam.new("The Renegades", ["Jack", "Steven", "Harley", "Killian", "Tommy"], "Peter")
    result = peters_team.update_points("win")
    assert_equal(3, result)
    result = peters_team.update_points("draw")
    assert_equal(5, result)
    result = peters_team.update_points("lose")
    assert_equal(6, result)
  end
end
