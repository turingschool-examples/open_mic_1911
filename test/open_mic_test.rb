require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'
require './lib/open_mic'
require 'pry'

class OpenMicTest < Minitest::Test

  def test_it_has_location_and_date_and_starts_with_no_performers
    open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})

    assert_equal "Comedy Works", open_mic.location
    assert_equal  "11-20-18", open_mic.date
    assert_equal [], open_mic.performers
  end

  def test_it_has_performers
    open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})
    sal = User.new("Sal")
    ali = User.new("Ali")
    open_mic.welcome(sal)
    open_mic.welcome(ali)
    assert_equal [sal, ali], open_mic.performers
  end

  def test_it_knows_if_jokes_known_are_repeated
    open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})
    sal = User.new("Sal")
    ali = User.new("Ali")
    open_mic.welcome(sal)
    open_mic.welcome(ali)

    assert_equal [sal, ali], open_mic.performers

    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because
                      his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its
                      credit cards.")

    ali.learn(joke_1)
    ali.learn(joke_2)

    assert_equal [sal, ali], open_mic.performers
    assert_equal false, open_mic.repeated_jokes?

    sal.learn(joke_1)

    assert_equal true, open_mic.repeated_jokes?
  end
















end
