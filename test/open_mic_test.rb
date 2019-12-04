require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'
require './lib/open_mic'

class OpenMicTest < Minitest::Test
  def test_an_open_mic_exists
    open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"}) 

    assert_instance_of OpenMic, open_mic
  end

  def test_open_mic_has_attributes
    open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"}) 

    assert_equal "Comedy Works", open_mic.location
    assert_equal "11-20-18", open_mic.date
    assert_equal [], open_mic.performers
  end
end