require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/joke'
require_relative '../lib/user'

class UserTest < Minitest::Test
  def setup
    @sal = User.new("Sal")
    @joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    @joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
  end

  def test_they_can_have_jokes
    assert_equal [], @sal.jokes
  end

  def test_they_can_learn_jokes
    @sal.learn(@joke_1)
    @sal.learn(@joke_2)

    assert_equal 2, @sal.jokes.count
    assert_instance_of Joke, @sal.jokes[0]
    assert_instance_of Joke, @sal.jokes[1]
  end

  def test_they_can_teach_joke_to_another_person
    ali = User.new("Ali")
    @sal.learn(@joke_1)
    @sal.learn(@joke_2)
    @sal.tell(ali, @joke_1)
    @sal.tell(ali, @joke_2)

    assert_equal 2, ali.jokes.count
    assert_instance_of Joke, ali.jokes[0]
    assert_instance_of Joke, ali.jokes[1]

    assert_instance_of Joke, ali.joke_by_id(1)
    assert_instance_of Joke, ali.joke_by_id(2)
  end
end
