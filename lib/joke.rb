class Joke
attr_reader :joke, :setup, :punchline

  def initialize(joke, setup, punchline)
    @joke = joke
    @setup = setup
    @punchline = punchline
  end

  def id
    @joke = 1
  end
end
