require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'
require './lib/open_mic'

class UserTest < Minitest::Test
  def setup
    @open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})
    @sal = User.new("Sal")
    @ali = User.new("Ali")
  end

  def test_it_exists
    assert_instance_of OpenMic, @open_mic
  end

  def test_it_has_attributes
    assert_equal "Comedy Works", @open_mic.location
    assert_equal "11-20-18", @open_mic.date
    assert_equal [], @open_mic.performers
  end

  def test_performers_are_welcomed
    @open_mic.welcome(@sal)
    assert_equal [@sal], @open_mic.performers

    @open_mic.welcome(@ali)
    assert_equal [@sal, @ali], @open_mic.performers
  end
end
