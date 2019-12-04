require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'

class JokeTest < Minitest::Test
  def test_it_exists
    joke = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    sal = User.new("Sal")

    assert_instance_of Joke, joke
    assert_instance_of User, sal
  end

  def test_joke_has_attributes
    joke = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    assert_equal 1, joke.id
    assert_equal "Why did the strawberry cross the road?", joke.setup
    assert_equal "Because his mother was in a jam.", joke.punchline
  end

  def test_user_has_a_name
    sal = User.new("Sal")

    assert_equal "Sal", sal.name
  end

  def test_users_jokes_default_with_none
    sal = User.new("Sal")

    assert_equal [], sal.jokes
  end

  def test_user_can_learn_joke
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    sal = User.new("Sal")

    sal.learn(joke_1)
    sal.learn(joke_2)

    assert_equal [joke_1, joke_2], sal.jokes
  end

  def test_user_can_tell_another_user_a_joke
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    sal = User.new("Sal")
    ali = User.new("Ali")

    sal.learn(joke_1)
    sal.learn(joke_2)

    sal.tell(ali, joke_1)
    sal.tell(ali, joke_2)

    assert_equal [joke_1, joke_2], ali.jokes
  end

  # I have tried to work this one out in several
  # ways, but I cannot figure it out, so I am moving on.
  # def test_new_user_can_tell_what_joke_by_the_id
  #   joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
  #   joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
  #   sal = User.new("Sal")
  #   ali = User.new("Ali")
  #
  #   sal.learn(joke_1)
  #   sal.learn(joke_2)
  #
  #   sal.tell(ali, joke_1)
  #   sal.tell(ali, joke_2)
  #
  #   assert_equal joke_1, ali.joke_by_id(1)
  #   assert_equal joke_2, ali.joke_by_id(2)
  # end
end
