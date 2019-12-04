require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'
require './lib/open_mic'
require 'pry'

class OpenMicTest < Minitest::Test

	def setup
		@open_mic = OpenMic.new({location: "Comedy Works",\
 date: "11-20-18"})
		@sal = User.new("Sal")
		@ali = User.new("Ali")
		@joke_1 = Joke.new(1, "Why did the strawberry cross the road?",\
"Because his mother was in a jam.")
		@joke_2 = Joke.new(2, "How do you keep a lion from charging?",\
"Take away its credit cards.")
	end

	def test_openmic_exists
		assert_instance_of OpenMic, @open_mic
	end

	def test_openmic_attributes
		assert_equal @open_mic.location, "Comedy Works"
		assert_equal @open_mic.date, "11-20-18"
		assert_equal @open_mic.performers, []
	end

	def test_welcome
		@open_mic.welcome(@sal)
		@open_mic.welcome(@ali)
		assert_equal @open_mic.performers.count, 2
		#binding.pry
	end

	def test_repeated_jokes?
		@open_mic.welcome(@sal)
		@open_mic.welcome(@ali)
		@ali.learn(@joke_1)
		@ali.learn(@joke_2)
		assert_equal @open_mic.repeated_jokes?, false
		binding.pry
		@sal.learn(@joke_1)
		binding.pry
		assert_equal @open_mic.repeated_jokes?, true
	end
end
	

	
