require 'minitest/autorun'
require 'minitest/pride'
require './lib/user'
require './lib/joke'

class JokeTest < Minitest::Test

  def setup
    @sal = User.new("Sal")
    @ali = User.new("Ali")
  end

  def test_user_exists
    assert_instance_of User, @sal
    assert_equal "Sal", @sal.name
    assert_equal [], @sal.jokes
  end

  def test_user_can_learn_jokes
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")

    assert_equal joke_1, @sal.learn(joke_1)
    assert_equal joke_2, @sal.learn(joke_2)
  end

  def test_user_can_store_jokes
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    @sal.learn(joke_1)
    @sal.learn(joke_2)

    assert_equal [joke_1, joke_2], @sal.jokes
  end

  def test_user_can_tell_joke
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    @sal.learn(joke_1)
    @sal.learn(joke_2)
    @sal.tell(@ali, joke_1)
    @sal.tell(@ali, joke_2)

    assert_equal [joke_1, joke_2], @ali.jokes
  end

  def test_user_joke_by_id_method
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    @sal.learn(joke_1)
    @sal.learn(joke_2)
    @sal.tell(@ali, joke_1)
    @sal.tell(@ali, joke_2)
    
    assert_equal joke_1, @ali.joke_by_id(1)
    assert_equal joke_2, @ali.joke_by_id(2)
  end


end
