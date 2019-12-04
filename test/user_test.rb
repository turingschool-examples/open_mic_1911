require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'

class UserTest < Minitest::Test

  def test_it_exists
    sal = User.new("Sal")
    assert_equal "Sal", sal.name
    assert_equal [], sal.jokes
  end

end
