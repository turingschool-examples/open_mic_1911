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
    # @ali.jokes << @sal.jokes
  end
end
