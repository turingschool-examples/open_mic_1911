require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'
require './lib/open_mic'

class OpenMicTest < Minitest::Test

  def test_it_exists
    open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})
    assert_instance_of OpenMic, open_mic
  end
  
  def test_it_has_attributes
    open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})
    assert_equal 'Comedy Works', open_mic.location
    assert_equal '11-20-18', open_mic.date
    assert_equal [], open_mic.performers
  end
  
  def test_it_can_welcome_performers
    open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})
    ali = User.new("Ali")
    sal = User.new("Sal")
    assert_equal [], open_mic.performers
    open_mic.welcome(ali)
    assert_equal [ali], open_mic.performers
    open_mic.welcome(sal)
    assert_equal [ali, sal], open_mic.performers
  end

  def test_it_can_check_joke_redundancy
    open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})
    ali = User.new("Ali")
    sal = User.new("Sal")
    open_mic.welcome(ali)
    open_mic.welcome(sal)
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")   
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.") 
    joke_3 = Joke.new(3, "How do you keep a lion from charging?", "Take away its credit cards.") 
    ali.learn(joke_1)  
    ali.learn(joke_2)  
    assert_equal false, open_mic.repeated_jokes?
    sal.learn(joke_3)
    assert_equal false, open_mic.repeated_jokes?
    sal.learn(joke_1)
    assert_equal true, open_mic.repeated_jokes?
  end

end
