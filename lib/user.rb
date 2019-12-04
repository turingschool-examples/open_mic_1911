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
    # @jokes << joke
  end

  def add_jokes_to_array
    jokes = []
    jokes << self.learn(joke)
  end
end
