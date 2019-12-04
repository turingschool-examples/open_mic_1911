require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'

class JokeTest < Minitest::Test
  def test_it_exists
    joke = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    assert_instance_of Joke, joke
  end

  def test_it_has_attributes
    joke = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    assert_equal 1, joke.id
    assert_equal "Why did the strawberry cross the road?", joke.setup
    assert_equal "Because his mother was in a jam.", joke.punchline
  end

  def test_it_has_a_user
    joke = Joke.new(1, "Why did the strawberry cross the road?", "Because his moether was in a jam.")
    sal = User.new("Sal")
    assert_equal "Sal", sal.name
    assert_equal [], sal.jokes
  end

  def test_multiple_jokes
    joke = Joke.new(1, "Why did the strawberry cross the road?", "Because his moether was in a jam.")
    sal = User.new("Sal")
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    assert_equal 1, "Why did the strawberry cross the road?", "Because it's mother was in a jam."
    assert_equal 2, "How do you keep a lion from charging?", "Take away its credit cards."
  end
end
