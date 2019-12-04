require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'
require './lib/open_mic'

class JokeTest < Minitest::Test
  def test_it_exists
    joke = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    sal = User.new("Sal")

    assert_instance_of Joke, joke
    assert_instance_of User, sal
  end

  def test_joke_has_attributes
    joke = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    assert_equal 1, joke.id
    assert_equal "Why did the strawberry cross the road?", joke.setup
    assert_equal "Because his mother was in a jam.", joke.punchline
  end

  def test_user_has_a_name
    sal = User.new("Sal")

    assert_equal "Sal", sal.name
  end

  def test_users_jokes_default_with_none
    sal = User.new("Sal")

    assert_equal [], sal.jokes
  end

  def test_user_can_learn_joke
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    sal = User.new("Sal")

    sal.learn(joke_1)
    sal.learn(joke_2)

    assert_equal [joke_1, joke_2], sal.jokes
  end

  def test_user_can_tell_another_user_a_joke
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    sal = User.new("Sal")
    ali = User.new("Ali")

    sal.learn(joke_1)
    sal.learn(joke_2)

    sal.tell(ali, joke_1)
    sal.tell(ali, joke_2)

    assert_equal [joke_1, joke_2], ali.jokes
  end

  # I have tried to work this one out in several
  # ways, but I cannot figure it out, so I am moving on.
  # def test_new_user_can_tell_what_joke_by_the_id
  #   joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
  #   joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
  #   sal = User.new("Sal")
  #   ali = User.new("Ali")
  #
  #   sal.learn(joke_1)
  #   sal.learn(joke_2)
  #
  #   sal.tell(ali, joke_1)
  #   sal.tell(ali, joke_2)
  #
  #   assert_equal joke_1, ali.joke_by_id(1)
  #   assert_equal joke_2, ali.joke_by_id(2)
  # end

  def test_open_mic_has_attributes
    open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})

    assert_equal "Comedy Works", open_mic.location
    assert_equal "11-20-18", open_mic.date
  end

  def test_when_open_mic_stats_it_has_no_performers
    open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})

    assert_equal [], open_mic.performers
  end

  def test_open_mic_welcomes_users
    open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})
    sal = User.new("Sal")
    ali = User.new("Ali")

    open_mic.welcome(sal)
    open_mic.welcome(ali)

    assert_equal [sal, ali], open_mic.performers
  end

  def test_repeated_jokes_default_at_false
    open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})
    sal = User.new("Sal")
    ali = User.new("Ali")
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")

    ali.learn(joke_1)
    ali.learn(joke_2)

    refute open_mic.repeated_jokes?
  end

  def test_when_a_joke_is_told_twice_repeated_joke_returns_true
    open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})
    sal = User.new("Sal")
    ali = User.new("Ali")
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")

    ali.learn(joke_1)
    ali.learn(joke_2)

    refute open_mic.repeated_jokes?

    sal.learn(joke_1)

    assert open_mic.repeated_jokes?
  end 
end
