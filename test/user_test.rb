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

  def test_it_has_jokes
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    assert_equal 1, joke_1.joke
    assert_equal 2, joke_2.joke
  end

  def test_can_learn_joke
    sal = User.new("Sal")
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    sal.learn(joke_1)
    sal.learn(joke_2)
    assert_instance_of Joke, sal.jokes[0]
    assert_instance_of Joke, sal.jokes[1]
  end

  def test_how_many_jokes
    sal = User.new("Sal")
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    sal.learn(joke_1)
    sal.learn(joke_2)
    assert_equal 2, sal.jokes.length
  end

  def test_there_is_a_new_user
    sal = User.new("Sal")
    ali = User.new("Ali")
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    sal.learn(joke_1)
    sal.learn(joke_2)
    sal.tell(ali, joke_1)
    sal.tell(ali, joke_2)
    ali.learn(joke_1)
    ali.learn(joke_2)
    assert_instance_of Joke, ali.jokes[0]
    assert_instance_of Joke, ali.jokes[1]
    assert_equal joke_1, ali.joke_by_id(1)
    assert_equal joke_2, ali.joke_by_id(2)
  end
end
