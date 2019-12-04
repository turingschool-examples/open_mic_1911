require 'minitest/autorun'
require 'minitest/pride'
require './lib/open_mic'
require './lib/user'
require './lib/joke'

class OpenMicTest < Minitest::Test
  def setup
    @open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})
  end

  def test_it_exists
    assert OpenMic, @open_mic
  end
end
