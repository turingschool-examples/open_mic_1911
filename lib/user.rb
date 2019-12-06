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
     # @jokes.each do |joke|

    # @jokes << joke
  end

  def tell(subject, joke)


  end

  def joke_by_id(id)

  end

  # def add_jokes_to_array
  #   jokes = []
  #   jokes << self.learn(joke)
  # end
end
