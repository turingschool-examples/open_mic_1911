require 'minitest/autorun'
require 'minitest/pride'
require './lib/user'
require './lib/joke'

class UserTest < Minitest::Test
  
  def test_it_exists
    sal = User.new("Sal")

    assert_instance_of User, sal
  end

end
