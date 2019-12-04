require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'

class UserTest < Minitest::Test


  def test_user_exists
    sal = User.new("Sal")

    assert_instance_of User, sal
  end

  def test_attributes

  end
end
