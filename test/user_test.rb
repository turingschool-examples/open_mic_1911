require 'minitest/autorun'
require 'minitest/pride'
require './lib/user'

class UserTest < Minitest::Test
  def test_it_exists
    joke = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    assert_instance_of Joke, joke
  end