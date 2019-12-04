require 'minitest/autorun'
require 'minitest/pride'
require './lib/user'
require './lib/joke'

class UserTest < Minitest::Test

  def test_it_exists
    sal = User.new("Sal")

    assert_instance_of User, sal
  end

  def test_user_starts_with_no_jokes
    sal = User.new("Sal")

    assert_equal [], sal.jokes
  end

end
