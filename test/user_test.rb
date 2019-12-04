require 'minitest/autorun'
require 'minitest/pride'
require './lib/user'
require './lib/joke'

class UserTest < Minitest::Test
  def setup
    @joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    @joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
  end
  def test_it_exists
    sal = User.new("Sal")
    assert_instance_of User, sal
  end

  def test_it_starts_with_no_jokes
    sal = User.new("Sal")
    assert_equal [], sal.jokes
  end

  def test_it_learns_jokes
    sal = User.new("Sal")
    sal.learn(@joke_1)
    sal.learn(@joke_2)
    assert_equal [@joke_1, @joke_2], sal.jokes
  end

end
