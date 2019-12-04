require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/joke'
require_relative '../lib/user'

class UserTest < Minitest::Test
  def test_it_exists
    sal = User.new("Sal")
    assert_instance_of User, sal
  end
end
