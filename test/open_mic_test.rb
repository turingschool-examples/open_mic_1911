require 'minitest/autorun'
require 'minitest/pride'
require './lib/user'
require './lib/joke'
require './lib/open_mic'

class JokeTest < Minitest::Test

  def setup
    @openmic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})
    @joke = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    @joke= Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
  end

  def test_it_exist
    @openmic
    asssert_instance_of @openmice, OpenMic
  end
end

  def test_if_there_are_attributes
#location
#date
#performers
  end
