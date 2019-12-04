require './lib/joke'
require './lib/user'
require 'minitest/autorun'
require 'minitest/pride'

class UserTest < Minitest::Test

  def test_it_exists
    sal = User.new("Sal")
    assert_instance_of User, sal
  end

  def test_user_can_take_joke
    sal = User.new("Sal")
    joke = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    assert_equal [], sal.jokes
  end

  def test_user_can_learn_joke
    sal = User.new("Sal")
    joke = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")


    assert_equal [], sal.jokes
    sal.learn(joke)
    sal.learn(joke_2)
    assert_equal [joke, joke_2], sal.jokes
  end
end
