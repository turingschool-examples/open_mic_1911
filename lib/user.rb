require './lib/joke'

class User
attr_reader :name
attr_accessor :jokes

  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(joke)
    # joke = Joke.new(id, setup, punchline)
    joke = joke
    # @jokes << joke
  end



end
