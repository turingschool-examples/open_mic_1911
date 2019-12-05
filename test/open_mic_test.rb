
# ```
require 'minitest/autorun'
require 'minitest/pride'
require './lib/open_mic'
require './lib/user'
require './lib/joke'

class OpenMicTest < Minitest::Test

  def setup
    @open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})
    @sal = User.new("Sal")
    @ali = User.new("Ali")
    @joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    @joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
  end

  def test_attributes_can_be_queried
    assert_equal "Comedy Works", @open_mic.location
    assert_equal "11-20-18", @open_mic.date
    assert_equal [], @open_mic.performers
  end

  def test_i_can_welcome_performers
    @open_mic.welcome(@sal)
    @open_mic.welcome(@ali)
    assert_equal [@sal, @ali], @open_mic.performers
  end

  #
  # pry(main)> ali.learn(joke_1)
  #
  # pry(main)> ali.learn(joke_2)
  #
  # pry(main)> open_mic.repeated_jokes?
  # # => false
  #
  # pry(main)> sal.learn(joke_1)
  #
  # pry(main)> open_mic.repeated_jokes?
  # # => true
  def test_when_users_learn_jokes_we_can_find_out_if_they_are_repeated
    @open_mic.welcome(@sal)
    @open_mic.welcome(@ali)
    @open_mic.welcome(nil)

    @ali.learn(nil)

    assert_equal false, @open_mic.repeated_jokes?

    @ali.learn(@joke_1)
    @ali.learn(@joke_2)
    assert_equal false, @open_mic.repeated_jokes?

    @sal.learn(@joke_1)

    assert_equal true, @open_mic.repeated_jokes?
  end
end
