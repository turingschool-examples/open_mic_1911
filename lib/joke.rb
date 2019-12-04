require 'pry'
class Joke

  attr_reader :id, :setup, :punchline

  def initialize (id, setup, punchline)
    @id = 1
    @setup = setup
    @punchline = punchline
  end
end
