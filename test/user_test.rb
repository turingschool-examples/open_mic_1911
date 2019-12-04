require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'

class UserTest < Minitest::Test
  def test_user_exists
    skip
    sal = User.new("Sal")
    assert_instance_of User, sal
  end

  def test_user_has_a_name
    skip
    sal = User.new("Sal")
    assert_equal "Sal", sal.name
  end

  def test_user_has_empty_list_of_jokes
    skip
    sal = User.new("Sal")
    assert_equal [], sal.jokes
  end

  def test_user_has_set_of_jokes_exist
    sal = User.new("Sal")
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")

    # jokes = [joke_1, joke_2]

    require "pry"; binding.pry
    assert_equal [joke_1, joke_2], sal.jokes
  end

  def test_user_can_learn_joke
    sal = User.new("Sal")
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")

    

    assert_equal [joke_1], sal.learn(joke_1)
    assert_equal [joke_1, joke_2], sal.learn(joke_1, joke_2)


  end
end
