require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'

class UserTest < Minitest::Test
  def setup
    @user_1 = User.new("Sal")
    @user_2 = User.new("Ali")
    @joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    @joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
  end

  def test_it_exists
    assert_instance_of User, @user_1
  end

  def test_it_has_a_name
    assert_equal "Sal", @user_1.name
  end

  def test_it_can_hold_jokes
    assert_equal [], @user_1.jokes
  end

  def test_it_can_learn_jokes
    @user_1.learn(@joke_1)
    @user_1.learn(@joke_2)
    assert_equal [@joke_1, @joke_2], @user_1.jokes
  end

  def test_it_can_tell_jokes_to_another_user
    @user_1.learn(@joke_1)
    @user_1.learn(@joke_2)
    @user_1.tell(@user_2, @joke_1)
    @user_1.tell(@user_2, @joke_2)
    assert_equal [@joke_1, @joke_2], @user_2.jokes
  end

  def test_joke_by_id
    @user_1.learn(@joke_1)
    @user_1.learn(@joke_2)
    @user_1.tell(@user_2, @joke_1)
    @user_1.tell(@user_2, @joke_2)
    assert_equal @joke_1, @user_2.joke_by_id(1)
    assert_equal @joke_2, @user_2.joke_by_id(2)
  end

end
