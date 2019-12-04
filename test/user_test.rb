require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/joke'
require_relative '../lib/user'

class UserTest < Minitest::Test

  def setup
    @sal = User.new("Sal")
    @ali = User.new("Ali")
    @joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    @joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
  end

  def test_user_exists
    assert_instance_of User, @sal
  end

  def test_user_can_learn_jokes
    @sal.learn(@joke_1)
    assert_equal @sal.jokes[0] , @joke_1
    @sal.learn(@joke_2)
    assert_equal @sal.jokes[1], @joke_2
  end

  def test_user_can_tell_jokes
    @sal.learn(@joke_1)
    @sal.learn(@joke_2)

    @sal.tell(@ali, @joke_1)
    assert_equal @ali.jokes[0], @joke_1

  end

  def test_jokes_can_be_returned_by_id
    @ali.learn(@joke_1)
    @ali.learn(@joke_2)
    assert_equal @ali.joke_by_id(1), @ali.jokes[0]
    assert_equal @ali.joke_by_id(2), @ali.jokes[1]
  end

end
