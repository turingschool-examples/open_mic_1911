require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'
require './lib/open_mic'
require 'pry'

class OpenMicTest < Minitest::Test
  def test_open_mic_exists
    open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})

    assert_instance_of OpenMic, open_mic
  end

  def test_open_mic_attributes_location_date_performers
    open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})

    assert_equal 'Comedy Works', open_mic.location
    assert_equal '11-20-18', open_mic.date
    assert_equal [], open_mic.performers
  end

  def test_performers_can_be_added_to_open_mic_with_welcome_method
    open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})
    sal = User.new('Sal')
    ali = User.new("Ali")
    open_mic.welcome(sal)
    open_mic.welcome(ali)

    assert_equal 'Sal', open_mic.performers[0].name
    assert_equal 'Ali', open_mic.performers[1].name
  end

  def test_repeated_jokes_method
    open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})
    sal = User.new('Sal')
    ali = User.new("Ali")
    open_mic.welcome(sal)
    open_mic.welcome(ali)
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    ali.learn(joke_1)
    ali.learn(joke_2)

    assert_equal false, open_mic.repeated_jokes?

    sal.learn(joke_1)

    assert_equal true, open_mic.repeated_jokes?
  end
end
