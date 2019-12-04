require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'

class UserTest < Minitest::Test
  def setup
    @user = User.new("Sal")
  end

  def test_it_exists
    assert_instance_of User, @user
  end

  def test_it_has_a_name
    assert_equal "Sal", @user.name
  end

  def test_it_can_hold_jokes
    assert_equal [], @user.jokes
  end

end
