# pry(main)> require './lib/joke'
# # => true
#
# pry(main)> require './lib/user'
# # => true
#
# pry(main)> sal = User.new("Sal")
# # => #<User:0x00007fb71e1eb8d8...>
#
# pry(main)> ali = User.new("Ali")
# # => #<User:0x00007fb71e1a4348...>
#
# pry(main)> joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
# # => #<Joke:0x00007fb71da169f0...>
#
# pry(main)> joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
# # => #<Joke:0x00007fb71d8e0bd0...>
#
# pry(main)> sal.learn(joke_1)
#
# pry(main)> sal.learn(joke_2)
#
# pry(main)> sal.tell(ali, joke_1)
#
# pry(main)> sal.tell(ali, joke_2)
#
# pry(main)> ali.jokes
# # => [#<Joke:0x00007fb71da169f0...>, #<Joke:0x00007fb71d8e0bd0...>]
#
# pry(main)> ali.joke_by_id(1)
# # => #<Joke:0x00007fb71da169f0...>
#
# pry(main)> ali.joke_by_id(2)
# # => #<Joke:0x00007fb71d8e0bd0...>
require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'

class UserTest < Minitest::Test
  def test_user_exists
    sal = User.new("Sal")

    assert_instance_of User, sal
  end

  def test_user_name
    sal = User.new("Sal")

    assert_equal "Sal", sal.name
  end

  def test_user_jokes
    sal = User.new("Sal")

    assert_equal [], sal.jokes
  end

  def test_user_learn_jokes
    sal = User.new("Sal")
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")

    sal.learn(joke_1)
    sal.learn(joke_2)

    assert_equal [joke_1, joke_2], sal.jokes
  end

  def test_user_tells_jokes
    sal = User.new("Sal")
    ali = User.new("Ali")
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")

    sal.learn(joke_1)
    sal.learn(joke_2)

    sal.tell(ali, joke_1)
    sal.tell(ali, joke_2)

    assert_equal [joke_1, joke_2], ali.jokes
  end

  def test_joke_by_id
    sal = User.new("Sal")
    ali = User.new("Ali")
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")

    sal.learn(joke_1)
    sal.learn(joke_2)
    sal.tell(ali, joke_1)
    sal.tell(ali, joke_2)

    assert_equal [joke_1], ali.joke_by_id(1)
    assert_equal [joke_2], ali.joke_by_id(2)
  end


end
