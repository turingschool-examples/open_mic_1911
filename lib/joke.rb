class Joke 

  attr_reader :setup, :punchline, :id

  def initialize(id, setup, punchline)
    @id = id 
    @setup = setup
    @punchline = punchline 
  end

end