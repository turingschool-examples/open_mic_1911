require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/joke'
require_relative '../lib/user'

class UserTest < Minitest::Test

  def setup
    @sal = User.new("Sal")
    @joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    @joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
  end

  def test_user_exists
    assert_instance_of User, @sal
  end

  def test_user_can_learn_jokes
    @sal.learn(@joke_1)
    assert_equal @sal.jokes[0] , @joke_1
    @sal.learn(@joke_2)
    assert_equal @sal.jokes[1], @joke_2
  end
end
