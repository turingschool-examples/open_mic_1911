class Joke
attr_reader :setup, :punchline

  def initialize(joke, setup, punchline)
    @setup = setup
    @punchline = punchline
  end

  def id
    @joke = 1
  end
end
