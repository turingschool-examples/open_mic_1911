require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/open_mic'
require_relative '../lib/joke'
require_relative '../lib/user'

class OpenMicTest < Minitest::Test
  def setup
    @open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})

    @sal = User.new("Sal")
    @ali = User.new("Ali")

    @joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    @joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
  end

  def test_it_exists
    assert_instance_of OpenMic, @open_mic
  end

  def test_it_has_a_location
    assert_equal "Comedy Works", @open_mic.location
  end

  def test_it_has_a_date
    assert_equal "11-20-18", @open_mic.date
  end

  def test_it_can_have_performers
    assert_equal [], @open_mic.performers
  end

  def test_it_can_welcome_performers
    @open_mic.welcome(@sal)
    @open_mic.welcome(@ali)

    assert_equal 2, @open_mic.performers.count
    assert_instance_of User, @open_mic.performers[0]
    assert_instance_of User, @open_mic.performers[1]
  end

  def test_if_multiple_comedians_know_the_same_joke
    @open_mic.welcome(@sal)
    @open_mic.welcome(@ali)

    @ali.learn(@joke_1)
    @ali.learn(@joke_2)
    assert_equal false, @open_mic.repeated_jokes?

    @sal.learn(@joke_1)
    assert_equal true, @open_mic.repeated_jokes?
  end
end
