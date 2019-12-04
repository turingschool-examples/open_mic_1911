require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'
require './lib/open_mic'

class OpenMicTest < Minitest::Test
  def test_an_open_mic_exists
    open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"}) 

    assert_instance_of OpenMic, open_mic
  end

  def test_open_mic_has_attributes
    open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"}) 

    assert_equal "Comedy Works", open_mic.location
    assert_equal "11-20-18", open_mic.date
    assert_equal [], open_mic.performers
  end

  def test_can_add_performers
    open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})

    sal = User.new("Sal")
    ali = User.new("Ali")

    open_mic.welcome(sal)
    open_mic.welcome(ali)

    assert_equal [sal, ali], open_mic.performers
  end

  def test_if_jokes_are_repeated
    open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})

    sal = User.new("Sal")
    ali = User.new("Ali")

    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")

    ali.learn(joke_1)
    ali.learn(joke_2)
    sal.learn(joke_1)

    open_mic.welcome(ali)

    assert_equal false, open_mic.repeated_jokes?

    open_mic.welcome(sal)
    
    assert_equal true, open_mic.repeated_jokes?
  end
end