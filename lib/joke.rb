class Joke
attr_reader :id
attr_accessor :setup, :punchline 

def initialize(id, setup, punchline)
  @id = id
  @setup = setup
  @punchline = punchline
end


end
