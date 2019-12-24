class User
  attr_reader :name, :jokes

  def initialize(name)
    @name = name
    @jokes = []
    # @told_jokes = []
  end

  def learn(joke)
    @jokes << joke
  end

  def tell(user, joke)
    user.learn(joke)
    # @ali.jokes << @sal.jokes #not what iteration is asking for
  end

  def joke_by_id(id)
    @jokes.find do |joke|
      joke.id == id
    end
  end
end
