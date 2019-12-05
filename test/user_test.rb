require 'minitest/autorun'
require 'minitest/pride'
require './lib/user'
require './lib/joke'

class UserTest < Minitest::Test
  def setup
    @sal = User.new("Sal")
    @joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    @joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
  end

  def test_it_exists
    assert_instance_of User, @sal
  end

   def test_it_has_attributes
     assert_equal "Sal", @sal.name
     assert_equal [], @sal.jokes
   end

   def test_it_can_learn_joke
     @sal.learn(@joke_1)
     @sal.learn(@joke_2)

     assert_equal [@joke_1, @joke_2], @sal.jokes
     # assert @sal.jokes.include?(joke1)
     # assert @sal.jokes.include?(joke2)
     # assert_equal 2, @sal.jokes.length
   end

   def test_it_can_tell_joke
     ali = User.new("Ali")
     @sal.learn(@joke_1)
     @sal.learn(@joke_2)
     @sal.tell(ali, @joke_1)
     @sal.tell(ali, @joke_2)

     assert_equal [@joke_1, @joke_2], ali.jokes
   end

   def test_it_can_find_joke_by_id
     ali = User.new("Ali")
     @sal.learn(@joke_1)
     @sal.learn(@joke_2)
     @sal.tell(ali, @joke_1)
     @sal.tell(ali, @joke_2)

     assert_equal @joke_1, ali.joke_by_id(1)
     assert_equal @joke_2, ali.joke_by_id(2)
   end
end
