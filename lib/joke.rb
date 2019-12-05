class Joke
  attr_reader :id, :setup, :punchline

  def initialize(id, setup, punchline)
    @id = id
    @setup = setup
    @punchline = punchline
  end
  #
  # def id <-- attr_reader recreates this method
      # @id
  # end
end
