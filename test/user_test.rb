require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/joke'
require_relative '../lib/user'

class JokeTest < Minitest::Test

  def test_it_exists
    sal = User.new("Sal")
    assert_instance_of User, sal 
  end 
  
  def test_it_has_attributes
    sal = User.new("Sal")
    assert_equal "Sal", sal.name
    assert_equal [], sal.jokes
     assert_equal [], sal.jokes_id
  end


  def test_it_can_learn_new_joke
    sal = User.new("Sal")
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")    
    assert_equal [], sal.jokes
    sal.learn(joke_1)
    assert_equal [joke_1], sal.jokes
    sal.learn(joke_2)
    assert_equal [joke_1, joke_2], sal.jokes
  end

  def test_it_can_tell_jokes_to_his_friends
    sal = User.new("Sal")
    ali = User.new("Ali")
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    sal.learn(joke_1)
    sal.learn(joke_2)
    assert_equal [], ali.jokes
    sal.tell(ali, joke_1)
    assert_equal [joke_1], ali.jokes
    sal.tell(ali, joke_2)
    assert_equal [joke_1, joke_2], ali.jokes
  end

end
