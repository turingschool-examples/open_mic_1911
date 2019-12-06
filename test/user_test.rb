require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'

class UserTest < Minitest::Test
  # def setup
  #   @sal = User.new("Sal")
  #   @joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
  #   @joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
  # end

  def test_name_of_user
    sal = User.new("Sal")
    ali = User.new("Ali")
    assert_instance_of User, sal
    assert_instance_of User, ali
  end

  def test_user_joke_array_starts_empty
    sal = User.new("Sal")
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    assert_equal [], sal.jokes
  end
  #
  def test_user_can_learn_joke
     # require 'pry'; binding.pry
     sal = User.new("Sal")
     joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
     joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
     assert_equal [joke_1], sal.learn(joke_1)
     # joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
     assert_equal [joke_2], sal.learn(joke_2)

  end
  #
  def test_user_joke_array_fills_up
    sal = User.new("Sal")
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")

    assert_equal [joke_1, joke_2], sal.jokes
  end

  def test_tell_joke_method


  end

  def test_joke_by_id_method

  end
  #
  end
