# pry(main)> sal.learn(joke_1)
#
# pry(main)> sal.learn(joke_2)
#
# pry(main)> sal.jokes
# # => [#<Joke:0x00007fb71da169f0...>, #<Joke:0x00007fb71d8e0bd0...>]
#
require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'

class UserTest < Minitest::Test

  def setup
    @sal = User.new("Sal")
    @ali = User.new("Ali")
    @joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    @joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
  end

  def test_it_exists
    assert_instance_of User, @sal
  end

  def test_user_attributes_are_accessible

    assert_equal "Sal", @sal.name
    assert_equal [], @sal.jokes
  end

  def test_user_can_learn_jokes
    @sal.learn(@joke_2)
    @sal.learn(@joke_1)

    assert_equal [@joke_2, @joke_1], @sal.jokes
  end

  def test_user_can_tell_another_user_jokes
    assert_equal [], @ali.jokes

    @sal.tell(@ali, @joke_1)
    @sal.tell(@ali, @joke_2)

    assert_equal [@joke_1, @joke_2], @ali.jokes
  end

  def test_i_can_query_jokes_by_id
    @ali.learn(@joke_1)
    @ali.learn(@joke_2)

    assert_equal @joke_1, @ali.joke_by_id(1)
    assert_equal @joke_2, @ali.joke_by_id(2)
  end
end
