require 'minitest/autorun'
require 'minitest/pride'
require './lib/open_mic'
require './lib/user'
require './lib/joke'

class OpenMicTest < Minitest::Test

  def setup
    @sal = User.new("Sal")
    @ali = User.new("Ali")
    @open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})
  end

  def test_open_mic_exists
    assert_instance_of OpenMic, @open_mic
    assert_equal "Comedy Works", @open_mic.location
    assert_equal "11-20-18", @open_mic.date
    assert_equal [], @open_mic.performers
  end

  def test_open_mic_welcome_method_stores_performers
    @open_mic.welcome(@sal)
    @open_mic.welcome(@ali)

    assert_equal [@sal, @ali], @open_mic.performers
  end

  def test_open_mic_repeated_jokes_method
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    @open_mic.welcome(@sal)
    @open_mic.welcome(@ali)

    @ali.learn(joke_1)
    @ali.learn(joke_2)
    refute @open_mic.repeated_jokes?

    @sal.learn(joke_1)
    assert @open_mic.repeated_jokes?
  end
end
