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
    sal = User.new("Sal")
    assert_equal [], sal.jokes
  end

  def test_user_wants_to_learn_some_jokes
    skip
    sal = User.new("Sal")
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")


    assert_equal [joke_1, joke_2], sal.jokes
  end

  def test_user_learns_joke
    sal = User.new("Sal")
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")

    assert_equal [joke_1], sal.learn(joke_1)
    assert_equal [joke_1, joke_2], sal.learn(joke_1, joke_2)
  end

  def test_after_learning_the_joke_it_is_in_the_jokes_array
    sal = User.new("Sal")
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    sal.learn(joke_1)
    sal.learn(joke_1, joke_2)

    assert_equal [joke1], sal.jokes
    assert_equal [joke_1, joke_2], sal.jokes
  end

  def test_after_learning_the_joke_user_tells_it_to_someone
    skip
    sal = User.new("Sal")
    ali = User.new("Ali")
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    sal.learn(joke_1)
    sal.learn(joke_2)

    assert_equal joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam."), sal.tell(ali, joke_1)
    assert_equal joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards."), sal.tell(ali, joke_2)
  end

  def test_after_user_tells_joke_the_joke_is_in_another_users_array
    skip
    sal = User.new("Sal")
    ali = User.new("Ali")
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    sal.learn(joke_1)
    sal.learn(joke_2)
    sal.tell(ali, joke_1)
    sal.tell(ali, joke_2)

    assert_equal joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam."), ali.joke_by_id(1)
    assert_equal joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards."), ali.joke_by_id(2)
  end
end
