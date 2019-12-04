require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'
require './lib/open_mic'

class OpenMicTest < Minitest::Test
  def setup
    @open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})
  end

  def test_it_exists
    assert_instance_of OpenMic, @open_mic
  end

  def test_attributes
    assert_equal  "Comedy Works", @open_mic.location
    assert_equal  "11-20-18", @open_mic.date
    assert_equal [], @open_mic.performers
  end

  def test_welcome
    @open_mic.welcome(@sal)
    assert_equal [@sal], @open_mic.performers
    @open_mic.welcome(@ali)
    assert_equal [@sal, @ali], @open_mic.performers
  end
end
