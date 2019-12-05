require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'
require 'pry'

class UserTest < Minitest::Test
  def test_it_exists
    sal = User.new("Sal")
    assert_instance_of User, sal
  end

  def test_sal_can_learn_jokes
    sal = User.new("Sal")
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because
                      his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit
                      cards.")
    sal.learn(joke_1)
    sal.learn(joke_2)

    assert_equal [joke_1, joke_2], sal.jokes
  end

  def test_users_tell_jokes_to_users_that_learn_them
      sal = User.new("Sal")
      ali = User.new("Ali")

      joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because
                        his mother was in a jam.")
      joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit
                        cards.")
      sal.learn(joke_1)
      sal.learn(joke_2)

      sal.tell(ali, joke_1)
      sal.tell(ali, joke_2)


      assert_equal [joke_1, joke_2], ali.jokes
    end

    def test_users_can_find_joke_by_id
      ali = User.new("Ali")

      joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because
                        his mother was in a jam.")
      joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit
                        cards.")
      ali.learn(joke_1)
      ali.learn(joke_2)
# binding.pry
      assert_equal [joke_1, joke_2], ali.jokes
      assert_equal [joke_1], ali.joke_by_id(1)
      assert_equal [joke_2], ali.joke_by_id(2)
    end










end
