require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/joke'
require_relative '../lib/user'

class UserTest < Minitest::Test
  def test_it_exists
    sal = User.new("Sal")
    assert_instance_of User, sal
  end

  def test_user_has_a_name
    sal = User.new("Sal")
    assert_equal "Sal", sal.name
  end

  def test_user_has_no_jokes
    sal = User.new("Sal")
    assert_equal [], sal.jokes
  end

  def test_user_can_learn_jokes
    sal = User.new("Sal")
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")

    sal.learn(joke_1)
    sal.learn(joke_2)
    assert_equal [joke_1, joke_2], sal.jokes
  end

  def test_user_can_tell_joke_to_another_user
    sal = User.new("Sal")
    ali = User.new("Ali")
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")

    sal.learn(joke_1)
    sal.learn(joke_2)
    sal.tell(ali, joke_1)
    assert_equal [joke_1], ali.jokes
    sal.tell(ali, joke_2)
    assert_equal [joke_1, joke_2], ali.jokes
  end

  def test_can_sort_jokes_by_index
    sal = User.new("Sal")
    ali = User.new("Ali")
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    joke_7 = Joke.new(7, "Knock knock", "Who's there?")

    sal.learn(joke_1)
    sal.learn(joke_2)
    sal.learn(joke_7)

    sal.tell(ali, joke_1)
    sal.tell(ali, joke_2)
    sal.tell(ali, joke_7)

    assert_equal joke_1, ali.joke_by_id(1)
    assert_equal joke_2, ali.joke_by_id(2)
    assert_equal joke_7, ali.joke_by_id(7)
  end

end
