require('minitest/autorun')
require('minitest/rg')
require_relative('../Part_A.rb')

class TestCodeClan < MiniTest::Test

  def setup
    @john_code_clan = CodeClan.new("John", "C7")
    @jaden_code_clan = CodeClan.new("Jaden", "G16")
    @jane_code_clan = CodeClan.new("Jane", "H9")
  end

  def test_get_name
    assert_equal("John", @john_code_clan.get_name)
  end

  def test_get_cohort
    assert_equal("G16", @jaden_code_clan.get_cohort)
  end

  def test_set_name
    @jane_code_clan.set_name('Emma')
    assert_equal('Emma', @jane_code_clan.get_name)
  end

  def test_set_cohort
    @john_code_clan.set_cohort('J8')
    assert_equal("J8", @john_code_clan.get_cohort)
  end

  def test_can_you_talk
    result = @jaden_code_clan.can_you_talk
    assert_equal("Yes, I can talk!", result)
  end

  def test_say_your_favourite_language
    result = @jane_code_clan.say_your_favourite_language("Ruby")
    assert_equal("I love Ruby!", result)
  end
end
