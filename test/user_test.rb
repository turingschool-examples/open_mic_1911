require 'minitest/autorun'
require 'pry'
require './lib/joke'
require './lib/user'

class UserTest < Minitest::Test
  def test_it_exists
    sal = User.new("Sal")

    assert_instance_of User, sal
  end

  def test_it_has_attributes
    zebra = User.new("Megan")

    assert_equal "Megan", zebra.name
    # assert_equal [], zebra.jokes
  end

  def test_it_starts_with_no_jokes
    ali = User.new("Ali")

    assert_equal [], ali.jokes
  end

  def test_it_can_learn_jokes
    sal = User.new("Sal")
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")

    sal.learn(joke_1)
    sal.learn(joke_2)

    assert_equal [joke_1, joke_2], sal.jokes
    #
    # assert_equal joke_1, sal.jokes[0]
    # assert_equal joke_2, sal.jokes[1]
    #
    # assert_equal true, sal.jokes.include?(joke_1)
    # assert_equal true, sal.jokes.include?(joke_2)
  end

  def test_it_can_tell_jokes
    sal = User.new("Sal")
    ali = User.new("Ali")
    megan = User.new("Megan")
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    sal.learn(joke_1)
    sal.learn(joke_2)

    sal.tell(ali, joke_1)
    sal.tell(ali, joke_2)
    ali.tell(megan, joke_1)

    assert_equal [joke_1, joke_2], ali.jokes
    assert_equal [joke_1], megan.jokes
  end

  def test_it_can_find_a_joke_by_id
    sal = User.new("Sal")
    joke_1 = Joke.new(1343234, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(222, "How do you keep a lion from charging?", "Take away its credit cards.")
    sal.learn(joke_1)
    sal.learn(joke_2)

    assert_equal joke_2, sal.joke_by_id(222)
    assert_nil sal.joke_by_id(54)
  end
end
