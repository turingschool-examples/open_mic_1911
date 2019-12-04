require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'
require 'pry'

class UserTest < Minitest::Test

	def setup
		@sal = User.new("Sal")
		@ali = User.new("Ali")
	end

	def test_user_exists
		assert_instance_of User, @sal
	end

	def test_user_attributes
		assert_equal @sal.name, "Sal"
		assert_equal @sal.jokes, []
	end

	def test_learn
		joke_1 = Joke.new(1, "Why did the strawberry cross the road?",\
 "Because his mother was in a jam.")
		joke_2 = Joke.new(2, "How do you keep a lion from charging?",\
 "Take away its credit cards.")
		@sal.learn(joke_1)
		@sal.learn(joke_2)
		assert_equal @sal.jokes.count, 2
		#binding.pry		
	end

	def test_tell
		joke_1 = Joke.new(1, "Why did the strawberry cross the road?",\
"Because his mother was in a jam.")
		joke_2 = Joke.new(2, "How do you keep a lion from charging?",\
"Take away its credit cards.")
		@sal.learn(joke_1)
		@sal.learn(joke_2)
		@sal.tell(@ali, joke_1)
		@sal.tell(@ali, joke_2)
		assert_equal @ali.jokes.count, 2
		#binding.pry
	end

	def test_joke_by_id
		joke_1 = Joke.new(1, "Why did the strawberry cross the road?",\
 "Because his mother was in a jam.")
		joke_2 = Joke.new(2, "How do you keep a lion from charging?",\
 "Take away its credit cards.")
		@sal.learn(joke_1)
		@sal.learn(joke_2)
		@sal.tell(@ali, joke_1)
		@sal.tell(@ali, joke_2)
		assert_equal @ali.joke_by_id(1).count, 1
		assert_equal @ali.joke_by_id(2).count, 1
		#binding.pry
	end	
end
